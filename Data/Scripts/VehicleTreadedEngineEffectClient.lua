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
    Plays engine effects for the vehicle.
    Uses engine rpm information from clientUserData.
--]]

-- Internal custom properties
local VEHICLE = script:FindAncestorByType('Vehicle')
if not VEHICLE:IsA('Vehicle') then
    error(script.name .. " should be part of Vehicle object hierarchy.")
end

-- User exposed cutom property
local ENGINE_SOUND = script:GetCustomProperty("EngineSound"):WaitForObject()
local MIN_ENGINE_PITCH = script:GetCustomProperty("MinEnginePitch")
local MAX_ENGINE_PITCH = script:GetCustomProperty("MaxEnginePitch")
local TREAD_SOUND = script:GetCustomProperty("TreadSound"):WaitForObject()

-- Internal variables
local isAccelerating = false

function Tick()
    if not Object.IsValid(VEHICLE) then return end
    if not VEHICLE.driver then return end

    -- Gets the engine information if it exists from clientUserData
    local engineRPM = VEHICLE.clientUserData.engineRPM
    local minEngineRPM = VEHICLE.clientUserData.minEngineRPM
    local maxEngineRPM = VEHICLE.clientUserData.maxEngineRPM

    -- Update engine sound pitch based on current engine rpm
    if engineRPM and minEngineRPM and maxEngineRPM then
        ENGINE_SOUND.pitch = CoreMath.Lerp(MIN_ENGINE_PITCH, MAX_ENGINE_PITCH, 
                            (engineRPM - minEngineRPM) / (maxEngineRPM - minEngineRPM))
    else
        ENGINE_SOUND.pitch = 0
    end

    if isAccelerating ~= VEHICLE.isAccelerating then
        if VEHICLE.isAccelerating then
            TREAD_SOUND:Play()
        else
            TREAD_SOUND:Stop()
        end
        isAccelerating = VEHICLE.isAccelerating
    end
end

function OnDriverEntered(vehicle, player)
    if not Object.IsValid(VEHICLE) then return end
    ENGINE_SOUND:Play()
end

function OnDriverExited(vehicle, player)
    if not Object.IsValid(VEHICLE) then return end
    if Object.IsValid(ENGINE_SOUND) then
        ENGINE_SOUND:Stop()
    end
end

--Initialize
VEHICLE.driverEnteredEvent:Connect(OnDriverEntered)
VEHICLE.driverExitedEvent:Connect(OnDriverExited)

if VEHICLE.driver then
    ENGINE_SOUND:Play()
end