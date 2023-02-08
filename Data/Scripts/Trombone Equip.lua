local Ease3D = script:GetCustomProperty("Ease3D")
local Trombone_Equipment = script:GetCustomProperty("Trombone_Equipment"):WaitForObject()
local IK_LeftHand = script:GetCustomProperty("IK_LeftHand"):WaitForObject()
local IK_RightHand = script:GetCustomProperty("IK_RightHand"):WaitForObject()



function OnEquipped(thisEquipment, player)
  
    IK_LeftHand:Activate(player)
    IK_RightHand:Activate(player)
    
    --Ease3D.EasePosition(IK_RightHand, Vector3.New(0, 0, 0), 1, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
end

while not Trombone_Equipment.owner do
    Task.Wait()
end
Task.Wait(1)
OnEquipped(Trombone_Equipment, Trombone_Equipment.owner)