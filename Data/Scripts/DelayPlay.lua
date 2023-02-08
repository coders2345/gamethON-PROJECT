local propDelayTime = script:GetCustomProperty("DelayTime")
audio = script.parent
Task.Wait(propDelayTime)
audio:Play()