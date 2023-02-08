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
-- Meta Achievements Social Server
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
local CHAT_BASED = script:GetCustomProperty("ChatBased")
local CHAT_STRING = script:GetCustomProperty("ChatString")
local FRIENDS_ONLINE = script:GetCustomProperty("FriendOnline")
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

if FRIENDS_ONLINE and CHAT_BASED then
    warn(ACHIEVEMENT_ID .. " Has both ChatBased and FriendOnline enabled. Please select only one option.")
    return
end

------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Int team
local function OnReceiveMessage(player, params)
    local splitMessage = {CoreString.Split(string.lower(params.message))}
    if splitMessage[1] == string.lower(CHAT_STRING) then
        API.UnlockAchievement(player, ACHIEVEMENT_ID)
    end
end

--@params Object player
--@params Int friendAmount
local function FriendsOnline(player, friendAmount)
    if API.IsUnlocked(player, ACHIEVEMENT_ID, friendAmount) then
        API.UnlockAchievement(player, ACHIEVEMENT_ID)
    end
end

------------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

function Init()
    if CHAT_BASED then
        Chat.receiveMessageHook:Connect(OnReceiveMessage)
    elseif FRIENDS_ONLINE then
        API.ConnectFriendsOnline(FriendsOnline)
    end
end

------------------------------------------------------------------------------------------------------------------------
-- INITIALIZATION
------------------------------------------------------------------------------------------------------------------------

Init()
