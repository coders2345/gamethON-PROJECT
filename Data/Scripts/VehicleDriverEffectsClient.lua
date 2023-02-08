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
local ENTER_SOUND_TEMPLATE = script:GetCustomProperty("EnterSoundTemplate")
local EXIT_SOUND_TEMPLATE = script:GetCustomProperty("ExitSoundTemplate")

-- Constant variables
local DEFAULT_LIFESPAN = 1.5

function OnDriverEntered(vehicle, player)
    if not Object.IsValid(VEHICLE) then return end
    SpawnTemplate(ENTER_SOUND_TEMPLATE)
end

function OnDriverExited(vehicle, player)
    if not Object.IsValid(VEHICLE) then return end
    SpawnTemplate(EXIT_SOUND_TEMPLATE)
end

function SpawnTemplate(template)
    if template then
        local instance = World.SpawnAsset(template, {parent = VEHICLE})
        if instance.lifeSpan == 0 then
            instance.lifeSpan = DEFAULT_LIFESPAN
        end
    end
end

--Initialize
VEHICLE.driverEnteredEvent:Connect(OnDriverEntered)
VEHICLE.driverExitedEvent:Connect(OnDriverExited)