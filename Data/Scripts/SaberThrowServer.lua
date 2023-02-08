-- Author: Ooccoo - (https://www.coregames.com/user/a136c0d1d9454d539c9932354198fc29)
-- Date: 04/02/2021
-- Version: 0.0.1
--===========================================================================================

-- Module dependencies
local MODULE = require(script:GetCustomProperty("ModuleManager"))
function COMBAT()
	return MODULE:Get("godMode.Combat.Wrap")
end

function POWER()
    while not _G["META_Power"] do Task.Wait() end
	return _G["META_Power"]
end

while not _G.SpawnAsset do
    Task.Wait()
end

local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local SpecialAbility = script:GetCustomProperty("SpecialAbility"):WaitForObject()
local ProjectileSpeed = script:GetCustomProperty("ProjectileSpeed")
local DEFAULT_DamageAmount = script:GetCustomProperty("DamageAmount")
local DEFAULT_DamageRadius = script:GetCustomProperty("DamageRadius")
local DEFAULT_TargetingRange = script:GetCustomProperty("TargetingRange")
local TargetTemplate = script:GetCustomProperty("TargetTemplate")
local ProjectileTemplate = script:GetCustomProperty("ProjectileTemplate")
local ImpactTemplate = script:GetCustomProperty("ImpactTemplate")
local PowerCost = script:GetCustomProperty("PowerCost")

local HOMING_ACCELERATION = 30000
local EventListeners = {}
local CurrentTarget = nil
local CurrentProjectile = nil
local MoveTarget = false
local ThrowTimerTask = nil

function OnProjectileImpact(projectile, other, hitResult)
    --print(other.name)
    if not projectile.serverUserData.isReturning and not other:IsA("Player") then 
        ThrowTimerTask:Cancel()
        ThrowTimerTask = nil
        MoveTarget = false 
        --projectile.piercesRemaining = 100
        projectile.serverUserData.isReturning = true

        CurrentTarget:AttachToPlayer(SpecialAbility.owner, "right_prop")
        _G.SpawnAsset(ImpactTemplate, {position = hitResult:GetImpactPosition()})
    end

	if SpecialAbility:GetCurrentPhase() == AbilityPhase.READY then return end

	if not Object.IsValid(SpecialAbility) or not SpecialAbility.owner or 
    not Object.IsValid(SpecialAbility.owner) or not other:IsA("Player") or other == SpecialAbility.owner then
		return
	end

	_G.SpawnAsset(ImpactTemplate, {position = other:GetWorldPosition()})

    local dmg = Damage.New()
    local player = SpecialAbility.owner
    dmg.amount = DEFAULT_DamageAmount
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = SpecialAbility.owner
    dmg.sourceAbility = SpecialAbility

    local attackData = {
        object = other,
        damage = dmg,
        source = dmg.sourcePlayer,
        position = other:GetWorldPosition(),
        rotation = other:GetWorldRotation(),
        tags = {}
    }
    
    COMBAT().ApplyDamage(attackData)
end

function OnLifespanEnded(thisProjectile)
	Reset(false)
end

function OnSpecialAbilityCast(thisAbility)
    if not POWER().CheckPower(thisAbility.owner, PowerCost) then
        thisAbility:Interrupt()
    end
end

function OnSpecialAbilityExecute(thisAbility)
	POWER().RemovePower(thisAbility.owner, PowerCost)
    Reset(true)
	-- Spawn a new target object where the camera is looking
	local viewRotation = thisAbility.owner:GetViewWorldRotation()
	local viewPosition = thisAbility.owner:GetViewWorldPosition()
	local targetingRange = 100000

	local endPoint = viewPosition + (viewRotation * Vector3.FORWARD * targetingRange)
	local hitResult = World.Raycast(viewPosition, endPoint, {ignoreTeams = thisAbility.owner.team})

	if hitResult then
		endPoint = hitResult:GetImpactPosition()
	end
	
	CurrentTarget = _G.SpawnAsset(TargetTemplate)

	-- Spawn a new projectile
	local playerPosition = thisAbility.owner:GetWorldPosition()
	local playerRotation = thisAbility.owner:GetLookWorldRotation()
	local forwardVector = playerRotation * Vector3.FORWARD
	local spawnPosition = playerPosition + (forwardVector * 20)
	spawnPosition.z = spawnPosition.z + 50

	local differenceVector = endPoint - spawnPosition
	local directionVector = differenceVector:GetNormalized()
	
	CurrentProjectile = Projectile.Spawn(ProjectileTemplate, spawnPosition, directionVector)
	--local distanceVector = CurrentTarget:GetWorldPosition() - CurrentProjectile:GetWorldPosition()

	CurrentProjectile.owner = thisAbility.owner
	CurrentProjectile.speed = ProjectileSpeed
	CurrentProjectile.lifeSpan = 0 --distanceVector.size / ProjectileSpeed + 1.5
	CurrentProjectile.capsuleLength = 150
	CurrentProjectile.capsuleRadius = 50
	CurrentProjectile.gravityScale = 0
	CurrentProjectile.homingAcceleration = HOMING_ACCELERATION
    --CurrentProjectile.bouncesRemaining = 10
    CurrentProjectile.piercesRemaining = 100
    CurrentProjectile.shouldDieOnImpact = false

    ThrowTimerTask = Task.Spawn(function ()
        if not Object.IsValid(CurrentProjectile) then return end 
        CurrentProjectile.piercesRemaining = 100
        CurrentProjectile.serverUserData.isReturning = true
        MoveTarget = false

        CurrentTarget:AttachToPlayer(SpecialAbility.owner, "right_prop")
        ThrowTimerTask = nil
    end, DEFAULT_TargetingRange/ProjectileSpeed)

	EventListeners["impactEvent"] = CurrentProjectile.impactEvent:Connect(OnProjectileImpact)
	EventListeners["bindingPressedEvent"] = thisAbility.owner.bindingPressedEvent:Connect(OnBindingPressed)
	EventListeners["bindingReleasedEvent"] = thisAbility.owner.bindingReleasedEvent:Connect(OnBindingReleased)
	EventListeners["lifeSpanEndedEvent"] = CurrentProjectile.lifeSpanEndedEvent:Connect(OnLifespanEnded)
end

function OnSpecialAbilityRecover(thisAbility)
	if not CurrentProjectile or not Object.IsValid(CurrentProjectile) then
        SpecialAbility:AdvancePhase()
    end
end

function SetCooldownOverride(value)
	SpecialAbility:SetNetworkedCustomProperty("CooldownOverride", value)
end

function OnSpecialAbilityCooldown(thisAbility)
	local Cooldown = 5
	
	SetCooldownOverride(Cooldown)
	
	Task.Spawn(function ()
		if Object.IsValid(thisAbility) and thisAbility:GetCurrentPhase() == AbilityPhase.COOLDOWN then
			thisAbility:AdvancePhase()
		end
	end, Cooldown)
end

function OnBindingPressed(player, binding)
	if binding == "ability_primary" then
        MoveTarget = true
    elseif binding == "ability_secondary" then
        if ThrowTimerTask then
            ThrowTimerTask:Cancel()
            ThrowTimerTask = nil
        end
        MoveTarget = false 
        if Object.IsValid(CurrentProjectile) then
            CurrentProjectile.serverUserData.isReturning = true
            CurrentTarget:AttachToPlayer(SpecialAbility.owner, "right_prop")
        end
	end
end

function OnBindingReleased(player, binding)
	if binding == "ability_secondary" then
		MoveTarget = false
	end
end

function Reset(hardReset)
	if EventListeners["impactEvent"] then
		EventListeners["impactEvent"]:Disconnect()
		EventListeners["impactEvent"] = nil
	end

	if EventListeners["bindingPressedEvent"] then
		EventListeners["bindingPressedEvent"]:Disconnect()
		EventListeners["bindingPressedEvent"] = nil
	end

	if EventListeners["bindingReleasedEvent"] then
		EventListeners["bindingReleasedEvent"]:Disconnect()
		EventListeners["bindingReleasedEvent"] = nil
	end

	if EventListeners["lifeSpanEndedEvent"] then
		EventListeners["lifeSpanEndedEvent"]:Disconnect()
		EventListeners["lifeSpanEndedEvent"] = nil
	end

	if Object.IsValid(CurrentProjectile) and hardReset then
		CurrentProjectile:Destroy()
	end

    if Object.IsValid(SpecialAbility) and SpecialAbility:GetCurrentPhase() == AbilityPhase.RECOVERY then
        SpecialAbility:AdvancePhase() 
    end

	if Object.IsValid(CurrentTarget) then
		CurrentTarget:Destroy()
	end

    if ThrowTimerTask then
        ThrowTimerTask:Cancel()
        ThrowTimerTask = nil
    end

	MoveTarget = false
end

function OnPlayerDied(player, _)
	Reset(true)
end

function OnPlayerRespawn(player)
	Reset(false)
end

function OnEquip(equipment, player)
	table.insert(EventListeners, player.diedEvent:Connect(OnPlayerDied))
	table.insert(EventListeners, player.spawnedEvent:Connect(OnPlayerRespawn))
    table.insert(EventListeners, SpecialAbility.recoveryEvent:Connect( OnSpecialAbilityRecover ))
	--table.insert(EventListeners, SpecialAbility.cooldownEvent:Connect( OnSpecialAbilityCooldown ))
    table.insert(EventListeners, SpecialAbility.castEvent:Connect(OnSpecialAbilityCast))
    table.insert(EventListeners, SpecialAbility.executeEvent:Connect(OnSpecialAbilityExecute))
end

function OnUnequip(equipment, player)
	for _, listener in pairs(EventListeners) do
		listener:Disconnect()
	end
	EventListeners = {}
	Reset(true)
end

Equipment.equippedEvent:Connect(OnEquip)
Equipment.unequippedEvent:Connect(OnUnequip)

function Tick(deltaTime)
	if Object.IsValid(CurrentProjectile) and SpecialAbility.owner 
	and Object.IsValid(SpecialAbility.owner) then
		if CurrentProjectile.serverUserData.isReturning then
            CurrentProjectile.homingTarget = CurrentTarget
            CurrentProjectile.homingAcceleration = 40000
			CurrentProjectile.drag = 10

            local distanceVector = SpecialAbility.owner:GetWorldPosition() - CurrentProjectile:GetWorldPosition()
            if distanceVector.size < 50 then
                Reset(true)
            end
        elseif MoveTarget and CurrentTarget and Object.IsValid(CurrentTarget) then
			local viewRotation = CurrentProjectile.owner:GetViewWorldRotation()
			local viewPosition = CurrentProjectile.owner:GetViewWorldPosition()
			local targetingRange = DEFAULT_TargetingRange
			local projectileDistance = (CurrentProjectile:GetWorldPosition() - viewPosition).size
			targetingRange = math.min(targetingRange, projectileDistance + 1000)
			local endPoint = viewPosition + (viewRotation * Vector3.FORWARD * targetingRange)
			local hitResult = World.Raycast(viewPosition, endPoint, {ignoreTeams = SpecialAbility.owner.team})

			--[[if hitResult then
				endPoint = hitResult:GetImpactPosition()
			end]]
			CurrentTarget:SetWorldPosition(endPoint)

			CurrentProjectile.homingTarget = CurrentTarget
			CurrentProjectile.homingAcceleration = HOMING_ACCELERATION
			CurrentProjectile.drag = 10
		else
			-- Disable homing
			CurrentProjectile.homingTarget = nil
			CurrentProjectile.homingAcceleration = 0
			CurrentProjectile.speed = ProjectileSpeed
			CurrentProjectile.drag = -0.1
		end
	end
end
