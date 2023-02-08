-- Custom Properties
local propBicycle = script:GetCustomProperty("Bicycle"):WaitForObject()
local propBicycleServer = script:GetCustomProperty("BicycleServer"):WaitForObject()

local propRearWheelGeo = script:GetCustomProperty("RearWheelGeo"):WaitForObject()

function Tick(deltaTime)
	serverSpeedModifier = propBicycleServer:GetCustomProperty("SpeedModifier")
	propVehicleSpeed = propBicycle:GetVelocity().size
	propRearWheelGeo:RotateContinuous(Rotation.New(0, -1, 0), propVehicleSpeed * serverSpeedModifier, true)
end