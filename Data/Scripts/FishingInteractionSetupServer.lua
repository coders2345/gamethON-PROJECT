local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local FISH_CAST_EQUIPMENT = script:GetCustomProperty("FishingEquipment")

function HandlePlayerJoined(player)
    local fishingEquipment = World.SpawnAsset(FISH_CAST_EQUIPMENT)

    fishingEquipment:Equip(player)
end

function HandlePlayerLeft(player)
    local fishingEquipment = ITEM_LIBRARY.GetFishingEquipment(player)
    local rodEquipment = ITEM_LIBRARY.GetRodEquipment(player)

    if Object.IsValid(fishingEquipment) then
        fishingEquipment:Unequip()
        fishingEquipment:Destroy()
    end

    if Object.IsValid(rodEquipment) then
        rodEquipment:Unequip()
        rodEquipment:Destroy()
    end
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)
Game.playerLeftEvent:Connect(HandlePlayerLeft)