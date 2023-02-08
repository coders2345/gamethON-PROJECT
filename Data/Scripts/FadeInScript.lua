local propFadeInDelay = script:GetCustomProperty("FadeInDelay")
local propFadeInTime = script:GetCustomProperty("FadeInTime")
local propSketchPostProcess = script:GetCustomProperty("SketchPostProcess"):WaitForObject()


local fadeInColorStart = Color.BLACK
local fadeInColorEnd = Color.BLACK
fadeInColorEnd.a = 0
propSketchPostProcess:SetSmartProperty("Background Color", fadeInColorStart)

Task.Wait(propFadeInDelay)

local fadeStart = time()

function Tick(dt)
	local t = (time() - fadeStart)/propFadeInTime
	propSketchPostProcess:SetSmartProperty("Background Color",Color.Lerp(fadeInColorStart,fadeInColorEnd,t))
	if t > 1.0 then
		script:Destroy()
	end
end

