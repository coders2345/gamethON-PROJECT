local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local FISH_ROD_UPGRADES = require(script:GetCustomProperty("FishingRodUpgradesList"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local CAST_PREVIEW = script:GetCustomProperty("CastPreview")

local interaction = {}

-- scene object references
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject(.05)

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
		UI.PrintToScreen(tostring(msg))
	end
end

serverPlayerTable = {}
clientPlayerTable = {}

local function RequestInteraction(player, interactionId, removeRod)
	if removeRod and Object.IsValid(player.serverUserData.PI_FISHING_CONTEXT.rodEquipment) then
		player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Unequip()
		Task.Wait()
		if Object.IsValid(player.serverUserData.PI_FISHING_CONTEXT.rodEquipment) then
			player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Destroy()
		end
	end
	Events.Broadcast("RequestInteraction", player, interactionId)
end

local function CheckExitStateServer(player)
	local needsRevertToDefault = false

	if Object.IsValid(player) then
		if player.isMounted
		or player.isSwimming then
			needsRevertToDefault = true
		end
	end

	if needsRevertToDefault then
		RequestInteraction(player, INTERACTION_LIBRARY.DEFAULT, true)
	end
end

local function RemoveCurrentFishClient(player)
    if player.clientUserData.PI_FISHING_CONTEXT and Object.IsValid(player.clientUserData.PI_FISHING_CONTEXT.currentFish) then
        player.clientUserData.PI_FISHING_CONTEXT.currentFish.clientUserData.bitePosition = nil
        player.clientUserData.PI_FISHING_CONTEXT.currentFish = nil
    end
end

local function RodCastPreview(player, context)
	if not Object.IsValid(context.castPreview) then return end

	local aimRotation = Game.GetLocalPlayer():GetViewWorldRotation()
	local castRotation = Rotation.New(0.0, math.min(aimRotation.y + 35.0, 60.0), aimRotation.z)
	local currentLevel = STATS_LIBRARY.GetStat(player, "FishingRodLevel")
	local castSpeed = FISH_ROD_UPGRADES[currentLevel].rodData.castSpeed
	local castPosition = player:GetWorldPosition() + (Vector3.UP + player:GetWorldRotation() * Vector3.FORWARD) * 260.0
	local castVelocity = castRotation * Vector3.FORWARD * castSpeed
	local timeStep = 1.0 / 60.0

	while true do
		local nextPosition = castPosition + castVelocity * timeStep
		local hitResult = World.Raycast(castPosition, nextPosition, {ignorePlayers = true})
		castPosition = nextPosition
		castVelocity = castVelocity - Vector3.UP * 1000.0 * timeStep		-- Gravity
		local collisionPoint = FISH_SITE_LIBRARY.GetCollisionPointWithWater(castPosition)

		if collisionPoint then
			context.castPreview.visibility = Visibility.INHERIT
			context.castPreview:SetWorldPosition(collisionPoint)
			context.castPreview:SetWorldScale(Vector3.ONE * (context.baitRange / 100))
			break
		end

		if hitResult or castPosition.z < -2000.0 then		-- Our water is near z = 0.0
			context.castPreview.visibility = Visibility.FORCE_OFF
			break
		end
	end
end

local function CloseOtherUI()
    Events.Broadcast("ToggleUI","")
	UI.SetCanCursorInteractWithUI(false)
    UI.SetCursorVisible(false)
end

interaction.ServerCanStartInteraction = function (player, args)
	if player.isSwimming then
		return false
	end
	return true
end

interaction.ServerStartInteraction = function (player)
    log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)

	if player.serverUserData.PI_FISHING_CONTEXT and Object.IsValid(player.serverUserData.PI_FISHING_CONTEXT.rodEquipment) then
		player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Unequip()
		Task.Wait(.05)
		player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Destroy()
	end

	local currentLevel = STATS_LIBRARY.GetStat(player, "FishingRodLevel")

	local fishingEquipment = ITEM_LIBRARY.GetFishingEquipment(player)
	local pullAbility = fishingEquipment:GetCustomProperty("PullAbility"):WaitForObject()
    pullAbility:Interrupt()

    player.serverUserData.PI_FISHING_CONTEXT = {}
	serverPlayerTable[player] = {}

	PLAYER_SETTINGS:ApplyToPlayer(player)

    player.animationStance = "2hand_sword_ready"
    player:SetMounted(false)
    player.canMount = true

    serverPlayerTable[player].checkExitStateTaskHandle = Task.Spawn(function() CheckExitStateServer(player) end)
	serverPlayerTable[player].checkExitStateTaskHandle.repeatCount = -1

	player.serverUserData.PI_FISHING_CONTEXT.rodEquipment = World.SpawnAsset(FISH_ROD_UPGRADES[currentLevel].rodData.equipmentAsset)
    player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Equip(player)
end

interaction.ServerStopInteraction = function (player)
    log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)

    if serverPlayerTable[player] and serverPlayerTable[player].checkExitStateTaskHandle ~= nil then
		serverPlayerTable[player].checkExitStateTaskHandle:Cancel()
	end
end

interaction.ClientStartInteraction = function (player)
    log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)

	player:SetOverrideCamera(CAMERA, .3)

	-- Remove any previous fish
	RemoveCurrentFishClient(player)

    -- Close all other ui when fishing is started
	CloseOtherUI()

	-- Spawn cast preview
	clientPlayerTable[player] = {}
	clientPlayerTable[player].castPreview = World.SpawnAsset(CAST_PREVIEW)

	local currentLevel = STATS_LIBRARY.GetStat(player, "FishingRodLevel")
	clientPlayerTable[player].castSpeed = FISH_ROD_UPGRADES[currentLevel].rodData.castSpeed
	clientPlayerTable[player].baitRange = FISH_ROD_UPGRADES[currentLevel].rodData.baitRange

	clientPlayerTable[player].castPreviewHandle = Task.Spawn(function() RodCastPreview(player, clientPlayerTable[player]) end)
	clientPlayerTable[player].castPreviewHandle.repeatCount = -1
end

interaction.ClientStopInteraction = function (player)
    log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)

	if clientPlayerTable[player].castPreview then
		clientPlayerTable[player].castPreview:Destroy()
		clientPlayerTable[player].castPreview = nil
	end

	if clientPlayerTable[player].castPreviewHandle then
        clientPlayerTable[player].castPreviewHandle:Cancel()
	end

	clientPlayerTable[player] = {}
end

interaction.ServerHandleBindingPressed = function (player, binding)
	if binding == "ability_primary" then
		if Object.IsValid(player.serverUserData.PI_FISHING_CONTEXT.rodEquipment) then
			RequestInteraction(player, INTERACTION_LIBRARY.FISHING_CAST, false)
		end
	end

	-- Other bindings
    if binding == "ability_extra_39" then
		RequestInteraction(player, INTERACTION_LIBRARY.DEFAULT, true)
	end
	if binding == "ability_extra_40" then
		RequestInteraction(player, INTERACTION_LIBRARY.DETECT, true)
    end
	if binding == "ability_extra_27" then
		RequestInteraction(player, INTERACTION_LIBRARY.INVENTORY, true)
	end
end

return interaction