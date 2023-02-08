local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local DEFAULT_PLANT_ASSET = COMPONENT_ROOT:GetCustomProperty("DefaultPlantAsset")

function SetCurrentPlant(player, plantResource)
    player.serverUserData.currentPlantResource = plantResource
end

function OnPlayerJoined(player)
    SetCurrentPlant(player, "ResourceStrawberry")
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Events.ConnectForPlayer("CurrentPlant", SetCurrentPlant)
