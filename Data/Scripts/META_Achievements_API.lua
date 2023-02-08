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
-- Meta Achievements API
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/6/13
-- Version 0.1.2-CC
------------------------------------------------------------------------------------------------------------------------
local API = {}
_G.META_ACHIEVEMENTS = API
------------------------------------------------------------------------------------------------------------------------
-- CONSTANTS
------------------------------------------------------------------------------------------------------------------------
API.CONSTANT_KEYS = {
    ACHIEVEMENT_ID = "METAA",
    ACHIEVEMENT_COUNT_ID = "METAC",
    TIME_KEY = "METAT"
}

API.ACHIEVEMENT_TYPES = {
    RESOURCE = "RESOURCE",
    KILL = "KILL",
    DAMAGE = "DAMAGE",
    HEALING = "HEALING",
    WIN = "WIN",
    ROUND = "ROUND",
    SCORE = "SCORE"
}

API.REPEAT_TYPE = {
    ROUND = 1,
    DAILY = 2
}

API.REWARD_TYPES = {
    RESOURCE = 1,
    REWARD_POINTS = 2
}

------------------------------------------------------------------------------------------------------------------------
-- LOCAL VARIABLES
------------------------------------------------------------------------------------------------------------------------

local achievements = {}
local repeatable = {}
local playerData = {}

------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

--@params Object Player
--@return Bool true if player
local function IsValidPlayer(object)
    return Object.IsValid(object) and object:IsA("Player")
end

--Used to protect from InfiniteLoops. If count = 100 do a task.wait
--@params Int count
--@return int count
local function InfiniteLoopProtect(count)
    count = count + 1
    if count >= 100 then
        count = 0
        Task.Wait()
    end
    return count
end

--#TODO Broke this out, to allow creators multiple type of data transfers in future
--@params Object player
--@params String id
--@params Int value
local function SetAchievementData(player, id, value)
    player:SetPrivateNetworkedData(id, value)
end

--@params String id
local function WarnMissingAchievement(id)
    if not achievements or id and not achievements[id] then
        warn("Achievement Doesn't Exsist of ID: " .. id)
        return true
    else
        return false
    end
end

------------------------------------------------------------------------------------------------------------------------
-- PUBLIC API
------------------------------------------------------------------------------------------------------------------------

-- Pass the parent Achievement list from heirarchy and build the Achievements table
--@params Oject list
function API.RegisterAchievements(list)
    if not next(achievements) then
        local sort = 0
        for _, achievementType in ipairs(list:GetChildren()) do
            for _, child in ipairs(achievementType:GetChildren()) do
                local enabled = child:GetCustomProperty("Enabled")

                local id = API.GetAchievementID(child)
                local required = child:GetCustomProperty("Required")

                local givesReward = child:GetCustomProperty("GivesReward") or false

                local achievement = {
                    id = id,
                    countId = id,
                    sort = sort,
                    name = child.name,
                    required = required + 1,
                    description = child:GetCustomProperty("Description"),
                    family = child:GetCustomProperty("Family"),
                    iconBG = child:GetCustomProperty("IconBG"),
                    icon = child:GetCustomProperty("Icon"),
                    isRepeatable = child:GetCustomProperty("IsRepeatable"),
                    givesReward = givesReward,
                    tier = child:GetCustomProperty("AchievementTier"),
                    saveCount = child:GetCustomProperty("SaveCompletedCount"),
                    preReq = child:GetCustomProperty("PreRequisite"),
                    shouldReset = child:GetCustomProperty("ResetOnRoundStart"),
                    isDaily = child:GetCustomProperty("ResetDaily"),
                    isOnComplete = child:GetCustomProperty("ResetOnlyOnComplete"),
                    isTimeBased = child:GetCustomProperty("IsTimeBased"),
                    autoClaim = child:GetCustomProperty("AutoClaimReward")
                }

                if givesReward then
                    local rewardsTbl = {}
                    local rewardCount = 1
                    for i, reward in ipairs(child:GetChildren()) do
                        local rewardEnabled = reward:GetCustomProperty("Enabled")
                        if rewardEnabled then
                            rewardsTbl[rewardCount] = reward
                            rewardCount = rewardCount + 1
                        end
                    end
                    achievement.rewards = rewardsTbl
                end

                if achievements[id] then
                    warn(achievement.name .. " ID Is Not Unique Conflicts With " .. achievements[id].name)
                end

                if enabled then
                    sort = sort + 1
                    achievements[id] = achievement
                    if achievement.isRepeatable then
                        repeatable[id] = achievement
                    end
                end
            end
        end
    end
end

--@return Table achievements
function API.GetAchievements()
    return achievements
end

--@return Table repeatble
function API.GetRepeatable()
    return repeatable
end

--@params String id
--@return Table achievement
function API.GetAchievementInfo(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id]
end

--@params String id
--@return String achievement name
function API.GetAchievementName(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].name
end

--@params String id
--@return String achievement name
function API.GetAchievementRequired(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].required
end

--@params String id
--@return String achievement description
function API.GetAchievementDescription(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].description
end

--@params String id
--@return String achievement icon MUID
function API.GetAchievementIcon(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].icon
end

--@params String id
--@return String achievement background icon MUID
function API.GetAchievementIconBG(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].iconBG
end

--@params String id
--@return String reward icon MUID
function API.GetRewardIcon(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].rewardIcon
end

function API.GetRewards(id)
    if WarnMissingAchievement(id) then
        return {}
    end
    return achievements[id].rewards
end

--@params String id
--@return String reward icon MUID
function API.IsAutoClaim(id)
    if WarnMissingAchievement(id) then
        return nil
    end
    return achievements[id].autoClaim
end

------------------------------------------------------------------------------------------------------------------------
-- CHECKS
------------------------------------------------------------------------------------------------------------------------

--@params String id
--@return Bool true if has rewards
function API.HasRewards(id)
    return achievements[id].givesReward and achievements[id].rewards and next(achievements[id].rewards)
end

--@params String id
function API.HasRewardPoints(id)
    if API.HasRewards(id) then
        for _, reward in ipairs(achievements[id].rewards) do
            local rewardType = reward:GetCustomProperty("Type")
            if rewardType == 2 then
                return reward
            end
        end
    end
end

--@params Object player
--@params String id
--@return Bool
function API.HasPreRequsistCompleted(player, id)
    if not achievements[id].preReq or achievements[id].preReq == "" then
        return true
    else
        local tempTbl = {CoreString.Split(achievements[id].preReq, ",")}
        for _, preReqId in ipairs(tempTbl) do
            preReqId = preReqId .. API.CONSTANT_KEYS.ACHIEVEMENT_ID
            local preReqValue = API.GetCurrentProgress(player, preReqId)
            if not API.IsUnlocked(player, preReqId) and preReqValue ~= 1 then
                return false
            end
        end
        return true
    end
end

-- Give rewards to a player if an achievement is unlocked
--@params Object player
--@params String id
function API.GiveRewards(player, id)
    if achievements[id] then
        local achievement = achievements[id]
        if API.IsUnlocked(player, id) and API.HasRewards(id) then
            -- Check to see if player unlocked achievement
            for _, reward in ipairs(achievements[id].rewards) do
                local rewardType = reward:GetCustomProperty("Type")
                if rewardType == API.REWARD_TYPES.RESOURCE then
                    local resourceName = reward:GetCustomProperty("ResourceName")
                    local rewardAmount = reward:GetCustomProperty("Amount")
                    if resourceName and rewardAmount then
                        player:AddResource(resourceName, CoreMath.Round(rewardAmount))
                    end
                elseif rewardType == API.REWARD_TYPES.REWARD_POINTS then
                    local activityName = reward:GetCustomProperty("ActivityName")
                    local rewardAmount = reward:GetCustomProperty("Amount")
                    if activityName and rewardAmount and player.GrantRewardPoints then
                        player:GrantRewardPoints(CoreMath.Round(rewardAmount), activityName)
                    end
                end
            end
            API.SetClaimed(player, id)
        end
    end
end

-- Gives a player all rewards for every unlocked achievement
--@params Object player
function API.GiveAllRewards(player)
    local unlockedTbl = API.CheckUnlockedAchievements(player)
    for _, achievement in pairs(unlockedTbl) do
        if API.HasRewards(achievement.id) then
            API.GiveRewards(player, achievement.id)
        end
    end
end

-- Gives a player all rewards for every repeatable unlocked achievement
--@params Object player
function API.GiveAllRepeatbleRewards(player)
    local unlockedTbl = API.CheckUnlockedAchievements(player)
    for _, achievement in pairs(unlockedTbl) do
        if achievement.isRepeatable and API.HasRewards(achievement.id) then
            API.GiveRewards(player, achievement.id)
        end
    end
end

--@params Object player
--@params String id
function API.SetClaimed(player, id)
    SetAchievementData(player, id, 1)
end

--@params Object player
--@params String id
function API.ResetAchievement(player, id)
    SetAchievementData(player, id, 0)
end

--@params Object player
--@params String id
--@return Int currentProgress for an achievement
function API.GetCurrentProgress(player, id)
    if IsValidPlayer(player) then
        return player:GetPrivateNetworkedData(id)
    end
end

--@params Object player
--@params String id
--@return Int currentProgress for an achievement
function API.IsCompleted(player, id)
    return API.GetCurrentProgress(player, id) == 1
end

--@params Object player
--@params String id
--@params Int value
--@return bool true if player has enough to unlock achievement
function API.IsUnlocked(player, id, value)
    value = value or API.GetCurrentProgress(player, id)
    if IsValidPlayer(player) and API.GetAchievementInfo(id) and value >= API.GetAchievementRequired(id) and value ~= 1 then
        return true
    else
        return false
    end
end

--@params Object player
--@return Table of achievements the player has current unlocked
function API.GetUnlockedAchievements(player)
    local tempTbl = {}
    local count = 0
    for id, achievement in pairs(API.GetAchievements()) do
        if API.IsUnlocked(player, id) then
            tempTbl[id] = achievement
        end
        count = InfiniteLoopProtect(count)
    end
    return tempTbl
end

--@params Object player
--@params Table of currently unlocked achievements for the player that have been filtered based on FamilyType
function API.CheckUnlockedAchievements(player)
    local unlockedTbl = API.GetUnlockedAchievements(player)
    local familyTbl = {}
    local tempTbl = {}
    local count = 0

    --Loop through unlocked achievements and filter out achievements with a family
    for id, achievement in pairs(unlockedTbl) do
        if achievement.family ~= "" then
            familyTbl[achievement.family] = familyTbl[achievement.family] or {}
            familyTbl[achievement.family][achievement.id] = achievement
        else
            tempTbl[#tempTbl + 1] = achievement
        end
        count = InfiniteLoopProtect(count)
    end

    --Loop through family achievements and only give credit to the player for the highest value in the family
    for family, tbl in pairs(familyTbl) do
        local lastCount = 0
        local highestAchievement
        for _, achievement in pairs(tbl) do
            if achievement.required > lastCount then
                highestAchievement = achievement
                lastCount = achievement.required
            end
        end
        if highestAchievement then
            tempTbl[#tempTbl + 1] = highestAchievement
        end
        count = InfiniteLoopProtect(count)
    end
    return tempTbl
end

--@params Object player
--@params String id
function API.UnlockAchievement(player, id)
    local achievement = API.GetAchievementInfo(id)
    if IsValidPlayer(player) and achievement and API.HasPreRequsistCompleted(player, id) then
        API.SetProgress(player, id, API.GetAchievementRequired(id))
        if achievement.isRepeatable and achievement.saveCount then
            API.AddCompletedCount(player, achievement)
        end
    end
end

--@params Object player
--@params String key
--@params Int value
--@params Bool forceSet
-- Sets the progress of a achievement for a player
function API.SetProgress(player, key, value, forceSet)
    local currentProgress = player:GetPrivateNetworkedData(key)

    if currentProgress == 1 and not forceSet then
        return
    end

    value = value + 1
    local required = API.GetAchievementRequired(key)
    if value < required then
        SetAchievementData(player, key, value)
    elseif value >= required then
        SetAchievementData(player, key, required)
        if API.IsAutoClaim(key) then
            Task.Spawn(
                function()
                    if Object.IsValid(player) then
                        API.GiveRewards(player, key)
                    end
                end,
                3
            )
        end
    end
end

--@params Object player
--@params String id
--@params Int value
function API.AddProgress(player, id, value)
    if IsValidPlayer(player) and API.GetAchievementInfo(id) and API.HasPreRequsistCompleted(player, id) then
        local currentProgress = player:GetPrivateNetworkedData(id)

        --Return if achievement finished - 1 is stored as completed
        if currentProgress == 1 then
            return
        end

        if not achievements[id] then
            return
        end

        local achievement = API.GetAchievementInfo(id)
        local required = API.GetAchievementRequired(id)
        if currentProgress == 0 then
            SetAchievementData(player, id, value + 1)
        elseif currentProgress + value < required then
            SetAchievementData(player, id, currentProgress + value)
        elseif currentProgress + value >= required then
            SetAchievementData(player, id, required)
            if API.IsAutoClaim(id) then
                Task.Spawn(
                    function()
                        if Object.IsValid(player) then
                            API.GiveRewards(player, id)
                        end
                    end,
                    3
                )
            end
        end
    end
end

--@params Object player
--@params Table achievement
function API.AddCompletedCount(player, achievement)
    local currentProgress = API.GetCurrentProgress(player, achievement.countId)

    if API.IsUnlocked(player, achievement.id) then
        SetAchievementData(player, achievement.countId, currentProgress + 1)
    end
end

--@params Object player
--@params Int repeatType
--@params Bool forceReset
function API.ResetRepeatable(player, repeatType, forceReset)
    local count = 0

    for id, achievement in pairs(API.GetAchievements()) do
        if achievement.isRepeatable then
            if achievement.isOnComplete and API.IsCompleted(player, id) or not achievement.isOnComplete then
                if repeatType == API.REPEAT_TYPE.ROUND and achievement.shouldReset then
                    SetAchievementData(player, id, 0)
                elseif repeatType == API.REPEAT_TYPE.DAILY and achievement.isDaily then
                    SetAchievementData(player, id, 0)
                end
            elseif forceReset then
                SetAchievementData(player, id, 0)
            end
        end
        count = InfiniteLoopProtect(count)
    end
end

--@params Object player
--@params Bool
--@params Netrefrence sharedKeyNetRef
function API.LoadAchievementStorage(player, useSharedKey, sharedKeyNetRef)
    local data = {}

    if useSharedKey then
        data = Storage.GetSharedPlayerData(sharedKeyNetRef, player)
    else
        data = Storage.GetPlayerData(player)
    end

    --Daily Achievement Time Reset
    local shouldReset = false
    local currentDate = os.date("!*t").yday
    if
        data.META_ACHIEVEMENTS and data.META_ACHIEVEMENTS[API.CONSTANT_KEYS.TIME_KEY] and
            data.META_ACHIEVEMENTS[API.CONSTANT_KEYS.TIME_KEY] ~= currentDate or
            not data.META_ACHIEVEMENTS
     then
        playerData[player.id].resetTime = currentDate
        shouldReset = true
    elseif data.META_ACHIEVEMENTS and data.META_ACHIEVEMENTS[API.CONSTANT_KEYS.TIME_KEY] then
        playerData[player.id].resetTime = data.META_ACHIEVEMENTS[API.CONSTANT_KEYS.TIME_KEY]
    end

    if data.META_ACHIEVEMENTS then
        local achievementData = data.META_ACHIEVEMENTS
        for key, value in pairs(achievementData) do
            SetAchievementData(player, key, value)
        end
        for _, achievement in pairs(achievements) do
            if achievement.id and not API.GetCurrentProgress(player, achievement.id) then
                SetAchievementData(player, achievement.id, 0)
            elseif
                achievement.id and shouldReset and achievement.isDaily and achievement.isOnComplete and
                    API.IsCompleted(player, achievement.id)
             then
                SetAchievementData(player, achievement.id, 0)
            elseif achievement.id and shouldReset and achievement.isDaily and not achievement.isOnComplete then
                SetAchievementData(player, achievement.id, 0)
            elseif
                achievement.isRepeatable and achievement.saveCount and achievement.countId and
                    not API.GetCurrentProgress(player, achievement.id)
             then
                SetAchievementData(player, achievement.countId, 0)
            end
        end
    else
        for _, achievement in pairs(achievements) do
            if achievement.id then
                SetAchievementData(player, achievement.id, 0)
            elseif achievement.isRepeatable and achievement.saveCount and achievement.countId then
                SetAchievementData(player, achievement.countId, 0)
            end
        end
    end

    local resetDay = playerData[player.id].resetTime
    SetAchievementData(player, API.CONSTANT_KEYS.TIME_KEY, {shouldReset = shouldReset, reset = resetDay})
end

--@params object player
function API.SaveAchievementStorage(player, useSharedKey, sharedKeyNetRef)
    local data = {}

    if useSharedKey then
        data = Storage.GetSharedPlayerData(sharedKeyNetRef, player)
    else
        data = Storage.GetPlayerData(player)
    end

    local tempTbl = {}

    for id, achievement in pairs(API.GetAchievements()) do
        if not achievement.isRepeatable and not achievement.saveCount then
            tempTbl[id] = API.GetCurrentProgress(player, achievement.id)
        elseif achievement.isRepeatable and achievement.saveCount and achievement.countId then
            tempTbl[achievement.countId] = API.GetCurrentProgress(player, achievement.countId)
        end
    end

    tempTbl[API.CONSTANT_KEYS.TIME_KEY] = playerData[player.id].resetTime

    data.META_ACHIEVEMENTS = tempTbl

    if useSharedKey then
        Storage.SetSharedPlayerData(sharedKeyNetRef, player, data)
    else
        Storage.SetPlayerData(player, data)
    end
end

--@params Object player
function API.OnPlayerJoined(player)
    playerData[player.id] = {}
end

--@params Object player
function API.OnPlayerLeft(player)
    playerData[player.id] = nil
end

--@params Int number
--@return String formatted with "," every three digits
function API.FormatInt(number)
    if not tonumber(number) then
        return
    end
    local i, j, minus, int, fraction = tostring(number):find("([-]?)(%d+)([.]?%d*)")
    int = int:reverse():gsub("(%d%d%d)", "%1,")
    return minus .. int:reverse():gsub("^,", "") .. fraction
end

--@params Int currentResource
--@params Int requiredResource
function API.GetProgressText(currentResource, requiredResource)
    return tostring(API.FormatInt((currentResource == 0 and 0) or (currentResource > 0 and currentResource - 1))) ..
        " / " .. tostring(API.FormatInt(CoreMath.Round(requiredResource - 1, 0)))
end

--@params Object object
--@return String Achievement ID with Namespace
function API.GetAchievementID(object)
    local id = object:GetCustomProperty("ID")
    if id then
        return id .. API.CONSTANT_KEYS.ACHIEVEMENT_ID
    end
end

function API.GetAchievementIdString(id)
    if id then
        return id .. API.CONSTANT_KEYS.ACHIEVEMENT_ID
    end
end

------------------------------------------------------------------------------------------------------------------------
-- PUBLIC EVENTS
------------------------------------------------------------------------------------------------------------------------

-- Same Context Broadcasts

--@params Object player
--@parms String resName
--@params Int resAmt
function API.BroadcastResource(player, resName, resAmt)
    Events.Broadcast("AS.ResChange", player, resName, resAmt)
end

function API.ConnectResource(func)
    return Events.Connect("AS.ResChange", func)
end

--@params Object player
--@parms Object damage
function API.BroadcastDiedEvent(player, damage)
    Events.Broadcast("AS.DiedEvent", player, damage)
end

function API.ConnectDiedEvent(func)
    return Events.Connect("AS.DiedEvent", func)
end

--@params Object player
--@parms Object damage
function API.BroadcastDamageEvent(player, damage)
    Events.Broadcast("AS.DamageEvent", player, damage)
end

function API.ConnectDamageEvent(func)
    return Events.Connect("AS.DamageEvent", func)
end

--@params Table playersWonTbl
function API.BroadcastRoundEnd(playersWonTbl)
    Events.Broadcast("AS.RoundEndEvent", playersWonTbl)
end

function API.ConnectRoundEnd(func)
    return Events.Connect("AS.RoundEndEvent", func)
end

--@params Int team
function API.BroadcastTeamScoredEvent(team)
    Events.Broadcast("AS.TeamScoreEvent", team)
end

function API.ConnectTeamScored(func)
    return Events.Connect("AS.TeamScoreEvent", func)
end

--@params Int team
function API.BroadcastPlayerJoined(player)
    Events.Broadcast("AS.PlayerJoinedEvent", player)
end

function API.ConnectPlayerJoined(func)
    return Events.Connect("AS.PlayerJoinedEvent", func)
end

-- Client To Server Broadcasts

--@params Int friendsOnline
function API.BroadcastFriendsOnline(friendsOnline)
    Events.BroadcastToServer("AS.FriendOnline", friendsOnline)
end

function API.ConnectFriendsOnline(func)
    return Events.ConnectForPlayer("AS.FriendOnline", func)
end

--@params String id
function API.BroadcastRewardClaim(id)
    Events.BroadcastToServer("AS.RewardClaim", id)
end

function API.ConnectRewardClaim(func)
    return Events.ConnectForPlayer("AS.RewardClaim", func)
end

return API
