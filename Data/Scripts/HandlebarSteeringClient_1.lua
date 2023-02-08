local propFrontWheelProxy = script:GetCustomProperty("FrontWheelProxy"):WaitForObject()
local propFrontWheelGeo = script:GetCustomProperty("FrontWheelGeo"):WaitForObject()
local propBicycleServer = script:GetCustomProperty("BicycleServer"):WaitForObject()

local HandleBarSteeringGrp = script.parent
local Actor = script.parent.parent.parent.parent

--local handlebarRotation = Rotation.ZERO

function Tick(deltaTime)
	-- wheel right
	wheelRight = propFrontWheelProxy:GetWorldTransform():GetRightVector()
	-- body right
	bodyRight = Actor:GetWorldTransform():GetRightVector()
	wheelDot = CoreMath.Clamp(wheelRight..bodyRight, -1, 1)
	wheelCross = wheelRight^bodyRight	
	wheelRotZDeg = math.deg(math.acos(wheelDot))
	if wheelCross.z >= 0 then
		wheelRotZDeg = -wheelRotZDeg
	end	
	wheelRot = Rotation.New(0,0,wheelRotZDeg/2)
	HandleBarSteeringGrp:SetRotation(wheelRot)
	
	vehicleSpeed = Actor:GetVelocity().size
	serverSpeedModifier = propBicycleServer:GetCustomProperty("SpeedModifier")	
	propFrontWheelGeo:RotateContinuous(Rotation.New(0, -1, 0), vehicleSpeed * serverSpeedModifier, true)	
end