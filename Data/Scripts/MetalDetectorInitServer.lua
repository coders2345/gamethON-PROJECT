local METAL_DECT_UPGRADES = require(script:GetCustomProperty("MetalDetectorUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

function HandlePlayerJoined(player)
    -- wait for stats to update from storage
    Task.Wait()
    -- Start with a level 1 metal detector
    if STATS_LIBRARY.GetStat(player, "MetalDetectorLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "MetalDetectorLevel", 1)
    end
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)