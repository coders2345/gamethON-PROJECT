
local STATS = require(script:GetCustomProperty("StatsLibrary"))

local propLabel = script:GetCustomProperty("Label"):WaitForObject()
local propStatId = script:GetCustomProperty("StatId")

function Tick(dt)
	propLabel.text = propStatId .. ": " .. tostring(STATS.GetStat(Game.GetLocalPlayer(), propStatId))
end