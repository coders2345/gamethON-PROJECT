
local STATS = require(script:GetCustomProperty("StatsLibrary"))

function initStat(player, statId, statValue)
	if STATS.GetStat(player, statId) == 0 then
		STATS.UpdateStat(player, statId, statValue)
	end
end

function tweakStat(player, bindingPressed, decBinding, incBinding, statId, delta, min, max)
	local modifier = 0
	
	if bindingPressed == decBinding then
		modifier = -1 * delta
	elseif bindingPressed == incBinding then
		modifier = delta
	end
	
	if modifier ~= 0 then
		local prevStat = STATS.GetStat(player, statId)
		local newStat = prevStat + modifier
		
		if min ~= nil then
			newStat = math.max(newStat, min)
		end
		if max ~= nil then
			newStat = math.min(newStat, max)
		end
		
		STATS.UpdateStat(player, statId, newStat)
	end
end

function setStat(player, bindingPressed, binding, statId, value)
	if bindingPressed == binding then
		STATS.UpdateStat(player, statId, value)
	end
end

function HandlePlayerJoined(player)
--	initStat(player, "DetectionRadius", 1000)
--	initStat(player, "DetectionMaxDepth", 3)
	
	player.bindingPressedEvent:Connect(function (player, binding)
		--tweakStat(player, binding, 'ability_extra_50', 'ability_extra_51', "DetectionRadius", 100, 100)
		--tweakStat(player, binding, 'ability_extra_52', 'ability_extra_53', "DetectionMaxDepth", 1, 1, 10)
		tweakStat(player, binding, 'ability_extra_55', 'ability_extra_56', "Money", 50000, 0)
		--setStat(player, binding, 'ability_extra_54', "MetalDetectorLevel", 1)
		setStat(player, binding, 'ability_extra_54', "FishingRodLevel", 1)
	end)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)