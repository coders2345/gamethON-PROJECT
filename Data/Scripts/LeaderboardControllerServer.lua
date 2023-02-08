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

local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local RESOURCE = script:GetCustomProperty("Resource")
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local LEADERBOARD_REFERENCE = script:GetCustomProperty("LeaderboardReference")

function OnStatChanged(player, statId, value)
    if statId == RESOURCE then
        local additionalData = ""

        if API_MEMBERSHIP.IsPlayerMember(player) then
            additionalData = "VIP"
        end

        Leaderboards.SubmitPlayerScore(LEADERBOARD_REFERENCE, player, value, additionalData)
    end
end

function OnPlayerJoined(player)
    Task.Wait()
    Leaderboards.SubmitPlayerScore(LEADERBOARD_REFERENCE, player, STATS_LIBRARY.GetStat(player, RESOURCE))
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Events.Connect("StatChangedEvent", OnStatChanged)