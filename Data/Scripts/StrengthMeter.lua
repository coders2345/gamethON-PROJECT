local STATS = require(script:GetCustomProperty("StatsLibrary"))

local LIT_GROUP = script:GetCustomProperty("LitGroup"):WaitForObject()
local UNLIT_GROUP = script:GetCustomProperty("UnlitGroup"):WaitForObject()

local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()

local MIN_DISTANCE = script:GetCustomProperty("MinDistance")
local MAX_DISTANCE_STAT_NAME = script:GetCustomProperty("MaxDistanceStat")

local DEPTH_DISTANCE_SCALE = script:GetCustomProperty("DepthDistanceScale")

function refreshLights(strength)
	-- guard against references being destroyed before the script runtime is destroyed
	if Object.IsValid(LIT_GROUP) and Object.IsValid(UNLIT_GROUP) then
		local litChildren = LIT_GROUP:GetChildren()
		local unlitChildren = UNLIT_GROUP:GetChildren()
		
		for i=1,#litChildren,1 do
			if i <= strength then
				litChildren[i].visibility = Visibility.INHERIT
				unlitChildren[i].visibility = Visibility.FORCE_OFF
			else
				litChildren[i].visibility = Visibility.FORCE_OFF
				unlitChildren[i].visibility = Visibility.INHERIT
			end
		end
	end
end

function HandleDetectorSignalUpdated(player, targetSite, distanceToTargetSite, canDig)
	if targetSite ~= nil then
		if Object.IsValid(EQUIPMENT) and player == EQUIPMENT.owner then
			local finalDistance = distanceToTargetSite + targetSite.depth * DEPTH_DISTANCE_SCALE
			local t = 1 - CoreMath.Clamp((finalDistance - MIN_DISTANCE) / (STATS.GetStat(player, MAX_DISTANCE_STAT_NAME) - MIN_DISTANCE), 0, 1)
	
			local litChildren = LIT_GROUP:GetChildren()
			
			local range = #litChildren
--print("range " .. tostring(range))
			local discreteStrength = CoreMath.Round(t * (range))
--print("t: " .. tostring(t) .. " STR: " .. discreteStrength)
			-- override strength if the client thinks we can dig here
			if canDig then
				discreteStrength = range
			end
			
			refreshLights(discreteStrength)
						
--			print("Dist: " .. tostring(finalDistance) .. " T: " .. tostring(t) .. " Spd: " .. tostring(speed))
		end
	else
		refreshLights(0)
	end
end

Events.Connect("DetectorSignalUpdated", HandleDetectorSignalUpdated)
