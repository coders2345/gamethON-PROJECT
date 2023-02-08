--[[
AvailableEvents:
    - StatChangedEvent (server/client)
    - AchievementUnlocked (server/client)

=================== UsageExample Client =======================
    function HandleAchievementUnlocked(id)
    
    end
    Events.Connect("AchievementUnlocked", HandleAchievementUnlocked)

    function OnStatChanged(player, statId, value)
        
    end
    Events.Connect("StatChangedEvent", OnStatChanged)

================== UsageExample Server ==========================
    function HandleAchievementUnlocked(player, id)
    
    end
    Events.Connect("AchievementUnlocked", HandleAchievementUnlocked)

    function OnStatChanged(player, statId, value)
        
    end
    Events.Connect("StatChangedEvent", OnStatChanged)
--]]
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local API_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local ACHIEVEMENT_LIBRARY, ACHIEVEMENTS = require(script:GetCustomProperty("Achievements"))

local STATS_VERSION_KEY = "STATSDATAVERSION"
local STATS_SAVE_DATA_VERSION = 1

function CheckRequiredStats(player, achievement)
    if achievement["requiredStats"] then
        for statId, value in pairs(achievement["requiredStats"]) do
            local currentStatVal = STATS_LIBRARY.GetStat(player, statId)
            if currentStatVal < value then
                return false
            end
        end
    end
    return true
end

function CheckRequiredAchievements(player, achievement)
    if achievement["requiredAchievements"] then
        for _, achId in pairs(achievement["requiredAchievements"]) do
            local currentUnlockStatus = ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(player, achId)
            if not currentUnlockStatus then
                return false
            end
        end
    end
    return true
end

function CheckAchievementRewards(player, achievement)
    if achievement["rewardStats"] then
        for statId, value in pairs(achievement["rewardStats"]) do
            -- check if this reward is plant resource
            for _, resourceName in ipairs(API_STORAGE.GetValidResources()) do
                if resourceName == statId then
                    local currentStorage = API_STORAGE.GetBarnCurrentStorage(player)
                    local barnLevel = STATS_LIBRARY.GetStat(player, "BarnLevel")
                    local maxStorage = API_STORAGE.GetBarnMaxStorage(barnLevel)
                    if currentStorage + value > maxStorage then
                        return false
                    end
                end
            end
        end
    end
    return true
end

function ApplyAchievementRewards(player, achievement)
    if achievement["rewardStats"] then
        for statId, value in pairs(achievement["rewardStats"]) do
            STATS_LIBRARY.IncrementStat(player, statId, value)
        end
    end
end

function HandleTryUnlockAchievement(player, achievementId, broadcastOff)
    local achievement = ACHIEVEMENTS[achievementId]
    -- if achievement exists and hasn't been unlocked
    if achievement then
        local unlockStatus = player:GetResource(achievementId)
        if unlockStatus == 0 then
            -- don't unlock achievement if required achievements aren't satisfied
            if (not CheckRequiredAchievements(player, achievement)) then return end
            -- don't unlock achievement if required stats aren't satisfied
            if (not CheckRequiredStats(player, achievement)) then return end

            player:SetResource(achievementId, 1)

            -- broadcast event on server and client
            if not broadcastOff then
                Events.Broadcast("AchievementUnlocked", player, achievementId)
                Events.BroadcastToPlayer(player, "AchievementUnlocked", achievementId)
            end
        end
    else
        error("No achievement with ID " .. achievementId .. " exists. Please add it to the list of achievements.")
    end
end

function HandleTryClaimAchievement(player, achievementId)
    local achievement = ACHIEVEMENTS[achievementId]
    -- if achievement exists and hasn't been unlocked
    if achievement then
        local unlockStatus = player:GetResource(achievementId)
        if unlockStatus == 1 then
            -- don't unlock achievement if required achievements aren't satisfied
            if (not CheckRequiredAchievements(player, achievement)) then return end
            -- don't unlock achievement if required stats aren't satisfied
            if (not CheckRequiredStats(player, achievement)) then return end
            -- don't unlock achievement reward goes beyond storage
            if (not CheckAchievementRewards(player, achievement)) then return end

            player:SetResource(achievementId, 2)

            ApplyAchievementRewards(player, achievement)

            Task.Wait()
            if Object.IsValid(player) then
                Events.BroadcastToPlayer(player, "AchievementClaimed", achievementId)
            end
        end
    else
        error("No achievement with ID " .. achievementId .. " exists. Please add it to the list of achievements.")
    end
end

function OnResourceChanged(player, key, value)
	local playerData = Storage.GetPlayerData(player)

	if type(playerData.stats) ~= "table" then
		playerData.stats = {}
    end

    if STATS_LIST[key] ~= nil then
        playerData.stats[key] = value
        --print(script.name..": "..key.." "..tostring(value))
        Events.Broadcast("StatChangedEvent", player, key, value)
        Storage.SetPlayerData(player, playerData)
        -- Try unlock achievements with required stats
        for achievementId, _ in pairs(ACHIEVEMENTS) do
            local achievement = ACHIEVEMENTS[achievementId]
            if achievement["requiredStats"] and achievement["autoUnlock"] then
                HandleTryUnlockAchievement(player, achievementId)
            end
        end
    end

    -- get updated achievements 
    playerData.achievements = Storage.GetPlayerData(player).achievements

    if type(playerData.achievements) ~= "table" then
		playerData.achievements = {}
    end

    if ACHIEVEMENTS[key] ~= nil then
        playerData.achievements[key] = value
    end

    Storage.SetPlayerData(player, playerData)
end

function migrateGameStatsSaveData(statsTable, fromVersion, toVersion)
    if fromVersion == nil or fromVersion < 1 then
        if statsTable["CurMetalStorage"] ~= nil then
            statsTable["CurMetalStorage"] = 0
        end
    end
end

function OnPlayerJoined(player)
	local playerData = Storage.GetPlayerData(player)

    if type(playerData.achievements) ~= "table" then
        playerData.achievements = {}
    end

    for achId, _ in pairs(ACHIEVEMENTS) do
        -- new stats added
        if playerData.achievements[achId] == nil then
            playerData.achievements[achId] = 0
        end
    end

    for achievementId, value in pairs(playerData.achievements) do
        if ACHIEVEMENTS[achievementId] then
            player:SetResource(achievementId, value)
        end
    end

    if type(playerData.stats) ~= "table" then
        playerData.stats = {}
    end

    -- migrate stats data
    if playerData[STATS_VERSION_KEY] == nil or playerData[STATS_VERSION_KEY] < STATS_SAVE_DATA_VERSION then
        -- perform data migration
        migrateGameStatsSaveData(playerData.stats, playerData[STATS_VERSION_KEY], STATS_SAVE_DATA_VERSION)

        -- assign current version
        playerData[STATS_VERSION_KEY] = STATS_SAVE_DATA_VERSION

        -- persist migration
        Storage.SetPlayerData(player, playerData)
    end

    for statId, _ in pairs(STATS_LIST) do
        -- new stats added
        if playerData.stats[statId] == nil then
            playerData.stats[statId] = 0
        end
    end

    for statId, value in pairs(playerData.stats) do
        STATS_LIBRARY.UpdateStat(player, statId, value)
    end

    for achievementId, _ in pairs(playerData.achievements) do
        if ACHIEVEMENTS[achievementId] then
            HandleTryUnlockAchievement(player, achievementId, true)
        end
    end

    Storage.SetPlayerData(player, playerData)
    player.resourceChangedEvent:Connect(OnResourceChanged)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Events.Connect("TryUnlockAchievement", HandleTryUnlockAchievement)
Events.Connect("TryClaimAchievement", HandleTryClaimAchievement)