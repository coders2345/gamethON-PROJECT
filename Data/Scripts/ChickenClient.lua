local propChicken = script:GetCustomProperty("Chicken"):WaitForObject()
local propSound = script:GetCustomProperty("Sound"):WaitForObject()
local propStance = script:GetCustomProperty("Stance") or "unarmed_idle_relaxed"
local propUpsetDistance = script:GetCustomProperty("UpsetDistance") or 400

 
 	if Game.GetLocalPlayer() then
		propChicken:LookAtContinuous(Game.GetLocalPlayer(), true, 0)
	end
while true do
	d = Game.GetLocalPlayer():GetWorldPosition() - propChicken:GetWorldPosition()
	
	if d.size < propUpsetDistance then
		propChicken.animationStance = "unarmed_idle_ready"
		propChicken:PlayAnimation("unarmed_claw")
		propSound:Play()
		Task.Wait(0.1 + math.random()*0.5)
	else
		propChicken.animationStance = "unarmed_idle_relaxed"
		propChicken:PlayAnimation("unarmed_react_damage")
		propSound:Play()
		Task.Wait(math.random(5))
	end
end


