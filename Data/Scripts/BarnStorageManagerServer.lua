local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))

--[[ function Init(player)
    Task.Wait()
    OnStatChanged(player, "BarnLevel", STATS_LIBRARY.GetStat(player, "BarnLevel"))
end

function GetCurrentStorage(player)
    local total = 0

    for _, resource in ipairs(API_BARN_STORAGE.GetValidResources()) do
        total = total + STATS_LIBRARY.GetStat(player, resource)
    end
    return total
end

function OnStatChanged(player, key, value)
    if key == "BarnLevel" or API_BARN_STORAGE.IsResourceValid(key) then
        STATS_LIBRARY.UpdateStat(player, "BarnStorage", GetCurrentStorage(player))
    end
end ]]

function BarnStorageUpgrade(player, upgradeId)
    if upgradeId ~= "BarnLevel" then return end

    Events.Broadcast("TryUpgrade", player, upgradeId)
end
--Game.playerJoinedEvent:Connect(Init)
--Events.Connect("StatChangedEvent", OnStatChanged)
Events.ConnectForPlayer("BarnStorageUpgrade", BarnStorageUpgrade)
