local AIM_ROOT = script:GetCustomProperty("AimRoot"):WaitForObject()
local CROSS_HAIR = script:GetCustomProperty("UIImage"):WaitForObject()
local TINY_TANK = script:GetCustomProperty("TinyTank"):WaitForObject()
local RETICLE_CONTAINER = script:GetCustomProperty("ReticleContainer"):WaitForObject()

local CONFIRMED_HIT_SOUND = script:GetCustomProperty("ConfirmedHitSound")


local RAY_DISTANCE = 50000
local LOCAL_PLAYER = Game.GetLocalPlayer()

function Tick(dt)
    if TINY_TANK.driver ~= LOCAL_PLAYER then 
        RETICLE_CONTAINER.visibility = Visibility.FORCE_OFF
        return
    else
        RETICLE_CONTAINER.visibility = Visibility.FORCE_ON
    end

    local aimRootWorldTransform = AIM_ROOT:GetWorldTransform()
    local hitResult = World.Raycast(aimRootWorldTransform:GetPosition(), aimRootWorldTransform:GetPosition() + aimRootWorldTransform:GetForwardVector() * RAY_DISTANCE)
    if hitResult then
        local screenPosition = UI.GetScreenPosition(hitResult:GetImpactPosition())
        if not screenPosition then return end
        local currentImagePos = Vector2.New(CROSS_HAIR.x,CROSS_HAIR.y)
        local smoothing = Vector2.Lerp(currentImagePos, screenPosition, dt*5)
        CROSS_HAIR.x = smoothing.x
        CROSS_HAIR.y = smoothing.y
    else
        local screenPosition = UI.GetScreenPosition(aimRootWorldTransform:GetPosition()+aimRootWorldTransform:GetForwardVector() * RAY_DISTANCE)
        if not screenPosition then return end
        CROSS_HAIR.x = screenPosition.x
        CROSS_HAIR.y = screenPosition.y
    end
end

while not TINY_TANK.driver do Task.Wait() end

local confirmedHitHandle = nil
if TINY_TANK.driver == LOCAL_PLAYER then
    confirmedHitHandle = Events.Connect("TT_ConfirmedKill",function()
        print("Confirmed hit!")
        World.SpawnAsset(CONFIRMED_HIT_SOUND,{ position = LOCAL_PLAYER:GetWorldPosition() })
    end)
end

TINY_TANK.destroyEvent:Connect(function()
    if confirmedHitHandle then
        confirmedHitHandle:Disconnect()
        confirmedHitHandle = nil
    end
end)