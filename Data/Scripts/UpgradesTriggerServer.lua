local TRIGGER = script:GetCustomProperty("UpgradesTrigger"):WaitForObject()
local upgradeID = TRIGGER:GetCustomProperty("UpgradeID")

function OnInteracted(trigger, other)
	if other:IsA("Player") then
	end
end
function HandleUpgradeComplete(player, statId, value)
    if player ~= interactingPlayer then return end
    if statId ~= upgradeID then return end

end

Events.Connect("UpgradeComplete", HandleUpgradeComplete)

TRIGGER.interactedEvent:Connect(OnInteracted)
