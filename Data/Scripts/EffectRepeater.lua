local propEffect = script:GetCustomProperty("Effect"):WaitForObject()
local propIntervalDuration = script:GetCustomProperty("IntervalDuration")

local lastTime = time()

function Tick()
    if time() - lastTime >= propIntervalDuration then
        propEffect:Play()
        lastTime = time()
    end
end