local ROOT = script

local EQUIPMENT_TO_GIVE = script:GetCustomProperty("EquipmentToGive")

local function GiveEquipment(player,EQUIPMENT)
    local newEquipment = World.SpawnAsset(EQUIPMENT)
    newEquipment:Equip(player)
end

local function RemoveEquipment(player,EQUIPMENT)
    local equipments = player:GetEquipment()
    for _, equipment in pairs(equipments) do
        if Object.IsValid(equipment) then
            equipment:Unequip()
            equipment:Destroy()
        end
    end
end

Task.Wait()
local playerJoinedHandle = Game.playerJoinedEvent:Connect(function(player)
    GiveEquipment(player,EQUIPMENT_TO_GIVE)
end)

local playerLeftHandle =Game.playerLeftEvent:Connect(function(player)
    RemoveEquipment(player)
end)

ROOT.destroyEvent:Connect(function()
    playerJoinedHandle:Disconnect()
    playerLeftHandle:Disconnect()
    for _, player in pairs(Game.GetPlayers()) do
        RemoveEquipment(player)
    end
end)

for _, player in pairs(Game.GetPlayers()) do
    GiveEquipment(player,EQUIPMENT_TO_GIVE)
end