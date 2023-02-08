local propVFX = script:GetCustomProperty("VFX"):WaitForObject()
local propSFX = script:GetCustomProperty("SFX"):WaitForObject()
local propRockfall = script:GetCustomProperty("Rockfall")

while true do
	propVFX:Play()
	propSFX:FadeIn(2)
	World.SpawnAsset(propRockfall, {position = script.parent:GetWorldPosition()})
	Task.Wait(2)
	propSFX:FadeOut(2)
	propVFX:Stop()
	Task.Wait(math.random(2,4))
end