local WEAPON = script:FindAncestorByType('Weapon')
local KICK_ABILITY = script.parent
local KICK_AIR_ABILITY = script:GetCustomProperty("AbilityKickAir"):WaitForObject()
local WEAPON = KICK_ABILITY:FindAncestorByType("Weapon")
local HIT_EFFECT = script:GetCustomProperty("HitEffect")
local SOUND = script:GetCustomProperty("Sound"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local TRIGGER_AIR = script:GetCustomProperty("TriggerAir"):WaitForObject()
TRIGGER.collision = Collision.FORCE_OFF
TRIGGER_AIR.collision = Collision.FORCE_OFF
local BINDING_W = "ability_extra_21"
local BINDING_S = "ability_extra_31"
local BINDING_SHIFT = "ability_feet"
local BindingEVT

function OnBindingPressed(player, bindingPressed)
    if bindingPressed == BINDING_SHIFT then
        if player.isGrounded then
            if KICK_ABILITY:GetCurrentPhase() == AbilityPhase.READY then
                KICK_ABILITY:Activate()
            end
        else
            -- if KICK_AIR_ABILITY:GetCurrentPhase() == AbilityPhase.READY then
            --     KICK_AIR_ABILITY:Activate()
            -- end
        end
    end
end

function OnCast(ability)

    local player = ability.owner
    local lookRotation = player:GetLookWorldRotation()
    local rot = Rotation.New(0, 0, lookRotation.z)
    player:SetWorldRotation(rot)

    player:AddImpulse(rot * Vector3.FORWARD * player.mass * 3000) -- player.mass is 100

    player.groundFriction = 0
    SOUND:Play()

end

function OnExecute(ability)
    TRIGGER.collision = Collision.FORCE_ON
end

function OnRecovery(ability)
    --ability.owner:ResetVelocity()
    ability.owner.groundFriction = 8
    TRIGGER.collision = Collision.FORCE_OFF
end

function OnReady(ability)
    --ability.owner.maxJumpCount = 1
end

function OnBeginOverlap(trigger, other)
    -- Only damage enemy players
    if KICK_ABILITY.owner and other:IsA("Player") and other.team ~= KICK_ABILITY.owner.team then
        KICK_ABILITY.owner:ResetVelocity()
        local dmg = Damage.New(-1)
        dmg.sourceAbility = KICK_ABILITY
        dmg.sourcePlayer = KICK_ABILITY.owner
        other:ApplyDamage(dmg)
        World.SpawnAsset(HIT_EFFECT, {position = TRIGGER:GetWorldPosition() })
    end
end

function OnEquipped(equipment, player)   
    BindingEVT = player.bindingPressedEvent:Connect(OnBindingPressed)
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
KICK_ABILITY.castEvent:Connect(OnCast)
KICK_ABILITY.executeEvent:Connect(OnExecute)
KICK_ABILITY.recoveryEvent:Connect(OnRecovery)
KICK_ABILITY.readyEvent:Connect(OnReady)
TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
WEAPON.equippedEvent:Connect(OnEquipped)
WEAPON.unequippedEvent:Connect(function() 
    if BindingEVT then 
        BindingEVT:Disconnect()
        BindingEVT = nil
    end

end)


function OnCastAir(ability)
    
    local lookRotation = ability.owner:GetLookWorldRotation()
    local rot = Rotation.New(0, 0, lookRotation.z)
    ability.owner:SetWorldRotation(rot)

    SOUND:Play()
end

function OnExecuteAir(ability)
    TRIGGER_AIR.collision = Collision.FORCE_ON
end

function OnRecoveryAir(ability)
    TRIGGER_AIR.collision = Collision.FORCE_OFF
end

function OnReadyAir(ability)
    --ability.owner.maxJumpCount = 1
end

function OnBeginOverlapAir(trigger, other)
    -- Only damage enemy players
    if other:IsA("Player") and other.team ~= KICK_ABILITY.owner.team then
        local dmg = Damage.New(-1)
        dmg.sourceAbility = KICK_AIR_ABILITY
        dmg.sourcePlayer = KICK_AIR_ABILITY.owner
        other:ApplyDamage(dmg)
        World.SpawnAsset(HIT_EFFECT, {position = TRIGGER:GetWorldPosition() })
    end
end

TRIGGER_AIR.beginOverlapEvent:Connect(OnBeginOverlap)
KICK_AIR_ABILITY.castEvent:Connect(OnCastAir)
KICK_AIR_ABILITY.executeEvent:Connect(OnExecuteAir)
KICK_AIR_ABILITY.recoveryEvent:Connect(OnRecoveryAir)
KICK_AIR_ABILITY.readyEvent:Connect(OnReadyAir)

