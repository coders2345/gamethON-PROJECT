local propOBJ = script:GetCustomProperty("OBJ"):WaitForObject()

function Tick()
    if Object.IsValid(propOBJ) then 
        local quat = Quaternion.New(Game.GetLocalPlayer():GetViewWorldRotation())
        quat = quat * Quaternion.New(Vector3.UP, 180.0)
        propOBJ:SetWorldRotation(Rotation.New(quat))
    end 

end
