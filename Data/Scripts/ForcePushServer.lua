local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local SpecialAbility = script:GetCustomProperty("SpecialAbility"):WaitForObject()
local ForcePushEffect = script:GetCustomProperty("ForcePushEffect")
local PowerCost = script:GetCustomProperty("PowerCost")

function POWER()
    while not _G["META_Power"] do Task.Wait() end
	return _G["META_Power"]
end

local AttackRadius = 575
local DotMinimum = 0.96
local ImpulseAmount = 200000

local EventListeners = {}

function OnSpecialAbilityCast(thisAbility)
    if not POWER().CheckPower(thisAbility.owner, PowerCost) then
        thisAbility:Interrupt()
    end
end

function OnSpecialAbilityExecute(thisAbility)
    local playerRotation = thisAbility.owner:GetLookWorldRotation()
	local playerPosition = thisAbility.owner:GetWorldPosition()
    local facingDirection = playerRotation * Vector3.FORWARD
    local spherePosition = playerPosition + (facingDirection * (AttackRadius+30))
    local dotPosition = playerPosition - (facingDirection * 100)

    local impulseDirection = Vector3.New(facingDirection)
    if impulseDirection.z < 0.5 then
        impulseDirection.z = 0.5
    end
    local impulseVector = impulseDirection * ImpulseAmount

    _G.SpawnAsset(ForcePushEffect, {position=playerPosition+(facingDirection*130), rotation=playerRotation})

    --CoreDebug.DrawSphere(spherePosition, AttackRadius, {duration=3})
    local hitPlayer = false
    for _, player in ipairs(Game.FindPlayersInSphere(spherePosition, AttackRadius, {ignorePlayers=thisAbility.owner})) do
        local dirVector = player:GetWorldPosition() - dotPosition
        dirVector = dirVector:GetNormalized()

        local dot = dirVector .. facingDirection
        --print(tostring(dot))
        if not player.isDead and dot >= DotMinimum then
            player:AddImpulse(impulseVector)
            hitPlayer = true
        end
    end

    if hitPlayer then
        POWER().RemovePower(thisAbility.owner, PowerCost)
    end
end

function OnEquip(equipment, player)
    table.insert(EventListeners, SpecialAbility.castEvent:Connect( OnSpecialAbilityCast ))
    table.insert(EventListeners, SpecialAbility.executeEvent:Connect( OnSpecialAbilityExecute ))
end

function OnUnequip(equipment, player)
	for _, listener in pairs(EventListeners) do
		listener:Disconnect()
	end
	EventListeners = {}
end

Equipment.equippedEvent:Connect(OnEquip)
Equipment.unequippedEvent:Connect(OnUnequip)