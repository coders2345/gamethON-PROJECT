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
-- Meta Achievements System Server
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/5/29
-- Version 0.1.0-CC
------------------------------------------------------------------------------------------------------------------------

local ROOT = script:GetCustomProperty("AchievementSystem"):WaitForObject()

local isEnabled = ROOT:GetCustomProperty("Enabled")
if not isEnabled then
    return
end

local ACHIEVEMENT_LIST = script:GetCustomProperty("Achievement_List"):WaitForObject()

local shouldSaveProgress = ROOT:GetCustomProperty("SaveProgress")
local useSharedKey = ROOT:GetCustomProperty("UseSharedKey")
local sharedKeyNetRef = ROOT:GetCustomProperty("SharedKey")
local shouldGiveRewardsRoundEnd = ROOT:GetCustomProperty("GiveRewardsRoundEnd")
local rewardWinningTeam = ROOT:GetCustomProperty("OnRewardWinningTeam")

------------------------------------------------------------------------------------------------------------------------
-- REQUIRES
------------------------------------------------------------------------------------------------------------------------
while not _G.META_ACHIEVEMENTS do
    Task.Wait()
end
local API = _G.META_ACHIEVEMENTS
------------------------------------------------------------------------------------------------------------------------
-- OBJECTS
------------------------------------------------------------------------------------------------------------------------
local listeners = {}
local roundTime = time()
------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Object object
--@return Bool true if valid player
local function IsValidPlayer(object)
    return Object.IsValid(object) and object:IsA("Player")
end

--@params Object player
local function SetPlayerFlags(player)
    player.serverUserData.ACH_diedInRound = false
    player.serverUserData.ACH_killCount = 0
end

-- Resets player flags and repeatable achievements when a new round starts
local function OnRoundStart()
    for _, player in ipairs(Game.GetPlayers()) do
        API.ResetRepeatable(player, API.REPEAT_TYPE.ROUND)
        SetPlayerFlags(player)
    end
    roundTime = time()
end

--@params Object player
--@params String resName
--@params Int resAmt
local function OnResourceChanged(player, resName, resAmt)
    if resAmt == 0 then
        return
    end
    API.BroadcastResource(player, resName, resAmt)
end

-- Used for Round & Win Achievement types.
---Gives player rewards for unlocked achievements, if enabled.
local function OnRoundEnd()
    local winningTeam
    local highestScore = Game.GetTeamScore(1)

    -- Max teams in Core is currently 4
    for i = 1, 4 do
        local teamScore = Game.GetTeamScore(i)
        if highestScore < teamScore then
            highestScore = teamScore
            winningTeam = i
        end
    end

    local playersWonTbl = {}
    for _, player in ipairs(Game.GetPlayers()) do
        if Object.IsValid(player) then
            playersWonTbl[player] = player.team == winningTeam
        end
    end

    API.BroadcastRoundEnd(playersWonTbl)

    if shouldGiveRewardsRoundEnd then
        Task.Wait(3)
        if rewardWinningTeam then
            for player, _ in pairs(playersWonTbl) do
                if Object.IsValid(player) then
                    API.GiveAllRepeatbleRewards(player)
                end
            end
        else
            for _, player in pairs(Game.GetPlayers()) do
                if Object.IsValid(player) then
                    API.GiveAllRepeatbleRewards(player)
                end
            end
        end
    end
end

--@params Object player
local function OnPlayerRespawn(player)
    if IsValidPlayer(player) then
        player.serverUserData.ACH_killCredited = nil
    end
end

--@params Object player
--@params Object damage
local function OnPlayerDied(player, damage)
    local source = damage.sourcePlayer
    if IsValidPlayer(player) and IsValidPlayer(source) then
        if not player.serverUserData.ACH_killCredited then
            API.BroadcastDiedEvent(player, damage)
        end
    end
end

--@params Object player
--@params Object damage
local function OnPlayerDamaged(player, damage)
    local source = damage.sourcePlayer
    if IsValidPlayer(player) and IsValidPlayer(source) then
        if not player.serverUserData.ACH_killCredited then
            API.BroadcastDamageEvent(player, damage)
        end
    end
end

--@params Int team
local function OnTeamScored(team)
    API.BroadcastTeamScoredEvent(team)
end

------------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Object player
--@params String id
function OnRewardCollected(player, id)
    API.GiveRewards(player, id)
end

-- Load player achievement progression & connect listeners.
--@params Object player
function OnPlayerJoined(player)
    API.OnPlayerJoined(player)
    
    if shouldSaveProgress or sharedKeyNetRef then
        API.LoadAchievementStorage(player, useSharedKey, sharedKeyNetRef)
    end

    local playerListeners = {}
    playerListeners.respawn = player.spawnedEvent:Connect(OnPlayerRespawn)
    playerListeners.resource = player.resourceChangedEvent:Connect(OnResourceChanged)
    playerListeners.died = player.diedEvent:Connect(OnPlayerDied)
    playerListeners.damage = player.damagedEvent:Connect(OnPlayerDamaged)

    listeners[player.id] = playerListeners

    API.BroadcastPlayerJoined(player)
end

-- Save player achievement progression & disconnect listeners
--@params Object player
function OnPlayerLeft(player)
    if shouldSaveProgress or sharedKeyNetRef then
        API.SaveAchievementStorage(player, useSharedKey, sharedKeyNetRef)
    end
    if listeners[player.id] then
        for _, listener in pairs(listeners[player.id]) do
            listener:Disconnect()
        end
        listeners[player.id] = nil
    end
    API.OnPlayerLeft(player)
end

------------------------------------------------------------------------------------------------------------------------
-- LISTENERS
------------------------------------------------------------------------------------------------------------------------
Game.roundEndEvent:Connect(OnRoundEnd)
Game.roundStartEvent:Connect(OnRoundStart)
Game.teamScoreChangedEvent:Connect(OnTeamScored)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

-- Client Broadcast Listeners
API.ConnectRewardClaim(OnRewardCollected)

-- Setup Achievements
API.RegisterAchievements(ACHIEVEMENT_LIST)
