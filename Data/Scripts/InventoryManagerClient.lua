local INVENTORY, INV_ITEMS = require(script:GetCustomProperty("Inventory"))
local INV_MAN_SERVER = script:GetCustomProperty("InventoryManagerServer"):WaitForObject()
local PACK_LIB = require(script:GetCustomProperty("PackBits"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnResourceChanged(player, key, value)
    if INV_ITEMS[key] ~= nil then
        Events.Broadcast("InventoryChangedEvent", player, key, value)
    end
end

function OnPlayerJoined(player)
	player.resourceChangedEvent:Connect(OnResourceChanged)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)