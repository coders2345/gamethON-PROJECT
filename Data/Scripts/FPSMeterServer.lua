--[[
	FPS Meter - Server
	v1.0
	by: standardcombo
	
	See the FPSMeter_README for information about this module.
--]]
local API = {}

_G["Utils.FPSMeter"] = API

API.GetFrameRateForPlayer = function(player)
	Events.BroadcastToPlayer(player, "FrameRateRequest")
end

function OnLogData(player, fiveAvg, fiveSecondMin, fiveSecondMax, averageFps, maxOverall, minOverall, currentTime)
	print(
		string.format(
			"[FPS METER] (" .. currentTime .. ") " ..
				player.name ..
					" - 5s Avg: %.2f | 5s Min: %.2f | 5s Max: %.2f | Total Avg: %.2f | Total Max: %.2f | Total Min: %.2f",
			fiveAvg,
			fiveSecondMin,
			fiveSecondMax,
			averageFps,
			maxOverall,
			minOverall)
		)
	
end

Events.ConnectForPlayer("FPS_Meter_Log", OnLogData)
