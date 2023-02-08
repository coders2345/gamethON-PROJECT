local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local STABLE_PLAYER_SETTINGS = script:GetCustomProperty("StablePlayerSettings"):WaitForObject()

function StableUpgrade(player, upgradeId)
    if upgradeId ~= "StableLevel" then return end

    Events.Broadcast("TryUpgrade", player, upgradeId)
    Task.Wait()
    AssignPlayerMountData(player)
end

function AssignPlayerMountData(player)
    local stableLevel = STATS_LIBRARY.GetStat(player, "StableLevel")
    if STABLE_PLAYER_SETTINGS:GetChildren()[stableLevel] then
        STABLE_PLAYER_SETTINGS:GetChildren()[stableLevel]:ApplyToPlayer(player)
    end
end

function OnPlayerJoined(player)
    Task.Wait()
    AssignPlayerMountData(player)
end

-- Initialize
Events.ConnectForPlayer("StableUpgrade", StableUpgrade)
Game.playerJoinedEvent:Connect(OnPlayerJoined)