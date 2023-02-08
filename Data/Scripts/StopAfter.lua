local VFX = script:GetCustomProperty("Vfx"):WaitForObject()

local propStopTime = script:GetCustomProperty("StopTime")

Task.Wait(propStopTime)

VFX:Stop()