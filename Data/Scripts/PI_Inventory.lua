
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettingsInventory"):WaitForObject(.01)
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject(.01)
local INVENTORY_GEO = script:GetCustomProperty("InventoryGeo"):WaitForObject(.01)
local INVENTORY_UI = script:GetCustomProperty("InventoryUI"):WaitForObject(.01)

local interaction = {}

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
		UI.PrintToScreen(msg)
	end
end

interaction.ServerCanStartInteraction = function (player, args)
	return true
end

interaction.ServerStartInteraction = function (player)
	log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)
	
	player.animationStance = "unarmed_stance"
	PLAYER_SETTINGS:ApplyToPlayer(player)
    player:SetMounted(false)
	player.canMount = false
end

interaction.ServerStopInteraction = function (player)
	log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)
end

interaction.ClientStartInteraction = function (player)
	log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)
	INVENTORY_GEO.visibility = Visibility.INHERIT
	INVENTORY_UI.visibility = Visibility.INHERIT
    player:SetOverrideCamera(CAMERA)
	Events.Broadcast("ToggleUI", "ItemInventoryUI", true)
	Events.Broadcast("ToggleVisibility", "SunDial", false)
	Events.Broadcast("ToggleVisibility", "KeysPanel", false)
	Events.Broadcast("ToggleVisibility", "BarnStoragePanel", false)
	Events.Broadcast("ToggleVisibility", "BackpackHUD", false)
end

interaction.ClientStopInteraction = function (player)
    log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)

    INVENTORY_GEO.visibility = Visibility.FORCE_OFF
    INVENTORY_UI.visibility = Visibility.FORCE_OFF
    
    -- inventory camera change is dramatic, so reset immediately
    player:ClearOverrideCamera()
    
	Events.Broadcast("ToggleUI", "ItemInventoryUI", false)
	Events.Broadcast("ToggleVisibility", "SunDial", true)
	Events.Broadcast("ToggleVisibility", "KeysPanel", true)
	Events.Broadcast("ToggleVisibility", "BarnStoragePanel", true)
	Events.Broadcast("ToggleVisibility", "BackpackHUD", true)
end

interaction.ServerHandleBindingPressed = function (player, binding)
	if binding == "ability_extra_27" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DEFAULT)
	end
end

return interaction