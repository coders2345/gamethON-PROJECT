local DIG_EQUIPMENT = script:GetCustomProperty("DigEquipment")

function HandlePlayerJoined(player)
    local digEquipment = World.SpawnAsset(DIG_EQUIPMENT)

    digEquipment:Equip(player)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)