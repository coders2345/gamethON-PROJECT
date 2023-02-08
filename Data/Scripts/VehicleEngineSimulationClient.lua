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
    Engine RPM simulation to support vfx and sfx.
    This script does not impact the vehicle behavior.

    The engineRPM, gear, and min/maxEngineRPM are saved into 
        vehicle clientUserData for other scripts to sync.
--]]

-- Internal custom properties
local VEHICLE = script:FindAncestorByType('Vehicle')
if not VEHICLE:IsA('Vehicle') then
    error(script.name .. " should be part of Vehicle object hierarchy.")
end

-- User exposed external properties
local WHEEL_RADIUS = script:GetCustomProperty("WheelRadius")
local MAX_ENGINE_RPM = script:GetCustomProperty("MaxEngineRPM")
local MIN_ENGINE_RPM = script:GetCustomProperty("MinEngineRPM")

-- Internal variables
local engineRPM = 0
local rpm = 0
local currentGear = 1
local gearRatios = {}

function Tick()
    if not Object.IsValid(VEHICLE) then return end
    if not VEHICLE.driver then return end

    local speed = VEHICLE:GetVelocity().size

    rpm = (speed * 60) / (WHEEL_RADIUS * 2 * math.pi)
    engineRPM = rpm * gearRatios[currentGear]

    ShiftGears()
    UpdateClientUserData()
end

function ShiftGears()
    if engineRPM >= MAX_ENGINE_RPM then
        for gear=1, #gearRatios, 1 do
            local gearRatio = gearRatios[gear]
            if rpm * gearRatio < MAX_ENGINE_RPM then
                currentGear = gear
                return
            end
        end
    elseif engineRPM <= MIN_ENGINE_RPM then
        for gear=#gearRatios, 1, -1 do
            local gearRatio = gearRatios[gear]
            if rpm * gearRatio > MIN_ENGINE_RPM then
                currentGear = gear
                return
            end
        end
    end
end

function UpdateClientUserData()
    if not Object.IsValid(VEHICLE) then return end

    VEHICLE.clientUserData.gear = currentGear
    VEHICLE.clientUserData.engineRPM = engineRPM
end

-- Initialize
-- Fill up gear ratio table using "GearRatio" properties in hierarchy
for key, value in pairs(script:GetCustomProperties()) do
    if string.find(key, "GearRatio") then
        local index = tonumber(CoreString.Trim(key, "GearRatio"))
        if index then
            gearRatios[index] = value
        end
    end
end

if #gearRatios == 0 then
    warn("No GearRatio properties was found. Add GearRatio1, GearRatio2, etc. properties on the script to customize gear ratios.")
    gearRatios[1] = 1
end

-- Update initial engine information
VEHICLE.clientUserData.minEngineRPM = MIN_ENGINE_RPM
VEHICLE.clientUserData.maxEngineRPM = MAX_ENGINE_RPM
UpdateClientUserData()