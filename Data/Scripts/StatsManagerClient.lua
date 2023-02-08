local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))

function OnResourceChanged(player, key, value)
    -- broadcast StatChangedEvent on client
    if STATS_LIST[key] ~= nil then
        Events.Broadcast("StatChangedEvent", player, key, value)
    end
end

function OnPlayerJoined(player)
	player.resourceChangedEvent:Connect(OnResourceChanged)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)