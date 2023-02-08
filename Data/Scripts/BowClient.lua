local Weapon = script:GetCustomProperty("Weapon"):WaitForObject()
local ShootAbility = script:GetCustomProperty("ShootAbility"):WaitForObject()
local ArrowGeo = script:GetCustomProperty("ArrowGeo"):WaitForObject()
local Arrow_Pulled = script:GetCustomProperty("Arrow_Pulled"):WaitForObject()
local BowGeo = script:GetCustomProperty("BowGeo"):WaitForObject()
local RootGeo = script:GetCustomProperty("RootGeo"):WaitForObject()

-- String objects
local STRING = script:GetCustomProperty("STRING"):WaitForObject()
local Upper_String = STRING:GetCustomProperty("Upper_String"):WaitForObject()
local Upper_String_Pulled = STRING:GetCustomProperty("Upper_String_Pulled"):WaitForObject()
local Lower_String = STRING:GetCustomProperty("Lower_String"):WaitForObject()
local Lower_String_Pulled = STRING:GetCustomProperty("Lower_String_Pulled"):WaitForObject()

-- Bow limbs to be rotated
local UpperArmBase = BowGeo:GetCustomProperty("UpperArmBase"):WaitForObject()
local UpperArm1 = BowGeo:GetCustomProperty("UpperArm1"):WaitForObject()
local UpperArm2 = BowGeo:GetCustomProperty("UpperArm2"):WaitForObject()
local UpperArm3 = BowGeo:GetCustomProperty("UpperArm3"):WaitForObject()
local UpperArmRotation = BowGeo:GetCustomProperty("UpperArmRotation")
local LowerArmBase = BowGeo:GetCustomProperty("LowerArmBase"):WaitForObject()
local LowerArm1 = BowGeo:GetCustomProperty("LowerArm1"):WaitForObject()
local LowerArm2 = BowGeo:GetCustomProperty("LowerArm2"):WaitForObject()
local LowerArm3 = BowGeo:GetCustomProperty("LowerArm3"):WaitForObject()
local LowerArmRotation = BowGeo:GetCustomProperty("LowerArmRotation")

-- IK Anchors
local IK_Anchors = script:GetCustomProperty("IK_Anchors"):WaitForObject()
local LeftHand = IK_Anchors:GetCustomProperty("LeftHand"):WaitForObject()
local LeftDrawBack = IK_Anchors:GetCustomProperty("LeftDrawBack"):WaitForObject()
local RightHand = IK_Anchors:GetCustomProperty("RightHand"):WaitForObject()
local RightDrawBack = IK_Anchors:GetCustomProperty("RightDrawBack"):WaitForObject()

-- Weapon properties
local MinAimTime = Weapon:GetCustomProperty("MinAimTime")
local PullBackDuration = Weapon:GetCustomProperty("PullBackDuration")

-- Audio
local Audio = script:GetCustomProperty("Audio"):WaitForObject()
local PullSound = Audio:GetCustomProperty("PullSound"):WaitForObject()
local FullDrawSound = Audio:GetCustomProperty("FullDrawSound"):WaitForObject()

local ShootBind = "ability_primary"
local NextShoot = 0
local isAiming = false -- true when the player is holding down the ShootBind
local isFullDraw = false
local isAlive = true
local aimStartTime = nil
local AimOffsetTask
local LOCAL_PLAYER = Game.GetLocalPlayer()
local connectedEvents = {}

local LeftHand_POSITIONS = {
    Aim = LeftHand:GetPosition(),
    Aim_Rotation = LeftHand:GetRotation(),
    Aim_Offset = LeftHand:GetAimOffset(),
    Pulled = LeftDrawBack:GetPosition(),
    Pulled_Rotation = LeftDrawBack:GetRotation(),
    Pulled_Offset = LeftDrawBack:GetAimOffset()
}

local RightHand_POSITIONS = {
    Aim = RightHand:GetPosition(),
    Aim_Rotation = RightHand:GetRotation(),
    Aim_Offset = RightHand:GetAimOffset(),
    Pulled = RightDrawBack:GetPosition(),
    Pulled_Rotation = RightDrawBack:GetRotation(),
    Pulled_Offset = RightDrawBack:GetAimOffset()
}

local Arrow_POSITIONS = {
    Aim = ArrowGeo:GetPosition(),
    Pulled = Arrow_Pulled:GetPosition()
}

local UpperString_TRANSFORM = {
    Aim_Position = Upper_String:GetPosition(),
    Aim_Rotation = Upper_String:GetRotation(),
    Aim_Scale = Upper_String:GetScale(),
    Pulled_Position = Upper_String_Pulled:GetPosition(),
    Pulled_Rotation = Upper_String_Pulled:GetRotation(),
    Pulled_Scale = Upper_String_Pulled:GetScale()
}

local LowerString_TRANSFORM = {
    Aim_Position = Lower_String:GetPosition(),
    Aim_Rotation = Lower_String:GetRotation(),
    Aim_Scale = Lower_String:GetScale(),
    Pulled_Position = Lower_String_Pulled:GetPosition(),
    Pulled_Rotation = Lower_String_Pulled:GetRotation(),
    Pulled_Scale = Lower_String_Pulled:GetScale()
}

local function SpamPrevent()
    if time() > NextShoot then
        NextShoot = time() + MinAimTime
        return true
    else
        return false
    end
end

function OnAbilityReady(thisAbility)
    ArrowGeo:SetPosition(Arrow_POSITIONS.Aim)
    ArrowGeo.visibility = Visibility.INHERIT

    Upper_String:SetRotation(UpperString_TRANSFORM.Aim_Rotation)
    Upper_String:SetScale(UpperString_TRANSFORM.Aim_Scale)

    Lower_String:SetRotation(LowerString_TRANSFORM.Aim_Rotation)
    Lower_String:SetScale(LowerString_TRANSFORM.Aim_Scale)

    if AimOffsetTask then
        AimOffsetTask:Cancel()
    end
end

function OnAbilityCast(thisAbility)
    aimStartTime = time()
    isFullDraw = false

    ArrowGeo:SetPosition(Arrow_POSITIONS.Aim)
    ArrowGeo.visibility = Visibility.INHERIT
    
    LeftHand:MoveTo(LeftHand_POSITIONS.Pulled, PullBackDuration, true)
    LeftHand:RotateTo(LeftHand_POSITIONS.Pulled_Rotation, PullBackDuration, true)
    
    RightHand:MoveTo(RightHand_POSITIONS.Pulled, PullBackDuration, true)
    RightHand:RotateTo(RightHand_POSITIONS.Pulled_Rotation, PullBackDuration, true)

    -- Adding 0.1 to PullBackDuration to prevent the arrow from going through the player's hand
    ArrowGeo:MoveTo(Arrow_POSITIONS.Pulled, PullBackDuration+0.1, true)

    Upper_String:RotateTo(UpperString_TRANSFORM.Pulled_Rotation, PullBackDuration+0.1, true)
    Upper_String:ScaleTo(UpperString_TRANSFORM.Pulled_Scale, PullBackDuration+0.1, true)
    Upper_String:MoveTo(UpperString_TRANSFORM.Pulled_Position, PullBackDuration+0.1, true)
    Lower_String:RotateTo(LowerString_TRANSFORM.Pulled_Rotation, PullBackDuration+0.1, true)
    Lower_String:ScaleTo(LowerString_TRANSFORM.Pulled_Scale, PullBackDuration+0.1, true)
    Lower_String:MoveTo(LowerString_TRANSFORM.Pulled_Position, PullBackDuration+0.1, true)

    UpperArmBase:RotateTo(UpperArmRotation, PullBackDuration+0.1, true)
    UpperArm1:RotateTo(UpperArmRotation, PullBackDuration+0.1, true)
    UpperArm2:RotateTo(UpperArmRotation, PullBackDuration+0.1, true)
    UpperArm3:RotateTo(UpperArmRotation, PullBackDuration+0.1, true)
    LowerArmBase:RotateTo(LowerArmRotation, PullBackDuration+0.1, true)
    LowerArm1:RotateTo(LowerArmRotation, PullBackDuration+0.1, true)
    LowerArm2:RotateTo(LowerArmRotation, PullBackDuration+0.1, true)
    LowerArm3:RotateTo(LowerArmRotation, PullBackDuration+0.1, true)

    local targetOffsetRight = RightHand_POSITIONS.Pulled_Offset
    local targetOffsetleft = LeftHand_POSITIONS.Pulled_Offset
    local lerpStrength = 0.07 -- float between 0 and 1

    AimOffsetTask = Task.Spawn(function ()
        while RightHand:GetAimOffset() ~= targetOffsetRight do
            local rightOffset = Vector3.Lerp(RightHand:GetAimOffset(), targetOffsetRight, lerpStrength)
            local leftOffset = Vector3.Lerp(LeftHand:GetAimOffset(), targetOffsetleft, lerpStrength)
            LeftHand:SetAimOffset(leftOffset)
            RightHand:SetAimOffset(rightOffset)
            Task.Wait()
        end
    end)

    PullSound:Play()
end

function OnAbilityExecute(thisAbility)
    if AimOffsetTask then
        AimOffsetTask:Cancel()
    end

    aimStartTime = nil

    LeftHand:StopMove()
    RightHand:StopMove()
    PullSound:Stop()

    Upper_String:StopRotate()
    Lower_String:StopRotate()
    Upper_String:StopScale()
    Lower_String:StopScale()

    ArrowGeo.visibility = Visibility.FORCE_OFF

    Upper_String:SetRotation(UpperString_TRANSFORM.Aim_Rotation)
    Upper_String:SetScale(UpperString_TRANSFORM.Aim_Scale)
    Upper_String:SetPosition(UpperString_TRANSFORM.Aim_Position)
    Lower_String:SetRotation(LowerString_TRANSFORM.Aim_Rotation)
    Lower_String:SetScale(LowerString_TRANSFORM.Aim_Scale)
    Lower_String:SetPosition(LowerString_TRANSFORM.Aim_Position)

    UpperArmBase:SetRotation(Rotation.New(0,0,0))
    UpperArm1:SetRotation(Rotation.New(0,0,0))
    UpperArm2:SetRotation(Rotation.New(0,0,0))
    UpperArm3:SetRotation(Rotation.New(0,0,0))
    LowerArmBase:SetRotation(Rotation.New(0,0,0))
    LowerArm1:SetRotation(Rotation.New(0,0,0))
    LowerArm2:SetRotation(Rotation.New(0,0,0))
    LowerArm3:SetRotation(Rotation.New(0,0,0))
end

function OnAbilityCooldown(thisAbility)
    local targetOffsetRight = RightHand_POSITIONS.Aim_Offset
    local targetOffsetleft = LeftHand_POSITIONS.Aim_Offset
    local lerpStrength = 0.07 -- float between 0 and 1

    AimOffsetTask = Task.Spawn(function ()
        while RightHand:GetAimOffset() ~= targetOffsetRight do
            local rightOffset = Vector3.Lerp(RightHand:GetAimOffset(), targetOffsetRight, lerpStrength)
            local leftOffset = Vector3.Lerp(LeftHand:GetAimOffset(), targetOffsetleft, lerpStrength)
            LeftHand:SetAimOffset(leftOffset)
            RightHand:SetAimOffset(rightOffset)
            Task.Wait()
        end
    end)

    LeftHand:MoveTo(LeftHand_POSITIONS.Aim, 0.2, true)
    RightHand:MoveTo(RightHand_POSITIONS.Aim, 0.2, true)
    LeftHand:RotateTo(LeftHand_POSITIONS.Aim_Rotation, .2, true)
    RightHand:RotateTo(RightHand_POSITIONS.Aim_Rotation, .2, true)
    ArrowGeo:MoveTo(Arrow_POSITIONS.Aim, 0.2, true)
end

function OnBindingPressed(player, bind)
    if bind == ShootBind and ShootAbility:GetCurrentPhase() == AbilityPhase.READY then
    --and SpamPrevent() then
        isAiming = true
        Task.Wait(MinAimTime)

        if isAiming then
            ShootAbility:Activate()
        end        
    end
end

function OnBindingReleased(player, bind)
    if bind == ShootBind then
        isAiming = false
    
        if ShootAbility:GetCurrentPhase() == AbilityPhase.CAST then
            ShootAbility:AdvancePhase()
        end
    end
end

function OnEquipped(thisEquipment, player)
    IK_Anchors:AttachToPlayer(player, "neck")
    LeftHand:Activate(player)
    RightHand:Activate(player)

    RootGeo:AttachToPlayer(player, "left_prop")
    RootGeo.visibility = Visibility.INHERIT

    table.insert(connectedEvents, player.bindingPressedEvent:Connect(OnBindingPressed))
    table.insert(connectedEvents, player.bindingReleasedEvent:Connect(OnBindingReleased))
    table.insert(connectedEvents, Weapon.unequippedEvent:Connect(OnUnequipped))

    table.insert(connectedEvents, ShootAbility.readyEvent:Connect(OnAbilityReady))
    table.insert(connectedEvents, ShootAbility.castEvent:Connect(OnAbilityCast))
    table.insert(connectedEvents, ShootAbility.executeEvent:Connect(OnAbilityExecute))
    table.insert(connectedEvents, ShootAbility.cooldownEvent:Connect(OnAbilityCooldown))
end

function OnUnequipped(thisEquipment, player)
    for _, event in ipairs(connectedEvents) do
        event:Disconnect()
    end
    connectedEvents = {}

    for _, anchors in ipairs(player:GetIKAnchors()) do
        anchors:Deactivate()
    end

    RootGeo:Destroy()
end

while not Weapon.owner do
    Task.Wait()
end
Task.Wait(1)

function Tick()
    if Object.IsValid(ShootAbility) and Object.IsValid(ShootAbility.owner) then
        if ShootAbility.owner.isDead and isAlive then
            -- player just died
            isAlive = false
            for _, anchors in ipairs(ShootAbility.owner:GetIKAnchors()) do
                anchors:Deactivate()
            end
        elseif not ShootAbility.owner.isDead and not isAlive then
            -- player just respawned 
            isAlive = true
            LeftHand:Activate(ShootAbility.owner)
            RightHand:Activate(ShootAbility.owner)
        end

        if ShootAbility.owner == LOCAL_PLAYER then
            if aimStartTime then
                LOCAL_PLAYER.clientUserData.aimProgress = CoreMath.Clamp((time() - aimStartTime)/PullBackDuration )
                if LOCAL_PLAYER.clientUserData.aimProgress == 1 and not isFullDraw then
                    FullDrawSound:Play()
                    isFullDraw = true
                end
            else
                LOCAL_PLAYER.clientUserData.aimProgress = 0
            end
        end
    end
end

OnEquipped(Weapon, Weapon.owner)