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
------------------------------------------------------------------------------------------------------------------------
-- Meta Achievements Retention Server
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/5/29
-- Version 0.1.0-CC
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
-- REQUIRES
------------------------------------------------------------------------------------------------------------------------
while not _G.META_ACHIEVEMENTS do
    Task.Wait()
end
local API = _G.META_ACHIEVEMENTS
------------------------------------------------------------------------------------------------------------------------
-- CUSTOM PROPERTIES
------------------------------------------------------------------------------------------------------------------------
local isEnabled = script:GetCustomProperty("Enabled")
local ACHIEVEMENT_ID = API.GetAchievementID(script)
------------------------------------------------------------------------------------------------------------------------
-- ERROR HANDLING
------------------------------------------------------------------------------------------------------------------------
if not isEnabled then
    return
end

if not ACHIEVEMENT_ID then
    warn("Achievement ID Missing, Please Make Sure The Trigger Has an Achievement ID")
    return
end

if ACHIEVEMENT_ID and not API.GetAchievementInfo(ACHIEVEMENT_ID) then
    warn("Invalid ID:" .. ACHIEVEMENT_ID .. " Please check this ID is valid")
    return
end

------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Object trigger
--@params Object other
local function OnPlayerJoined(player)
    local timeTbl = player:GetPrivateNetworkedData(API.CONSTANT_KEYS.TIME_KEY)
    if Object.IsValid(player) and timeTbl.shouldReset then
        API.SetProgress(player, ACHIEVEMENT_ID, API.GetAchievementRequired(ACHIEVEMENT_ID), true)
    end
end

------------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

function Init()
    API.ConnectPlayerJoined(OnPlayerJoined)
end

------------------------------------------------------------------------------------------------------------------------
-- INITIALIZATION
------------------------------------------------------------------------------------------------------------------------

Init()
