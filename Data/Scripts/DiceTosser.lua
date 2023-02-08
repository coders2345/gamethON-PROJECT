local Root = script:GetCustomProperty("root"):WaitForObject()
local Sides = Root:GetCustomProperty("Sides")
local Trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local TosserTemplate = script:GetCustomProperty("PhysicsTosser")

function OnInteract(trigger, other)
    trigger.collision = Collision.FORCE_OFF
    local tosser = other
    local result = math.random(1, Sides)
    Root:SetNetworkedCustomProperty("Value", result)
    Task.Wait()
    Root:SetNetworkedCustomProperty("State", 1)

    --[[
    local physicstosser = World.SpawnAsset(TosserTemplate)
    physicstosser:SetWorldPosition(Root:GetWorldPosition() + Vector3.New(0, 0, -1))
    physicstosser:SetWorldScale(Vector3.New(0.1, 0.1, 1))
    Task.Wait()
    physicstosser:SetWorldPosition(Root:GetWorldPosition() + Vector3.New(0, 50, 14))        
    Task.Wait(3)
    ]]
    
    Root:SetVelocity(Vector3.New(
        100 - math.random(0, 200),
        100 - math.random(0, 200),            
        math.random(800, 1000)
    ))
    
    Task.Wait(3)
    if Object.IsValid(Root) then
        Root:SetNetworkedCustomProperty("State", 0)
    else
        return
    end

    if Sides > 2 then
        --[[
        Root:SetVelocity(Vector3.New(
            math.random(-100, 100),
            500,            
            math.random(800, 1000)
        ))
        Task.Wait(0.2)
        Root:SetVelocity(Vector3.New(
            math.random(-100, 100),
            500,            
            math.random(800, 1000)
        ))
        Task.Wait(0.2)
        Root:SetVelocity(Vector3.New(
            math.random(-100, 100),
            500,            
            math.random(800, 1000)
        ))
        Task.Wait(0.2)
        Root:SetVelocity(Vector3.New(
            math.random(-100, 100),
            50,            
            math.random(800, 1000)
        ))
        ]]
        
        Chat.BroadcastMessage(string.format("%s rolled a %s sided dice, and it came up %s!", tosser.name, Sides, result))
    else
        local whichSide = ""
        if result == 1 then 
            whichSide = "tails" 
        elseif result == 2 then
            whichSide = "heads"
        end
        Chat.BroadcastMessage(string.format("%s flipped a coin, and it came up %s!", tosser.name, whichSide))
    end
    
    trigger.collision = Collision.INHERIT
end

Trigger.interactedEvent:Connect(OnInteract)