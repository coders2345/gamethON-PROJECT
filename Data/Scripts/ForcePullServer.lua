local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local SpecialAbility = script:GetCustomProperty("SpecialAbility"):WaitForObject()
local ForcePushEffect = script:GetCustomProperty("ForcePushEffect")
local PowerCost = script:GetCustomProperty("PowerCost")

function POWER()
    while not _G["META_Power"] do Task.Wait() end
	return _G["META_Power"]
end

local AttackRange = Vector2.New(500, 1800)
local PullVelocity = 2000

local EventListeners = {}
local TargetedPlayer 
local defaultPlayerSettings = {}

function ResetTargetedPlayer()
    if TargetedPlayer and Object.IsValid(TargetedPlayer) then
        TargetedPlayer.animationStance = defaultPlayerSettings.animationStance
        TargetedPlayer.movementControlMode = defaultPlayerSettings.movementControlMode
        TargetedPlayer.gravityScale = defaultPlayerSettings.gravityScale
        TargetedPlayer:DisableRagdoll()
        TargetedPlayer.serverUserData.isTrapped = false
        TargetedPlayer = nil
    end
end

function OnSpecialAbilityCast(thisAbility)
    if not POWER().CheckPower(thisAbility.owner, PowerCost) then
        thisAbility:Interrupt()
    end
end

function OnSpecialAbilityExecute(thisAbility)
    local targetData = thisAbility:GetTargetData()
    if targetData.hitPlayer and not targetData.hitPlayer.serverUserData.isTrapped and targetData.hitPlayer ~= thisAbility.owner then
        local diffVector = targetData.hitPlayer:GetWorldPosition() - thisAbility.owner:GetWorldPosition()
        
        if diffVector.size > AttackRange.x and diffVector.size < AttackRange.y then
            POWER().RemovePower(thisAbility.owner, PowerCost)
            TargetedPlayer = targetData.hitPlayer
            TargetedPlayer.serverUserData.isTrapped = true

            defaultPlayerSettings.animationStance = TargetedPlayer.animationStance
            defaultPlayerSettings.movementControlMode = TargetedPlayer.movementControlMode
            defaultPlayerSettings.gravityScale = TargetedPlayer.gravityScale

            TargetedPlayer.animationStance = "unarmed_stun_dizzy"
            TargetedPlayer.movementControlMode = MovementControlMode.NONE
            TargetedPlayer.gravityScale = 0
            TargetedPlayer:EnableRagdoll("right_hip", 0.3)
            TargetedPlayer:EnableRagdoll("left_hip", 0.3)

            local dirVector = diffVector:GetNormalized()
            local velocityVector = -dirVector * PullVelocity
            TargetedPlayer:SetVelocity(velocityVector)

            Task.Wait((diffVector.size-150) / PullVelocity)
            thisAbility:AdvancePhase()
        else
            thisAbility:AdvancePhase()
        end
    else
        thisAbility:AdvancePhase()
    end
end

function OnSpecialAbilityCooldown(thisAbility)
    ResetTargetedPlayer()
end

function OnSpecialAbilityInterrupted(thisAbility)
    
end

function OnEquip(equipment, player)
    table.insert(EventListeners, SpecialAbility.castEvent:Connect( OnSpecialAbilityCast ))
    table.insert(EventListeners, SpecialAbility.executeEvent:Connect( OnSpecialAbilityExecute ))
    table.insert(EventListeners, SpecialAbility.cooldownEvent:Connect( OnSpecialAbilityCooldown ))
    table.insert(EventListeners, SpecialAbility.interruptedEvent:Connect( OnSpecialAbilityInterrupted ))
end

function OnUnequip(equipment, player)
	for _, listener in pairs(EventListeners) do
		listener:Disconnect()
	end
	EventListeners = {}
    ResetTargetedPlayer()
end

Equipment.equippedEvent:Connect(OnEquip)
Equipment.unequippedEvent:Connect(OnUnequip)