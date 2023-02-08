-- Internal custom properties
local propVehicle = script:GetCustomProperty("Vehicle"):WaitForObject()
local propBicycleServer = script:GetCustomProperty("BicycleServer"):WaitForObject()
local propIKAnchor_hand_left = script:GetCustomProperty("IKAnchor_hand_left"):WaitForObject()
local propIKAnchor_hand_right = script:GetCustomProperty("IKAnchor_hand_right"):WaitForObject()
local propIKAnchor_hips = script:GetCustomProperty("IKAnchor_hips"):WaitForObject()
local propIKAnchor_foot_left = script:GetCustomProperty("IKAnchor_foot_left"):WaitForObject()
local propIKAnchor_foot_right = script:GetCustomProperty("IKAnchor_foot_right"):WaitForObject()
local propCrank = script:GetCustomProperty("crank"):WaitForObject()
local propIdle_locator_left_foot = script:GetCustomProperty("idle_locator_left_foot"):WaitForObject()
local propIdle_locator_hips = script:GetCustomProperty("idle_locator_hips"):WaitForObject()
local propActive_locator_left_foot = script:GetCustomProperty("active_locator_left_foot"):WaitForObject()
local propActive_locator_hips = script:GetCustomProperty("active_locator_hips"):WaitForObject()

local stopped = false

function Tick(deltaTime)	
	serverSpeedModifier = propBicycleServer:GetCustomProperty("SpeedModifier")
	xMovement = propVehicle:GetVelocity().size
	propCrank:RotateContinuous(Rotation.New(.8, 0, 0), xMovement * serverSpeedModifier, true)		
	if xMovement <= 10 then 
		if stopped == false then
			stopped = true
			for i = 1, 30 do
				propIKAnchor_foot_left:SetWorldPosition(Vector3.Lerp(propIKAnchor_foot_left:GetWorldPosition(), propIdle_locator_left_foot:GetWorldPosition(), i/50))		
				propIKAnchor_hips:SetWorldPosition(Vector3.Lerp(propIKAnchor_hips:GetWorldPosition(), propIdle_locator_hips:GetWorldPosition(), i/100))		

				local currentRot = Quaternion.New(propIKAnchor_hips:GetWorldRotation())
				local targetRot = Quaternion.New(propIdle_locator_hips:GetWorldRotation())
				propIKAnchor_hips:SetWorldRotation(Rotation.New(Quaternion.Slerp(currentRot, targetRot, i/50)))

				Task.Wait()
			end
		end
	else
		if stopped == true then
			stopped = false
			for i = 1, 30 do
				propIKAnchor_foot_left:SetWorldPosition(Vector3.Lerp(propIKAnchor_foot_left:GetWorldPosition(), propActive_locator_left_foot:GetWorldPosition(), i/100))		
				propIKAnchor_hips:SetWorldPosition(Vector3.Lerp(propIKAnchor_hips:GetWorldPosition(), propActive_locator_hips:GetWorldPosition(), i/50))		

				local currentRot = Quaternion.New(propIKAnchor_hips:GetWorldRotation())
				local targetRot = Quaternion.New(propActive_locator_hips:GetWorldRotation())
				propIKAnchor_hips:SetWorldRotation(Rotation.New(Quaternion.Slerp(currentRot, targetRot, i/50)))
				
				Task.Wait()
			end
		end
	end
end

function OnDriverEntered(v, p)
    propIKAnchor_hand_left:Activate(p)
	propIKAnchor_hand_right:Activate(p)	
	propIKAnchor_hips:Activate(p)	
	propIKAnchor_foot_left:Activate(p)	
	propIKAnchor_foot_right:Activate(p)
end

function OnDriverExited(v, p)    
	if Object.IsValid(propIKAnchor_hand_left) then 
    propIKAnchor_hand_left:Deactivate()
	end
	if Object.IsValid(propIKAnchor_hand_right) then 
		propIKAnchor_hand_right:Deactivate()
	end
	if Object.IsValid(propIKAnchor_hips) then 
	propIKAnchor_hips:Deactivate()
	end

	if Object.IsValid(propIKAnchor_foot_left) then 
	propIKAnchor_foot_left:Deactivate()
	end

	if Object.IsValid(propIKAnchor_foot_right) then 
	propIKAnchor_foot_right:Deactivate()	
	end	
end

propVehicle.driverEnteredEvent:Connect(OnDriverEntered)
propVehicle.driverExitedEvent:Connect(OnDriverExited)

for _,player in ipairs(Game.GetPlayers()) do
	if Object.IsValid(player.occupiedVehicle) and player.occupiedVehicle == propVehicle then 
		OnDriverEntered(propVehicle, player)
	end
end