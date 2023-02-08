local function SpawnAsset(template, optionalTable)
    local resultTable = {}
    Events.Broadcast("META.SpawnAsset", template, optionalTable, resultTable)
    local newObject = resultTable[1]
    resultTable = nil
    return newObject
end

function OnSpawn(template, optionalTable, resultTable)
    resultTable[1] = World.SpawnAsset(template, optionalTable)
end

Events.Connect("META.SpawnAsset", OnSpawn)
_G.SpawnAsset = SpawnAsset