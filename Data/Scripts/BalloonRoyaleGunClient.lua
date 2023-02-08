local WEAPON = script:GetCustomProperty("AdvancedToyCapGun"):WaitForObject()

local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))
local GUN_UI = World.FindObjectByName("GunUI")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local IMPACT_VFX_SURFACE_ALIGNED = script:GetCustomProperty("ImpactSurfaceAligned")
local IMPACT_VFX = script:GetCustomProperty("ImpactVFX")
local SHOOT_VFX = script:GetCustomProperty("ShootVFX")

local isActive = false

GUN_UI.visibility = Visibility.FORCE_OFF

local nextFireTime = 0

local SHOT_RANGE = 10000

function Tick()
    if WEAPON.owner ~= LOCAL_PLAYER then return end
    GUN_UI.visibility = Visibility.INHERIT
    if isActive then
        if not API.IsPlayerParticipating(LOCAL_PLAYER) then
            DeactivateGun()
        end
    end
end

function OnGameStateChanged(state)
    if not Object.IsValid(WEAPON) then return end
    if WEAPON.owner ~= LOCAL_PLAYER then return end

    if state == API.STATE.RUNNING then
        if not isActive then
            if API.IsPlayerParticipating(LOCAL_PLAYER) then
                ActivateGun()
            end
        end
    else
        if isActive then
            DeactivateGun()
        end
    end
end


function ActivateGun()
    isActive = true
    Events.Broadcast("BalloonRoyale.EquipGun")
end

function DeactivateGun()
    isActive = false
    GUN_UI.visibility = Visibility.FORCE_OFF
    Events.Broadcast("BalloonRoyale.UnequipGun")
end

function SpawnImpactVFX(template, hitPosition, hitNormal)
    local vfx = nil
    if template then
        if hitNormal then
            vfx = World.SpawnAsset(template, {position = hitPosition, rotation = Rotation.New(Vector3.FORWARD, hitNormal)})
        else
            vfx = World.SpawnAsset(template, {position = hitPosition})
        end
    end

    if Object.IsValid(vfx) then
        if vfx.lifeSpan == 0 then
            vfx.lifeSpan = 2
        end
    end

    return vfx
end

function Fire()
    if WEAPON.owner ~= LOCAL_PLAYER then return end

    -- Prevent players from destroying balloons while in-game.
    if API.GetCurrentState() ~= API.STATE.RUNNING then return end

    -- Cooldown so we can only fire every 0.2 seconds
    nextFireTime = time() + 0.2

    local cameraPosition = LOCAL_PLAYER:GetViewWorldPosition()
    local cameraDirection = LOCAL_PLAYER:GetViewWorldRotation() * Vector3.FORWARD

    -- Since we are third person, we want the shot start position to not hit anything behind the player
    local startPosition = cameraPosition + ((cameraDirection .. (LOCAL_PLAYER:GetWorldPosition()) - cameraPosition) * cameraDirection)
    local endPosition = startPosition + cameraDirection * SHOT_RANGE

    local hitResult = World.Raycast(startPosition, endPosition, {ignorePlayers = true})
    if hitResult then
        endPosition = hitResult:GetImpactPosition()

        -- Spawn impact vfx
        SpawnImpactVFX(IMPACT_VFX, hitResult:GetImpactPosition())
        SpawnImpactVFX(IMPACT_VFX_SURFACE_ALIGNED, hitResult:GetImpactPosition(), hitResult:GetImpactNormal())
    end

    -- Check if our shot went through a balloon
    local balloons = API.GetAllPlayersWithBalloons()

    local balloonRadiusSquared = 120^2

    for player, balloon in pairs(balloons) do
        if player ~= LOCAL_PLAYER then 
            local distanceSquared = API.DistanceLineSegmentPointSquared(startPosition, endPosition, balloon.clientUserData.GetBalloonCenter())
            if distanceSquared < balloonRadiusSquared then
                Events.BroadcastToServer("ShotBalloon", player)
                return
            end
        end
    end
end

WEAPON.projectileSpawnedEvent:Connect(Fire)
WEAPON.destroyEvent:Connect(function()
    if WEAPON.owner == LOCAL_PLAYER and Object.IsValid(GUN_UI) then
        GUN_UI.visibility = Visibility.FORCE_OFF
    end
end)

Events.Connect("BalloonRoyale.GameStateChanged", OnGameStateChanged)

