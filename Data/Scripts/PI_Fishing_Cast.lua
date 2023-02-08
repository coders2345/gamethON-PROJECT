local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local FISH_ROD_UPGRADES = require(script:GetCustomProperty("FishingRodUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
		UI.PrintToScreen(tostring(msg))
	end
end

local interaction = {}

serverPlayerTable = {}
clientPlayerTable = {}

local function RequestInteraction(player, interactionId, removeRod)
	if removeRod and Object.IsValid(player.serverUserData.PI_FISHING_CONTEXT.rodEquipment) then
		player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Unequip()
		Task.Wait()
		player.serverUserData.PI_FISHING_CONTEXT.rodEquipment:Destroy()
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

local function CloseOtherUI()
    Events.Broadcast("ToggleUI","")
	UI.SetCanCursorInteractWithUI(false)
    UI.SetCursorVisible(false)
end

local function FishSpawnWait(player)
    if not Object.IsValid(player) then return end

    local context = clientPlayerTable[player]

    local currentFish = player.clientUserData.PI_FISHING_CONTEXT.currentFish

    if not Object.IsValid(context.rodEquipment) then
        return
    end

    local bitePosition = context.rodEquipment.clientUserData.GetFishBitePosition()

    if not Object.IsValid(currentFish) and bitePosition then

        local closestFish = FISH_SITE_LIBRARY.GetClosestFish(bitePosition, {radius = clientPlayerTable[player].baitRange})
        if Object.IsValid(closestFish) then
            closestFish.clientUserData.bitePosition = bitePosition
            player.clientUserData.PI_FISHING_CONTEXT.startTime = time()
            player.clientUserData.PI_FISHING_CONTEXT.currentFish = closestFish
        end

    elseif Object.IsValid(currentFish) then
        -- if player moves during waiting, then cancel the casting
        if player:GetVelocity().size / player.maxWalkSpeed > 0 then
            Events.BroadcastToServer("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
            clientPlayerTable[player].waitingFishHandle = nil
            Task.GetCurrent():Cancel()
            return
        end

        -- Amount of time player needs to wait for fish to bite the bait
        if time() - player.clientUserData.PI_FISHING_CONTEXT.startTime >= player.clientUserData.PI_FISHING_CONTEXT.waitTime then
            Events.BroadcastToServer("RequestInteraction", player, INTERACTION_LIBRARY.FISHING_PULL)
            clientPlayerTable[player].waitingFishHandle = nil
            Task.GetCurrent():Cancel()
        end
    end
end

local function RemoveCurrentFishClient(player)
    if player.clientUserData.PI_FISHING_CONTEXT and Object.IsValid(player.clientUserData.PI_FISHING_CONTEXT.currentFish) then
        player.clientUserData.PI_FISHING_CONTEXT.currentFish.clientUserData.bitePosition = nil              
        Events.BroadcastToServer("FishPullFailed", player, player.clientUserData.PI_FISHING_CONTEXT.currentFish)
        Events.Broadcast("FishDartAway", player.clientUserData.PI_FISHING_CONTEXT.currentFishItem.itemId)        
        player.clientUserData.PI_FISHING_CONTEXT.currentFish = nil        
    end
end

local function OnBindingPressedClient(player, binding)
    local context = clientPlayerTable[player]
    -- if player mounts, remove current fish
    if (binding == "ability_extra_34") then
        RemoveCurrentFishClient(player)
    end

    -- if player switches states, remove current fish
    if binding == "ability_extra_39" or binding == "ability_primary" then
        if context.pullAbility then
            context.pullAbility:Activate()
        end
        RemoveCurrentFishClient(player)
    end
    if binding == "ability_extra_40" then
        RemoveCurrentFishClient(player)
    end
    if binding == "ability_extra_27" then
        RemoveCurrentFishClient(player)
	end
end

interaction.ServerCanStartInteraction = function (player, args)
    local fishingEquipment = ITEM_LIBRARY.GetFishingEquipment(player)
    local castAbility = fishingEquipment:GetCustomProperty("CastAbility"):WaitForObject()

    if castAbility:GetCurrentPhase() == AbilityPhase.COOLDOWN then
        return false
    end

	return true
end

interaction.ServerStartInteraction = function (player)
    log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)

    if not player.isGrounded then
        RequestInteraction(player, INTERACTION_LIBRARY.FISHING, true)
        return
    end

    serverPlayerTable[player] = {}

    serverPlayerTable[player].checkExitStateTaskHandle = Task.Spawn(function() CheckExitStateServer(player) end)
	serverPlayerTable[player].checkExitStateTaskHandle.repeatCount = -1

    player:SetMounted(false)
    player.canMount = true
end

interaction.ServerStopInteraction = function (player)
    log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)

    if serverPlayerTable[player] and serverPlayerTable[player].checkExitStateTaskHandle ~= nil then
		serverPlayerTable[player].checkExitStateTaskHandle:Cancel()
	end
end

interaction.ClientStartInteraction = function (player)
    log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)

    clientPlayerTable[player] = {}
    player.clientUserData.PI_FISHING_CONTEXT = {}

    -- Do ability
    local fishingEquipment = ITEM_LIBRARY.GetFishingEquipment(player)
    local currentLevel = STATS_LIBRARY.GetStat(player, "FishingRodLevel")

    clientPlayerTable[player].bobberEventHandle = Events.Connect("FishingBobberOnWater", function(rodId, isOnWater)
        local rodEquipment = ITEM_LIBRARY.GetRodEquipment(player)
        if rodEquipment.id == rodId then
            if isOnWater then
                -- Waiting for fish if bobber is on water
                clientPlayerTable[player].pullAbility = fishingEquipment:GetCustomProperty("PullAbility"):WaitForObject()
                clientPlayerTable[player].rodEquipment = rodEquipment

                clientPlayerTable[player].baitRange = FISH_ROD_UPGRADES[currentLevel].rodData.baitRange

                player.clientUserData.PI_FISHING_CONTEXT.waitTime = FISH_ROD_UPGRADES[currentLevel].rodData.waitTime

                clientPlayerTable[player].waitingFishHandle = Task.Spawn(function() FishSpawnWait(player) end)
                clientPlayerTable[player].waitingFishHandle.repeatCount = -1

                Events.Broadcast("StartFishWait")
            else
                -- Cancel bobbing
                Events.BroadcastToServer("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
            end
        end
    end)

    clientPlayerTable[player].bindingPressedHandle = player.bindingPressedEvent:Connect(OnBindingPressedClient)

    -- Do ability
    local castAbility = fishingEquipment:GetCustomProperty("CastAbility"):WaitForObject()
    castAbility:Activate()

    -- Close all other ui when fishing is started
    CloseOtherUI()

end

interaction.ClientStopInteraction = function (player)
    log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)

    if clientPlayerTable[player].bobberEventHandle then
        clientPlayerTable[player].bobberEventHandle:Disconnect()
    end
    if clientPlayerTable[player].waitingFishHandle then
        clientPlayerTable[player].waitingFishHandle:Cancel()
    end
    if clientPlayerTable[player].bindingPressedHandle then
        clientPlayerTable[player].bindingPressedHandle:Disconnect()
    end

    clientPlayerTable[player] = {}

    Events.Broadcast("StopFishWait")
end

interaction.ServerHandleBindingPressed = function (player, binding)
    if binding == "ability_extra_39" or binding == "ability_primary" then
		RequestInteraction(player, INTERACTION_LIBRARY.FISHING, true)
    end
    if binding == "ability_extra_40" then
		RequestInteraction(player, INTERACTION_LIBRARY.DETECT, true)
    end
    if binding == "ability_extra_27" then
		RequestInteraction(player, INTERACTION_LIBRARY.INVENTORY, true)
	end
end

return interaction