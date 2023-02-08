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
-- Meta Achievements System Data
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/6/13
-- Version 0.1.2-CC
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
-- REQUIRES
------------------------------------------------------------------------------------------------------------------------
while not _G.META_ACHIEVEMENTS do
    Task.Wait()
end
local API = _G.META_ACHIEVEMENTS

local ROOT = script.parent
------------------------------------------------------------------------------------------------------------------------
-- CUSTOM PROPERTIES
------------------------------------------------------------------------------------------------------------------------
local isEnabled = script:GetCustomProperty("Enabled")

local ACHIEVEMENT_ID = API.GetAchievementID(script)
local IS_TIME_BASED = script:GetCustomProperty("isTimeBased")
local SECONDS_TO_COMPLETE = script:GetCustomProperty("CompleteInSeconds")

local RESOURCE_NAME = script:GetCustomProperty("ResourceName")

--Types: RESOURCE, KILL, DAMAGE, WIN, ROUND, SCORE
local ACHIEVEMENT_TYPE = ROOT.name

local roundStartTime = time()
------------------------------------------------------------------------------------------------------------------------
-- ERROR HANDLING
------------------------------------------------------------------------------------------------------------------------
if not isEnabled then
    return
end

if not ACHIEVEMENT_TYPE then
    warn(ACHIEVEMENT_ID .. " missing Achievement Type make sure it has a parent")
    return
end

if not ACHIEVEMENT_ID then
    warn("Achievement ID Missing in " .. ACHIEVEMENT_TYPE .. " Please Check All Achievements Have A Unique ID")
    return
end

if ACHIEVEMENT_TYPE == API.ACHIEVEMENT_TYPES.RESOURCE and not RESOURCE_NAME then
    warn(ACHIEVEMENT_ID .. " type is RESOURCE but ResourceName is missing.")
    return
end

------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

local function IsValidTime()
    if IS_TIME_BASED then
        if roundStartTime + SECONDS_TO_COMPLETE > time() then
            return true
        else
            return false
        end
    else
        return true
    end
end

------------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Object player
--@params String resName
--@params Int resAmt
function OnResourceChanged(player, resName, resAmt)
    if not IsValidTime() then
        return
    end
    if string.lower(resName) == string.lower(RESOURCE_NAME) then
        API.SetProgress(player, ACHIEVEMENT_ID, resAmt)
    end
end

--@params Object player
--@params Object damage
function OnPlayerDied(player, damage)
    if not IsValidTime() then
        return
    end
    local source = damage.sourcePlayer
    player.serverUserData.ACH_killCredited = true
    API.AddProgress(source, ACHIEVEMENT_ID, 1)
end

--@params Object player
--@params Object damage
function OnPlayerDamaged(player, damage)
    if not IsValidTime() then
        return
    end
    local amount = damage.amount
    local source = damage.sourcePlayer
    API.AddProgress(source, ACHIEVEMENT_ID, CoreMath.Round(amount))
end

--@params Object player
--@params Object damage
function OnPlayerHealed(player, damage)
    if not IsValidTime() then
        return
    end
    local amount = damage.amount
    if amount > 0 then
        return
    end
    local source = damage.sourcePlayer
    API.AddProgress(source, ACHIEVEMENT_ID, CoreMath.Round(amount * -1))
end

--@params Table playersWon | key Object player | value Bool true if won
--@params Object damage
function OnRoundEnd(playersWon)
    if not IsValidTime() then
        return
    end
    for player, didWin in pairs(playersWon) do
        if ACHIEVEMENT_TYPE == API.ACHIEVEMENT_TYPES.WIN and didWin and Object.IsValid(player) then
            API.AddProgress(player, ACHIEVEMENT_ID, 1)
        elseif ACHIEVEMENT_TYPE == API.ACHIEVEMENT_TYPES.ROUND and Object.IsValid(player) then
            API.AddProgress(player, ACHIEVEMENT_ID, 1)
        end
    end
end

--@params Int team
function OnTeamScore(team)
    if not IsValidTime() then
        return
    end
    for _, player in ipairs(Game.GetPlayers()) do
        if player.team == team then
            API.AddProgress(player, ACHIEVEMENT_ID, 1)
        end
    end
end

------------------------------------------------------------------------------------------------------------------------
-- LISTENERS
------------------------------------------------------------------------------------------------------------------------

API.ConnectResource(OnResourceChanged)
API.ConnectDiedEvent(OnPlayerDied)
API.ConnectDamageEvent(OnPlayerDamaged)
API.ConnectDamageEvent(OnPlayerHealed)
API.ConnectRoundEnd(OnRoundEnd)
API.ConnectTeamScored(OnTeamScore)

if IS_TIME_BASED then
    Game.roundStartEvent:Connect(
        function()
            roundStartTime = time()
        end
    )
end
