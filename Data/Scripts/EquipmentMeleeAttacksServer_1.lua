--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This script uses the specified hitbox trigger on ability to damage enemy players on ability execute phase.
Each ability can have its own trigger (e.g. small attacks - front trigger, big attacks - wider trigger).
]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end


local BallSFX = EQUIPMENT:GetCustomProperty("BallSFX"):WaitForObject()
local PlayerSFX = EQUIPMENT:GetCustomProperty("PlayerSFX"):WaitForObject()
local HITSFX = EQUIPMENT:GetCustomProperty("HITSFX"):WaitForObject()
local ImPact = EQUIPMENT:GetCustomProperty("ImPact"):WaitForObject()

local PlayerImpact = EQUIPMENT:GetCustomProperty("PlayerImpact")
local SwingSound = EQUIPMENT:GetCustomProperty("SwingSound")
local BallImpact = EQUIPMENT:GetCustomProperty("BallImpact") 
-- Internal variables
local abilityList = {}
local overlapping = {}


local function Hit()
    HITSFX:Play()
    ImPact:Play()
end

-- nil Tick()
-- Checks the players within hitbox, and makes sure swipe effects stay at the player's location
function Tick()
    -- Check for the existence of the equipment or owner before running Tick
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(EQUIPMENT.owner) then return end
    if EQUIPMENT.owner.isDead then return end

    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.canAttack then
            if Object.IsValid(abilityInfo.hitBox) then
                for _, other in ipairs(abilityInfo.hitBox:GetOverlappingObjects()) do
                    if other:IsA("Player") then
                        Hit()
                        PlayerSFX:Play()
                        MeleeAttack(other, abilityInfo)
                    end
                end
                for _, other in pairs(overlapping) do
                    if other:IsA("CoreObject") and other.name == "Ball" then 
                        if (abilityInfo.ignoreList[other.id] ~= 1) then
                            Hit()
                            BallSFX:Play()
                            local direction = (other:GetWorldPosition() ) - (abilityInfo.hitBox:GetWorldPosition() + Vector3.UP * 100)
                            other:SetVelocity(other:GetVelocity() + (direction:GetNormalized() * 6000))
                            abilityInfo.ignoreList[other.id] = 1
                            return
                        end
                    end
                    if other:IsA("Vehicle") then 
                        if (abilityInfo.ignoreList[other.id] ~= 1) then
                           
                            CarAttack(other, abilityInfo)
                        end
                    end
                end
            end
        end
    end
end

-- nil MeleeAttack(Player)
-- Detect players within hitbox to apply damage
function MeleeAttack(player, abilityInfo)
    print("hello stars")
    if not Object.IsValid(player) then return end

    local ability = abilityInfo.ability
    if not Object.IsValid(ability) then return end
    if not Object.IsValid(ability.owner) then return end


    -- Ignore if the hitbox is overlapping with the owner
    if player == ability.owner then return end

    -- Ignore friendly attack
    if Teams.AreTeamsFriendly(player.team, ability.owner.team) then return end
    
    local starTarget = player
    if Object.IsValid(starTarget.serverUserData.hasStars) then
        --do nothing
    else
        local propStunStarsVFXTemplate = script:GetCustomProperty("StunStarsVFX")
        local stunStars = World.SpawnAsset(propStunStarsVFXTemplate)
        stunStars:AttachToPlayer(starTarget, "head")
        stunStars.lifeSpan = 2
        starTarget.serverUserData.hasStars = stunStars
        
    end

    -- Avoid hitting the same player multiple times in a single swing
    if (abilityInfo.ignoreList[player] ~= 1) then

        -- Creates new damage info at apply it to the enemy
        local damage = Damage.New(abilityInfo.damage)
        damage.sourcePlayer = ability.owner
        damage.sourceAbility = ability
        player:ApplyDamage(damage)
        

        abilityInfo.ignoreList[player] = 1
    end

    
end


function CarAttack(other, abilityInfo)
    local driver = other.driver 
    --other.maxSpeed = 1400
   

    if (abilityInfo.ignoreList[other.id] ~= 1) then
        --if driver and driver.team ~= EQUIPMENT.owner.team then
        --if true then
        if driver ~= EQUIPMENT.owner then
            Hit()
            if other:GetCustomProperty("StunStarsVFX") then  
                local propStunStarsVFX = other:GetCustomProperty("StunStarsVFX"):WaitForObject()
                propStunStarsVFX.visibility = Visibility.FORCE_ON
                Task.Spawn(function() 
                    if Object.IsValid(other) and other:GetCustomProperty("StunStarsVFX") then
                        local Stars = other:GetCustomProperty("StunStarsVFX"):WaitForObject()
                        Stars.visibility = Visibility.FORCE_OFF
                    end
                end,2)
            end
            PlayerSFX:Play()
            --other:SetVelocity(( (driver:GetWorldPosition()+Vector3.UP*100)-EQUIPMENT.owner:GetWorldPosition()  ):GetNormalized() *3000)
            other:SetVelocity(Vector3.New(100 - math.random(200), 100 - math.random(200), 1600))
            Events.Broadcast("RespawnVehicle",other)
            
            local starTarget = driver

            local stars = other:GetCustomProperty("StunStarsVFX"):WaitForObject()
            Task.Spawn(function() 
                stars.visibility = Visibility.FORCE_ON
                Task.Wait(2)
                stars.visibility = Visibility.FORCE_OFF
            end)
            
           
        end
        
    abilityInfo.ignoreList[other.id] = 1
    end
end

-- nil OnBeginOverlap(Trigger, Object)
-- Event when the hitbox hits a player
function OnBeginOverlap(trigger, other) 
    if other:IsA("Vehicle") then
        overlapping[other] = other
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.canAttack then
                CarAttack(other, abilityInfo)
            end
        end
        return 
    end 
    if other:IsA("CoreObject") and other.name == "Ball" then 
        overlapping[other] = other
    end
    if other:IsA("Player") then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.canAttack then
                MeleeAttack(other, abilityInfo)
            end
        end
    end
end
function EndOverlap(trigger, other) 
    if other:IsA("CoreObject") and other.name == "Ball" then 
        overlapping[other] = nil
    end
    if other:IsA("Vehicle") then
        overlapping[other] = nil
    end
    if other:IsA("Player") then
   
    end
end

-- nil OnEquipped()
-- Enables collision on player to make the hitbox collidable
function OnEquipped()
    Task.Wait(0.1)
    EQUIPMENT.collision = Collision.INHERIT
end

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.ability == ability then
            abilityInfo.canAttack = true
            abilityInfo.ignoreList = {}
        end
    end
end

-- nil ResetMelee(Ability)
-- Resets this scripts internal variables
function ResetMelee(ability)

    -- Forget anything we hit this swing
    if ability then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.ability == ability then
                abilityInfo.canAttack = false
                abilityInfo.ignoreList = {}
            end
        end
    else
        for _, abilityInfo in ipairs(abilityList) do
            abilityInfo.canAttack = false
            abilityInfo.ignoreList = {}
        end
    end
end

-- Initialize
local abilityDescendants = EQUIPMENT:FindDescendantsByType("Ability")
for _, ability in ipairs(abilityDescendants) do
    local hitBox = ability:GetCustomProperty("Hitbox")

    if hitBox then
        hitBox = ability:GetCustomProperty("Hitbox"):WaitForObject()
        hitBox.beginOverlapEvent:Connect(OnBeginOverlap)
        hitBox.endOverlapEvent:Connect(EndOverlap)
        ability.executeEvent:Connect(OnExecute)
        ability.cooldownEvent:Connect(ResetMelee)

        table.insert(abilityList, {
            ability = ability,
            damage = ability:GetCustomProperty("Damage"),
            hitBox = hitBox,
            canAttack = false,
            ignoreList = {}
        })
    end
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(ResetMelee)