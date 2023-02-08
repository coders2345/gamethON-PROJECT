local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()


function OnInteract(trigger, other)
  propRoot:SetVelocity(Vector3.New(
    math.random(-100, 100),
    math.random(-100, 100),
    math.random(700, 1000)
    ))
  propRoot:SetAngularVelocity(Vector3.New(
    math.random(-100, 100),
    math.random(-100, 100),
    math.random(-100, 100)
    ))

end




propTrigger.interactedEvent:Connect(OnInteract)

print("hello")