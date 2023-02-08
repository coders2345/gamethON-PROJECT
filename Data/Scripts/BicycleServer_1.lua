-- Custom Properties
local vehicle = script:GetCustomProperty("Vehicle"):WaitForObject()

local speedModifier = 0

-- Tick function to adjust the custom properties that affect the rotation speed for the wheels.
function Tick()

	if not vehicle.driver then
		return
	end
	
	speedModifier = 0

	
	if vehicle.driver:IsBindingPressed("ability_extra_21") then
		speedModifier = speedModifier + 1
	elseif vehicle.driver:IsBindingPressed("ability_extra_31") then
		speedModifier = speedModifier - 1
	end
	
	script:SetNetworkedCustomProperty("SpeedModifier", speedModifier)
end

