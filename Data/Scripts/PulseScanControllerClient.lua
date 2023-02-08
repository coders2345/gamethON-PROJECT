local propStatsLibrary = require(script:GetCustomProperty("StatsLibrary"))
local equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local propPulseScanPostProcess = script:GetCustomProperty("PulseScanPostProcess"):WaitForObject()

local fadeInEdge = script:GetCustomProperty("PulseFadeInEdge")
local fadeOutEdge = script:GetCustomProperty("PulseFadeOutEdge")

local defaultFalloffSharpness = propPulseScanPostProcess:GetSmartProperty("Pulse Falloff Sharpness")

local pulsePosition = 0

function Tick(dt)
	local range = 25
	if Object.IsValid(equipment) and Object.IsValid(equipment.owner) and equipment.owner == Game.GetLocalPlayer() then
		range = propStatsLibrary.GetStat(equipment.owner, "DetectionRadius") / 100
	else
		script.parent:Destroy()
		return
	end
	propPulseScanPostProcess:SetSmartProperty("Pulse Range", range)
	
	local propPulseSpeed = script:GetCustomProperty("PulseSpeed")
	local propPulseDelay = script:GetCustomProperty("PulseDelay")
	local propMinSharpness = script:GetCustomProperty("MinSharpness")
	local propMaxSharpness = script:GetCustomProperty("MaxSharpness")
	
	pulsePosition = pulsePosition + propPulseSpeed * dt
--	print("pos " .. pulsePosition .. " range " .. range)
	local clampedPulsePosition = CoreMath.Clamp(pulsePosition, 0, 1)
	
	propPulseScanPostProcess:SetSmartProperty("Pulse Scale", clampedPulsePosition)
	
	local maxPulseWidth = 1
	if clampedPulsePosition <= fadeInEdge then
		-- fade in
		local fadeInAlpha = CoreMath.Clamp(clampedPulsePosition / fadeInEdge, 0, 1)
		propPulseScanPostProcess:SetSmartProperty("Pulse Width", CoreMath.Lerp(0, maxPulseWidth, fadeInAlpha))
		propPulseScanPostProcess:SetSmartProperty("Pulse Falloff Sharpness", CoreMath.Lerp(0, defaultFalloffSharpness, fadeInAlpha))
		
	elseif clampedPulsePosition >= fadeOutEdge then	
		-- fade out
		local fadeOutAlpha = CoreMath.Clamp((clampedPulsePosition - fadeOutEdge) / (1 - fadeOutEdge), 0, 1)
		propPulseScanPostProcess:SetSmartProperty("Pulse Width", CoreMath.Lerp(maxPulseWidth, 0, fadeOutAlpha))
		propPulseScanPostProcess:SetSmartProperty("Pulse Falloff Sharpness", CoreMath.Lerp(defaultFalloffSharpness, 0, fadeOutAlpha))
	end
	
	if pulsePosition >= 1 then
		pulsePosition = 0
		
		Task.Wait(propPulseDelay)
	end
end