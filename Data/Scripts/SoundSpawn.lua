local SoundTemplate = script:GetCustomProperty("SoundTemplate")
local Ability = script:GetCustomProperty("Ability"):WaitForObject()

function OnExecute(ability)
	local sound = World.SpawnAsset(SoundTemplate, {position = ability.owner:GetWorldPosition()})
    sound.lifeSpan = 5
end

Ability.executeEvent:Connect(OnExecute)