local VEHICLE = script:GetCustomProperty("TinyTank"):WaitForObject()

local TURRET_BASE_LOCAL = script:GetCustomProperty("TurretBase_Local"):WaitForObject()
local TURRET_BARREL_LOCAL = script:GetCustomProperty("Barrel_Local"):WaitForObject()
local AIM_ROOT = script:GetCustomProperty("AimRoot"):WaitForObject()

local TURRET_BARREL_EVERYONE = script:GetCustomProperty("Barrel_Everyone"):WaitForObject()
local TURRET_BASE_EVERYONE = script:GetCustomProperty("TurretBase_Everyone"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local PITCH_ANGLE = Vector2.New(-80,80)

local ROTATION_SMOOTHNESS = 0.2

local RAY_DISTANCE = 999999

local function RotateTurret()
    if not Object.IsValid(VEHICLE) then return end
    if not Object.IsValid(VEHICLE.driver) then return end

    local targetRot = VEHICLE.driver:GetViewWorldRotation()
    
    local viewTransform = Transform.New(VEHICLE.driver:GetViewWorldRotation(),VEHICLE.driver:GetViewWorldPosition(),Vector3.ONE)

    --CoreDebug.DrawLine(viewTransform:GetPosition(),viewTransform:GetPosition() + viewTransform:GetForwardVector() * RAY_DISTANCE,{ color = Color.RED, thickness = 5 })

    local hitResult = World.Raycast(viewTransform:GetPosition(),viewTransform:GetPosition() + viewTransform:GetForwardVector() * RAY_DISTANCE)

    if hitResult then
        --CoreDebug.DrawLine( TURRET_BASE_LOCAL:GetWorldPosition(), TURRET_BASE_LOCAL:GetWorldPosition() + (hitResult:GetImpactPosition()-TURRET_BASE_LOCAL:GetWorldPosition()),{ color = Color.GREEN, thickness = 5 } )
        targetRot = Rotation.New( (hitResult:GetImpactPosition()-TURRET_BASE_LOCAL:GetWorldPosition()), TURRET_BASE_LOCAL:GetWorldTransform():GetUpVector())

        TURRET_BASE_LOCAL:RotateTo(targetRot, ROTATION_SMOOTHNESS, false)
        AIM_ROOT:RotateTo( Rotation.New( (hitResult:GetImpactPosition()-AIM_ROOT:GetWorldPosition()), TURRET_BASE_LOCAL:GetWorldTransform():GetUpVector()) , ROTATION_SMOOTHNESS, false)
    else 
        local targetRot = VEHICLE.driver:GetViewWorldRotation()
        AIM_ROOT:LookAt( TURRET_BARREL_LOCAL:GetWorldPosition() + TURRET_BARREL_LOCAL:GetWorldTransform():GetForwardVector() * 999999)
    end

    targetRot = -VEHICLE:GetWorldRotation() * targetRot

    targetRot.x = 0
    targetRot.y = 0

    TURRET_BASE_LOCAL:RotateTo(targetRot, ROTATION_SMOOTHNESS, true)


end

local function RotateTurretGun()
    if not Object.IsValid(VEHICLE) then return end
    if not Object.IsValid(VEHICLE.driver) then return end

    local targetRot = VEHICLE.driver:GetViewWorldRotation()
    
    local viewTransform = Transform.New(VEHICLE.driver:GetViewWorldRotation(),VEHICLE.driver:GetViewWorldPosition(),Vector3.ONE)

    local hitResult = World.Raycast(viewTransform:GetPosition(),viewTransform:GetPosition() + viewTransform:GetForwardVector() * RAY_DISTANCE)

    if hitResult then
        targetRot = Rotation.New( (hitResult:GetImpactPosition() - TURRET_BARREL_LOCAL:GetWorldPosition()), Vector3.UP)
    else 
        targetRot = -VEHICLE:GetWorldRotation() * targetRot
    end

    targetRot.x = 0
    targetRot.z = 0
    targetRot.y = CoreMath.Clamp(targetRot.y, PITCH_ANGLE.x, PITCH_ANGLE.y)
    TURRET_BARREL_LOCAL:RotateTo(targetRot, ROTATION_SMOOTHNESS, true)
end

function Tick()
    if VEHICLE.driver and VEHICLE.driver == LOCAL_PLAYER then
        TURRET_BASE_LOCAL.visibility = Visibility.FORCE_ON
        TURRET_BARREL_LOCAL.visibility = Visibility.FORCE_ON
        RotateTurret()
        RotateTurretGun()
    else
        TURRET_BASE_LOCAL.visibility = Visibility.FORCE_OFF
        TURRET_BARREL_LOCAL.visibility = Visibility.FORCE_OFF
    end
    -- Show the fake tank aimer to all other clients
    if VEHICLE.driver and VEHICLE.driver ~= LOCAL_PLAYER then
        TURRET_BASE_EVERYONE.visibility = Visibility.FORCE_ON
        TURRET_BARREL_EVERYONE.visibility = Visibility.FORCE_ON
    elseif not VEHICLE.driver then
        TURRET_BASE_EVERYONE.visibility = Visibility.FORCE_ON
        TURRET_BARREL_EVERYONE.visibility = Visibility.FORCE_ON
    else
        TURRET_BASE_EVERYONE.visibility = Visibility.FORCE_OFF
        TURRET_BARREL_EVERYONE.visibility = Visibility.FORCE_OFF
    end
end