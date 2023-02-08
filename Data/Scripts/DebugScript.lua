local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local flip = true
local Debug = true
if Debug then
	function OnBindingPressed(player, binding)
		if (binding == "ability_extra_1") then 
			--local curStatVal = STATS_LIBRARY.GetStat(player, "barn" )
			--STATS_LIBRARY.UpdateStat(player, "barn", curStatVal + 1)
			Events.Broadcast("TryUpgrade", player, "barn")
		end
		if (binding == "ability_extra_2") then
			local curStatVal1 = STATS_LIBRARY.GetStat(player, "BarnLevel")
			--local curStatVal2 = STATS_LIBRARY.GetStat(player, "BarnLevel")
			--STATS_LIBRARY.UpdateStat(player, "BarnLevel", curStatVal1 + 5)
			--STATS_LIBRARY.UpdateStat(player, "BarnLevel", curStatVal2 + 5)
			Events.Broadcast("ItemObtained","TEST_ITEM_1")
			flip = not flip
			if flip then
				Events.Broadcast("AchievementUnlocked", "Achiev BarnStorage1")
			else
				Events.Broadcast("AchievementUnlocked", "Achiev BarnStorage5")
			end
		end
		if binding == "ability_extra_3" then
			--local curStatVal1 = STATS_LIBRARY.GetStat(player, "stat1")
			--local curStatVal2 = STATS_LIBRARY.GetStat(player, "stat2")
			local curStatVal3 = STATS_LIBRARY.GetStat(player, "BarnLevel")
			--print("Stat1 :" .. tostring(curStatVal1))
			--print("Stat2 :" .. tostring(curStatVal2))
			print("Barn : " .. tostring(curStatVal3))
		end
	end

	function OnBindingReleased(whichPlayer, binding)
		if (binding == "ability_extra_1") then 
		
		end
	end

	function OnPlayerJoined(player)
		-- hook up binding in player joined event here, move to more appropriate place if needed
		player.bindingPressedEvent:Connect(OnBindingPressed)
		player.bindingReleasedEvent:Connect(OnBindingReleased)
	end

	-- on player joined/left functions need to be defined before calling event:Connect()
	Game.playerJoinedEvent:Connect(OnPlayerJoined)
end