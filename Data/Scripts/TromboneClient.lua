local Weapon = script:GetCustomProperty("Weapon"):WaitForObject()
local TromboneAbility = script:GetCustomProperty("TromboneAbility"):WaitForObject()
local TromboneGeo = script:GetCustomProperty("TromboneGeo"):WaitForObject()
local SoundPosition = script:GetCustomProperty("SoundPosition"):WaitForObject()

--References to the IK Bow
local Bow_Left_IK = script:GetCustomProperty("Bow_Left_IK"):WaitForObject()
local Bow_Right_IK = script:GetCustomProperty("Bow_Right_IK"):WaitForObject()
local Bow_Geo = script:GetCustomProperty("Bow_Geo"):WaitForObject()

-- Trombone IK Anchors
local LeftHand = script:GetCustomProperty("LeftHand"):WaitForObject()
local RightHand = script:GetCustomProperty("RightHand"):WaitForObject()

-- Audio
local TromboneSFX1 = script:GetCustomProperty("TromboneSFX1")
local TromboneSFX2 = script:GetCustomProperty("TromboneSFX2")
local TromboneSFX3 = script:GetCustomProperty("TromboneSFX3")
local TromboneSFX4 = script:GetCustomProperty("TromboneSFX4")
local TromboneSFX5 = script:GetCustomProperty("TromboneSFX5")
local TromboneSFX6 = script:GetCustomProperty("TromboneSFX6")
local TromboneSFX7 = script:GetCustomProperty("TromboneSFX7")
local TromboneSFX8 = script:GetCustomProperty("TromboneSFX8")

-- IK Positions
local Bow_Right_Position = Bow_Right_IK:GetPosition()
local Bow_Left_Position = Bow_Left_IK:GetPosition()
local Bow_Right_Rotation = Bow_Right_IK:GetRotation()
local Bow_Left_Rotation = Bow_Left_IK:GetRotation()

local LeftHand_Position = LeftHand:GetPosition()
local RightHand_Position = RightHand:GetPosition()
local LeftHand_Rotation = LeftHand:GetRotation()
local RightHand_Rotation = RightHand:GetRotation()

local EmoteBind = "ability_extra_20"
local isAlive = true
local LOCAL_PLAYER = Game.GetLocalPlayer()
local connectedEvents = {}

function OnAbilityReady(thisAbility, player)
    IK_Ready(player)
end

function OnAbilityCast(thisAbility, player)
    IK_Cast(player)
    World.SpawnAsset(TromboneSFX1, {parent = SoundPosition})
end

function OnAbilityExecute(thisAbility)
    
end

function OnAbilityCooldown(thisAbility)
    
end

function OnBindingPressed(player, bind)
    if bind == EmoteBind and TromboneAbility:GetCurrentPhase() == AbilityPhase.READY then
        TromboneAbility:Activate()
    end
end


function OnEquipped(thisEquipment, player)
    LeftHand:Deactivate(player)
    RightHand:Deactivate(player)
    TromboneGeo:AttachToPlayer(player, "head")
    TromboneGeo.visibility = Visibility.FORCE_OFF

    table.insert(connectedEvents, player.bindingPressedEvent:Connect(OnBindingPressed))
    table.insert(connectedEvents, Weapon.unequippedEvent:Connect(OnUnequipped))

    table.insert(connectedEvents, TromboneAbility.readyEvent:Connect(OnAbilityReady))
    table.insert(connectedEvents, TromboneAbility.castEvent:Connect(OnAbilityCast))
    table.insert(connectedEvents, TromboneAbility.executeEvent:Connect(OnAbilityExecute))
    table.insert(connectedEvents, TromboneAbility.cooldownEvent:Connect(OnAbilityCooldown))
end

function OnUnequipped(thisEquipment, player)
    for _, event in ipairs(connectedEvents) do
        event:Disconnect()
    end
    connectedEvents = {}

    for _, anchors in ipairs(player:GetIKAnchors()) do
        anchors:Deactivate()
    end

    TromboneGeo:Destroy()
end

while not Weapon.owner do
    Task.Wait()
end
Task.Wait(1)


function IK_Ready()
    TromboneGeo.visibility = Visibility.FORCE_OFF
    Bow_Geo.visibility = Visibility.FORCE_ON
    
    Bow_Left_IK:MoveTo(Bow_Left_Position,0,true)
    Bow_Right_IK:MoveTo(Bow_Right_Position,0,true)
    Bow_Left_IK:RotateTo(Bow_Left_Rotation,0,true)
    Bow_Right_IK:RotateTo(Bow_Right_Rotation,0,true)
end

function IK_Cast()
    Bow_Geo.visibility = Visibility.FORCE_OFF
    TromboneGeo.visibility = Visibility.FORCE_ON

    Bow_Left_IK:MoveTo(LeftHand_Position,0,true)
    Bow_Right_IK:MoveTo(RightHand_Position,0,true)
    Bow_Left_IK:RotateTo(LeftHand_Rotation,0,true)
    Bow_Right_IK:RotateTo(RightHand_Rotation,0,true)
end

function Tick()
    if Object.IsValid(TromboneAbility) and Object.IsValid(TromboneAbility.owner) then
        if TromboneAbility.owner.isDead and isAlive then
            -- player just died
            isAlive = false
            for _, anchors in ipairs(TromboneAbility.owner:GetIKAnchors()) do
                anchors:Deactivate()
            end
        elseif not TromboneAbility.owner.isDead and not isAlive then
            -- player just respawned 
            isAlive = true
            LeftHand:Activate(TromboneAbility.owner)
            RightHand:Activate(TromboneAbility.owner)
        end
    --[[
        if TromboneAbility.owner == LOCAL_PLAYER then
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
        ]]--
    end
end

OnEquipped(Weapon, Weapon.owner)