local Ease3D = require(script:GetCustomProperty("Ease3D"))
local DrifterTeabag = script:GetCustomProperty("DrifterTeabag"):WaitForObject()
local IKPelvis = script:GetCustomProperty("IKPelvis"):WaitForObject()
local IKLeftHand = script:GetCustomProperty("IKLeftHand"):WaitForObject()
local IKRightHand = script:GetCustomProperty("IKRightHand"):WaitForObject()
local IKLeftFoot = script:GetCustomProperty("IKLeftFoot"):WaitForObject()
local IKRightFoot = script:GetCustomProperty("IKRightFoot"):WaitForObject()
local IKRightHandTarget = script:GetCustomProperty("IKRightHandTarget"):WaitForObject()

local StartingPosition = IKRightHand:GetPosition()
local TargetPosition = IKRightHandTarget:GetPosition()


function OnEquipped(thisEquipment, player)
    
    IKLeftHand:Activate(player)
    IKRightHand:Activate(player)
    IKLeftFoot:Activate(player)
    IKRightFoot:Activate(player)
    IKPelvis:Activate(player)
    Task.Wait(0.25)
end

function Tick()
    Task.Wait(.5)
    Ease3D.EasePosition(IKRightHand, TargetPosition + Vector3.New(0, 0, 15), 2, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
    Task.Wait(2)
    Ease3D.EasePosition(IKRightHand, StartingPosition, 1, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
    Task.Wait(1)
    Ease3D.EasePosition(IKRightHand, TargetPosition, 1, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
    Task.Wait(1)
    Ease3D.EasePosition(IKRightHand, StartingPosition, .5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
    Task.Wait(.5)
    Ease3D.EasePosition(IKRightHand, TargetPosition, .5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
    Task.Wait(.5)
    Ease3D.EasePosition(IKRightHand, StartingPosition, .5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
end

while not DrifterTeabag.owner do
    Task.Wait()
end
Task.Wait(1)
OnEquipped(DrifterTeabag, DrifterTeabag.owner)