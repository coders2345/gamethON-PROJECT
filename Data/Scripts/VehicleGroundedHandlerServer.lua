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

-- Internal custom properties
local VEHICLE = script:FindAncestorByType('Vehicle')
if not VEHICLE:IsA('Vehicle') then
    error(script.name .. " should be part of Vehicle object hierarchy.")
end

-- User exposed cutom property
local FLIP_ON_UPSIDE_DOWN = script:GetCustomProperty("FlipOnUpsideDown")
local FLIP_SPEED_THRESHOLD = script:GetCustomProperty("FlipSpeedThreshold")
local FLIP_DELAY = script:GetCustomProperty("FlipDelay")
local RAYCAST_START_UP_OFFSET = script:GetCustomProperty("RaycastStartUpOffset")
local RAYCAST_END_UP_OFFSET = script:GetCustomProperty("RaycastEndUpOffset")
local DEBUG = script:GetCustomProperty("Debug")

-- Constant variables
local FLIP_COOLDOWN = 1

-- Internal variables
local lastFlipTime = time()
local delayFlipTask = nil

local isGrounded = false

function Tick()
    if not Object.IsValid(VEHICLE) then return end

    if time() - lastFlipTime > FLIP_COOLDOWN and VEHICLE:GetVelocity().size < FLIP_SPEED_THRESHOLD then
        local currRot = VEHICLE:GetWorldRotation()
        local targetRot = Rotation.New(180, currRot.y, currRot.z)
        local difference = currRot - targetRot
        local size = Vector3.New(difference.x, difference.y, difference.z).size
        
        if size > 180 then
            size = 360 - size
        end

        if size <= 90 then
            if delayFlipTask == nil then
                Task.Spawn(VehicleFlip, FLIP_DELAY)
            end
        else
            if delayFlipTask then
                delayFlipTask:Cancel()
            end
            delayFlipTask = nil
        end
    end

    local rayStart = VEHICLE:GetWorldTransform():TransformPosition(Vector3.UP * RAYCAST_START_UP_OFFSET)
    local rayEnd = VEHICLE:GetWorldTransform():TransformPosition(Vector3.UP * RAYCAST_END_UP_OFFSET)

    local result = World.Raycast(rayStart, rayEnd)
    
    isGrounded = result ~= nil

    if DEBUG then
        CoreDebug.DrawLine(rayStart, rayEnd, {thickness = 5, duration = 1})
        if result then
            local color = Color.GREEN
            if result.other == VEHICLE then
                color = Color.RED
            end
            CoreDebug.DrawSphere(result:GetImpactPosition(), 5, {color = color, duration = 1})
        end
    end

    VEHICLE.serverUserData.isGrounded = isGrounded
end

function VehicleFlip()
    VEHICLE:AddImpulse(Vector3.UP * VEHICLE.mass * 0.15)

    local currentRotation = VEHICLE:GetWorldRotation()
    VEHICLE:SetWorldRotation(Rotation.New(0, 0, currentRotation.z))

    lastFlipTime = time()
    delayFlipTask = nil
end