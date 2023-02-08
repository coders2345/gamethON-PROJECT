local DashEquipment = script:GetCustomProperty("DashEquipment"):WaitForObject()
local PowerCost = script:GetCustomProperty("PowerCost")

function POWER()
    while not _G["META_Power"] do Task.Wait() end
	return _G["META_Power"]
end

local IMPULSE_STRENGTH = 250000
local COOLDOWN = 2

local cooldownTimer = 0

function OnBindingPressed(player, binding)
    if binding == "ability_extra_12" and POWER().CheckPower(player, PowerCost) then
        if time() < cooldownTimer then
            return
        end
        if not Object.IsValid(DashEquipment) then
            return
        end
        
        cooldownTimer = time() + COOLDOWN
        POWER().RemovePower(player, PowerCost)

        local directionVector -- unit vector

        if player.isGrounded then
            local velocity = player:GetVelocity()
            if velocity == Vector3.ZERO then -- the player is not moving
                local viewRotation = player:GetViewWorldRotation()
                directionVector = viewRotation * Vector3.FORWARD
            else
                directionVector = velocity / velocity.size
            end
        else
            directionVector = player:GetLookWorldRotation() * Vector3.FORWARD
        end

        -- Set state custom property
        --DashEquipment:SetNetworkedCustomProperty("State", 1)

        player:ActivateFlying()

        directionVector.z = 0 -- zero out the z so the player doesn't go up/down
        local impulse = directionVector * IMPULSE_STRENGTH
        player:AddImpulse(impulse)

        Task.Wait(0.5)
        if not Object.IsValid(player) then return end

        --DashEquipment:SetNetworkedCustomProperty("State", 0)
   
        player:ActivateWalking()
    end
end

function OnEquipped(thisEquipment, player)
    player.bindingPressedEvent:Connect(OnBindingPressed)
end

DashEquipment.equippedEvent:Connect(OnEquipped)