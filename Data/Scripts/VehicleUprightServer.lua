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
local FALL_SPEED_LIMIT = script:GetCustomProperty("FallSpeedLimit")
local EXTRA_GRAVITY = script:GetCustomProperty("ExtraGravity")

function WrapAngle(x)
    return (x + 180) % 360 - 180
end

function Tick(dt)
    local player = VEHICLE.driver

    if player == nil then
        return
    end

    -- Only apply extra gravity when vehicle is in the air
    local isGrounded = VEHICLE.serverUserData.isGrounded
    if isGrounded then return end

    local vehicleForward = VEHICLE:GetWorldTransform():GetForwardVector()
    local flatForward = vehicleForward * Vector3.New(1,1,0)

    local currentRotation = Quaternion.New(VEHICLE:GetWorldRotation())
    local desiredRotation = Quaternion.New(Rotation.New(flatForward, Vector3.UP))

    local adjustment = (desiredRotation * (-currentRotation)):GetRotation()
    VEHICLE:SetAngularVelocity(-Vector3.New(WrapAngle(adjustment.x), WrapAngle(adjustment.y), WrapAngle(adjustment.z)) * 100 * dt)

    -- Apply extra gravity while in the air
    local velocity = VEHICLE:GetVelocity()
    velocity.z = velocity.z - EXTRA_GRAVITY * dt

    -- Limit how fast we can fall
    if velocity.z < -FALL_SPEED_LIMIT then
        velocity.z = -FALL_SPEED_LIMIT
    end

    VEHICLE:SetVelocity(velocity)
end


