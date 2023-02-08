--[[
Copyright 2021 Manticore Games, Inc.

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
    This script raycasts uses box collisions of the vehicle to detect
    obstacles and play damage effects.
--]]

-- Internal custom properties
local VEHICLE = script:FindAncestorByType('Vehicle')
if not VEHICLE:IsA('Vehicle') then
    error(script.name .. " should be part of Vehicle object hierarchy.")
end

-- User exposed external properties
local COLLISION_BOXES = script:GetCustomProperty("CollisionBoxes"):WaitForObject()
local SPEED_DAMAGE_THRESHOLD = script:GetCustomProperty("SpeedDamageThreshold")
local DAMAGE_EFFECT_TEMPLATE = script:GetCustomProperty("DamageEffectTemplate")
local MAX_RENDER_DISTANCE = script:GetCustomProperty("MaxRenderDistance")
local DEBUG = script:GetCustomProperty("Debug")

-- Constant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()
local DAMAGE_COOLDOWN = 1

-- Internal variables
local currentPosition = Vector3.New()
local lastSpeed = 0
local boxDamageTimes = {}
local lastDamageTime = time()

function Tick(deltaTime)
    if not Object.IsValid(VEHICLE) then return end
    if not VEHICLE.driver then return end

    if LOCAL_PLAYER ~= VEHICLE.driver then
        if (LOCAL_PLAYER:GetWorldPosition() - VEHICLE:GetWorldPosition()).size > MAX_RENDER_DISTANCE then
            return
        end
    end
    
    -- Wait for a while before car can do more damage effect
    if time() - lastDamageTime < DAMAGE_COOLDOWN then return end

    local speed = VEHICLE:GetVelocity().size

    -- Only consider showing damage effect 
    -- if the vehicle moved past the speed threshold
    if lastSpeed - speed > SPEED_DAMAGE_THRESHOLD then
        CheckDamage(COLLISION_BOXES)
    end

    if DEBUG then
        DebugRays(COLLISION_BOXES)
    end

    lastSpeed = speed

    -- Check for damage impact every frame
    Task.Wait(deltaTime)
end

function CheckDamage()
    for _, box in ipairs(COLLISION_BOXES:GetChildren()) do
        local ray1Start, ray1End, ray2Start, ray2End = GetBoxPoints(box)
        local result1 = World.Raycast(ray1Start, ray1End, {ignorePlayers = true})
        local result2 = World.Raycast(ray2Start, ray2End, {ignorePlayers = true})
        
        if result1 and result2 and result1.other ~= VEHICLE and result2.other ~= VEHICLE then
            SpawnDamageEffect(box:GetWorldPosition())
            break
        elseif result1 and result1.other ~= VEHICLE then
            SpawnDamageEffect(result1:GetImpactPosition())
            break
        elseif result2 and result2.other ~= VEHICLE then
            SpawnDamageEffect(result2:GetImpactPosition())
            break
        end
    end
end

function DebugRays()
    for _, box in ipairs(COLLISION_BOXES:GetChildren()) do
        local ray1Start, ray1End, ray2Start, ray2End = GetBoxPoints(box)

        CoreDebug.DrawLine(ray1Start, ray1End, {thickness = 5})
        CoreDebug.DrawLine(ray2Start, ray2End, {thickness = 5})
    end
end

function GetBoxPoints(box)
    local bottomLeftBack, upRightFront, bottomRightBack, upLeftFront
    local pos = box:GetWorldPosition()
    local transform = box:GetWorldTransform()
    local scale = box:GetScale() * 50

    local fwdVect = transform:GetForwardVector()
    local rVect = transform:GetRightVector()
    local uVect =transform:GetUpVector()

    bottomLeftBack =    pos - fwdVect * scale.x - rVect * scale.y - uVect * scale.z
    bottomRightBack =   pos - fwdVect * scale.x + rVect * scale.y - uVect * scale.z
    upRightFront =      pos + fwdVect * scale.x + rVect * scale.y + uVect * scale.z
    upLeftFront =       pos + fwdVect * scale.x - rVect * scale.y + uVect * scale.z

    return bottomLeftBack, upRightFront, bottomRightBack, upLeftFront
end

function SpawnDamageEffect(spawnPos)
    if DAMAGE_EFFECT_TEMPLATE then
        World.SpawnAsset(DAMAGE_EFFECT_TEMPLATE, {position = spawnPos})
    end
    lastDamageTime = time()
end

for _, child in ipairs(COLLISION_BOXES:GetChildren()) do
    child.visibility = Visibility.FORCE_OFF
end