local ANL = require(script:GetCustomProperty("APINamedLocation"))

local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))
local METAL_DET_UPGRADES = require(script:GetCustomProperty("MetalDetectorUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

-- scene object references
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject(.05)
local UI_DIG_PROMPT = script:GetCustomProperty("UIDigPrompt"):WaitForObject(.05)

local DIG_ALLOWABLE_DISTANCE = script:GetCustomProperty("DigAllowableDistance")

local interaction = {}

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
		UI.PrintToScreen(msg)
	end
end

function GetAreaForPlayer(player)
	local locationProps = ANL.GetPlayerLocation(player)
	if locationProps ~= nil then
		return locationProps.id
	end

	return "TEST"
end

local function CheckExitStateServer(player, context)
	local needsRevertToDefault = false

	if Object.IsValid(player) then
		if player.isMounted
		or player.isSwimming then
			needsRevertToDefault = true
		end
	end

	if needsRevertToDefault then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DEFAULT)
	end
end

local function initializeDetector(player, context)
	-- setup detector references		
	if not Object.IsValid(context.detectorEquipment) then
		-- try to find our metal detector
		for _, equipment in ipairs(player:GetEquipment()) do
			if equipment:GetCustomProperty("DetectorHeadCenter") ~= nil then
				context.detectorEquipment = equipment
				break
			end
		end
	end

	if Object.IsValid(context.detectorEquipment) then
		context.detectorRoot = context.detectorEquipment:GetCustomProperty("DetectorHeadCenter"):WaitForObject(.1)
	end
end

local function GetNearbyActiveDigSite(player, context)
	initializeDetector(player, context)

	if Object.IsValid(player) and Object.IsValid(context.detectorRoot) then
		local filters = {
			radius = STATS_LIBRARY.GetStat(player, "DetectionRadius"),
			maxDepth = STATS_LIBRARY.GetStat(player, "DetectionMaxDepth"),
		}

		local detectorPosition = context.detectorRoot:GetWorldPosition()

		local closestSite, closestDistance = DIG_SITE_LIBRARY.GetNearestDigSite(GetAreaForPlayer(player), detectorPosition, filters)		

		return closestSite, closestDistance
	end

	return nil
end

local function UpdateSignal(player, context)
	initializeDetector(player, context)

	if Object.IsValid(player) and Object.IsValid(context.detectorRoot) then
		local canDig = false

		-- if we've moved reasonably far since the last query, run a new query
		if context.lastSignalQueryPosition == nil or (context.lastSignalQueryPosition - context.detectorRoot:GetWorldPosition()).size > 150 then
			context.targetSite, context.distanceToTargetSite = GetNearbyActiveDigSite(player, context)

			context.lastSignalQueryPosition = context.detectorRoot:GetWorldPosition()

			if DEBUG and context.targetSite ~= nil then
				log("Target site: " .. context.targetSite.depth .. ":" .. context.targetSite.depthRelativeIndex .. " (" .. context.targetSite.size .. ")")
			end
		else
			if context.targetSite ~= nil then
				-- update distance and canDig status against previous dig site
				context.distanceToTargetSite = (context.targetSite.position - context.detectorRoot:GetWorldPosition()).size
			end
		end

		canDig = (context.distanceToTargetSite < DIG_ALLOWABLE_DISTANCE)

		Events.Broadcast("DetectorSignalUpdated", player, context.targetSite, context.distanceToTargetSite, canDig)
	end
end

local function UpdateDigPrompt(player, context)
	if Object.IsValid(player) then
		local promptVisibility = Visibility.FORCE_OFF

		-- pop the dig prompt when we're near the target
		if context.targetSite ~= nil and context.distanceToTargetSite < DIG_ALLOWABLE_DISTANCE then
			promptVisibility = Visibility.INHERIT
		end
		UI_DIG_PROMPT.visibility = promptVisibility
	end	
end

interaction.ServerCanStartInteraction = function (player, args)
	if Object.IsValid(player) then
		if player.isSwimming then return false end
	end

	return true
end

interaction.ServerStartInteraction = function (player)
	log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)

	local currentLevel = STATS_LIBRARY.GetStat(player, "MetalDetectorLevel")

	player.serverUserData.PI_DETECT_CONTEXT = {}

	player.animationStance = "unarmed_carry_object_low"

	METAL_DET_UPGRADES[currentLevel].metaData.playerSettings:ApplyToPlayer(player)

	player:SetMounted(false)
	player.canMount = true

	player.serverUserData.PI_DETECT_CONTEXT.checkExitStateTaskHandle = Task.Spawn(function() CheckExitStateServer(player, player.serverUserData.PI_DETECT_CONTEXT) end)
	player.serverUserData.PI_DETECT_CONTEXT.checkExitStateTaskHandle.repeatCount = -1


	if Object.IsValid(player.serverUserData.metalDetector) then
		player.serverUserData.metalDetector:Destroy()
	end
    player.serverUserData.PI_DETECT_CONTEXT.detectorEquipment = World.SpawnAsset(METAL_DET_UPGRADES[currentLevel].metaData.equipmentAsset)
    player.serverUserData.PI_DETECT_CONTEXT.detectorEquipment:Equip(player)    
end

interaction.ServerStopInteraction = function (player)
	log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)

	if player.serverUserData.PI_DETECT_CONTEXT.checkExitStateTaskHandle ~= nil then
		player.serverUserData.PI_DETECT_CONTEXT.checkExitStateTaskHandle:Cancel()
	end
	if Object.IsValid(player.serverUserData.PI_DETECT_CONTEXT.detectorEquipment) then
		player.serverUserData.PI_DETECT_CONTEXT.detectorEquipment:Destroy()
	end
end

interaction.ClientStartInteraction = function (player)
	log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)

	-- rotate the free cam to face the player's current direction
	-- so free cam lines up with player movement
--	CAMERA.currentYaw = player:GetLookWorldRotation().z

	player:SetOverrideCamera(CAMERA, .3)

	local context = {
		updateDigPromptTaskHandle = nil,
		updateSignalTaskHandle = nil,
		targetSite = nil,
		distanceToTargetSite = 0,
		lastSignalQueryPosition = nil
	}
	player.clientUserData.PI_DETECT_CONTEXT = context

	Events.Broadcast("StartMetalDetection")

	-- Close all other ui when metal detecting is started
	Events.Broadcast("ToggleUI","")
	UI.SetCanCursorInteractWithUI(false)
    UI.SetCursorVisible(false)

	context.updateSignalTaskHandle = Task.Spawn(function() UpdateSignal(player, context) end)
	context.updateSignalTaskHandle.repeatCount = -1
	context.updateSignalTaskHandle.repeatInterval = 0.1

	context.updateDigPromptTaskHandle = Task.Spawn(function() UpdateDigPrompt(player, context) end)
	context.updateDigPromptTaskHandle.repeatCount = -1
	context.updateDigPromptTaskHandle.repeatInterval = 0.25
end

interaction.ClientStopInteraction = function (player)
	log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)

	Events.Broadcast("StopMetalDetection")

	player.clientUserData.PI_DETECT_CONTEXT.detectorEquipment = nil

	if player.clientUserData.PI_DETECT_CONTEXT.updateSignalTaskHandle ~= nil then
		player.clientUserData.PI_DETECT_CONTEXT.updateSignalTaskHandle:Cancel()
	end
	if player.clientUserData.PI_DETECT_CONTEXT.updateDigPromptTaskHandle ~= nil then
		player.clientUserData.PI_DETECT_CONTEXT.updateDigPromptTaskHandle:Cancel()
	end
	UI_DIG_PROMPT.visibility = Visibility.FORCE_OFF

	player.clientUserData.PI_DETECT_CONTEXT = nil
end

interaction.ServerHandleBindingPressed = function (player, binding)
	if binding == "ability_extra_40" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DEFAULT)
	end
	if binding == "ability_extra_39" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
	end
	if binding == "ability_primary" then
		local nearbyDigSite, distance = GetNearbyActiveDigSite(player, player.serverUserData.PI_DETECT_CONTEXT)
		-- some added slop to account for client/server disagreement on position
		if nearbyDigSite ~= nil and distance < DIG_ALLOWABLE_DISTANCE + 200 then
			Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DIG, nearbyDigSite)
		end
	end
	-- I for inventory
	if binding == "ability_extra_27" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.INVENTORY)
	end
end

return interaction