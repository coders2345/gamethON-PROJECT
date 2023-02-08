local AIM_ROOT = script:GetCustomProperty("AimRoot"):WaitForObject()
local CROSS_HAIR = script:GetCustomProperty("UIImage"):WaitForObject()
local TINY_TANK = script:GetCustomProperty("TinyTank"):WaitForObject()
local RETICLE_CONTAINER = script:GetCustomProperty("ReticleContainer"):WaitForObject()

local RAY_DISTANCE = 50000
local LOCAL_PLAYER = Game.GetLocalPlayer()

function Tick()
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
        CROSS_HAIR.x = screenPosition.x
        CROSS_HAIR.y = screenPosition.y
    else
        local screenPosition = UI.GetScreenPosition(aimRootWorldTransform:GetPosition()+aimRootWorldTransform:GetForwardVector() * RAY_DISTANCE)
        if not screenPosition then return end
        CROSS_HAIR.x = screenPosition.x
        CROSS_HAIR.y = screenPosition.y
    end
end