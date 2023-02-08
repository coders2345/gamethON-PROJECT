
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()
local SHOVEL_MANAGER_SERVER = script:GetCustomProperty("ShovelManagerServer"):WaitForObject()
local STABLE_MANAGER_SERVER = script:GetCustomProperty("StableManagerServer"):WaitForObject()

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

	STABLE_MANAGER_SERVER.context.AssignPlayerMountData(player)

	player.canMount = true

	SHOVEL_MANAGER_SERVER.context.GivePlayerEquipment(player)
end

interaction.ServerStopInteraction = function (player)
	log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)
	
	SHOVEL_MANAGER_SERVER.context.RemovePlayerEquipment(player)
end

interaction.ClientStartInteraction = function (player)
	log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)
	
	player:ClearOverrideCamera(0.5)
end

interaction.ClientStopInteraction = function (player)
	log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)
end

interaction.ServerHandleBindingPressed = function (player, binding)
	if binding == "ability_extra_40" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DETECT)
	end
	if binding == "ability_extra_39" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
	end
	-- I for inventory
	if binding == "ability_extra_27" then
		Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.INVENTORY)
	end
end

return interaction