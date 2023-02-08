local STATS = require(script:GetCustomProperty("StatsLibrary"))

local propPointLight = script:GetCustomProperty("PointLight"):WaitForObject()
local propBulb = script:GetCustomProperty("Bulb"):WaitForObject()
local propAudio = script:GetCustomProperty("Audio"):WaitForObject()

local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()

local MIN_SPEED = script:GetCustomProperty("MinSpeed")
local MAX_SPEED = script:GetCustomProperty("MaxSpeed")

local MIN_DISTANCE = script:GetCustomProperty("MinDistance")
local MAX_DISTANCE_STAT_NAME = script:GetCustomProperty("MaxDistanceStat")

local DEPTH_DISTANCE_SCALE = script:GetCustomProperty("DepthDistanceScale")

local speed = 5
local hasTarget = true
local accumulator = 0
local lastLastFrameBrightness = -1
local lastFrameBrightness = -1

function Tick(dt)
	local brightness = 0
	
	local hasLocalEquipment = Object.IsValid(EQUIPMENT) and EQUIPMENT.owner == Game.GetLocalPlayer()
	
	if hasTarget or not hasLocalEquipment then
		accumulator = accumulator + dt * speed
		if accumulator > math.rad(360) then accumulator = accumulator - math.rad(360) end
		
		brightness = (1 + math.sin(accumulator)) * 0.5
		
		if hasLocalEquipment then
			-- detect peak of brightness
			if lastLastFrameBrightness >= 0
			and lastFrameBrightness - lastLastFrameBrightness > 0
			and brightness - lastFrameBrightness < 0 then
				propAudio:Play()
			end
		end
	end

	propPointLight.intensity = brightness * 2
	propBulb:SetColor(Color.RED * brightness * 1)
	
	lastLastFrameBrightness = lastFrameBrightness
	lastFrameBrightness = brightness
end

function HandleDetectorSignalUpdated(player, targetSite, distanceToTargetSite)
	hasTarget = false
	if targetSite ~= nil then
		if Object.IsValid(EQUIPMENT) and player == EQUIPMENT.owner then
			local finalDistance = distanceToTargetSite + targetSite.depth * DEPTH_DISTANCE_SCALE
			local t = 1 - CoreMath.Clamp((finalDistance - MIN_DISTANCE) / (STATS.GetStat(player, MAX_DISTANCE_STAT_NAME) - MIN_DISTANCE), 0, 1)
	
			hasTarget = true
			speed = CoreMath.Lerp(MIN_SPEED, MAX_SPEED, t)
--			print("Dist: " .. tostring(finalDistance) .. " T: " .. tostring(t) .. " Spd: " .. tostring(speed))
		end
	end
end

Events.Connect("DetectorSignalUpdated", HandleDetectorSignalUpdated)
