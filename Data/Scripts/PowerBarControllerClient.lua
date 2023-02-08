local PowerPanel = script:GetCustomProperty("PowerPanel"):WaitForObject()
local ProgressBar = PowerPanel:GetCustomProperty("ProgressBar"):WaitForObject()
local AmountText = PowerPanel:GetCustomProperty("AmountText"):WaitForObject()

function POWER()
    while not _G["META_Power"] do Task.Wait() end
	return _G["META_Power"]
end

function Tick()
    local power, maxPower = POWER().GetPower()
    AmountText.text = string.format("%d/%d", math.floor(power), maxPower)
    ProgressBar.progress = power/maxPower
end
