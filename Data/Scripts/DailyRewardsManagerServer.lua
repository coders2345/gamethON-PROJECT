-- Internal custom properties
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local DAILY_REWARDS_LIBRARY = require(script:GetCustomProperty("DailyRewardsLibrary"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))

-- Exposed custom properties
local WEEK_DAYS = ROOT:GetCustomProperty("WeekDays") or 7

function TryAddResources(player, resource, value)
    if API_BARN_STORAGE.IsResourceValid(resource) then
        if API_BARN_STORAGE.CheckAvailibility(player, value) then
            STATS_LIBRARY.IncrementStat(player, resource, value)
        else
            return false
        end
    elseif resource == "Money" then
        STATS_LIBRARY.IncrementStat(player, "Money", value)
        STATS_LIBRARY.IncrementStat(player, "MoneyAccumulated", value)
    else
        STATS_LIBRARY.IncrementStat(player, resource, value)
    end

    return true
end

function OnDailyRewardClaim(player, dayIndex)
    local rewardData = DAILY_REWARDS_LIBRARY.GetRewardByIndex(dayIndex)

    if not TryAddResources(player, rewardData.rewardStatName, rewardData.rewardStatValue) then return end

    -- Recycle the rewards back to last week if we reached the final week of rewards
    if dayIndex >= DAILY_REWARDS_LIBRARY.GetTotalRewardsCount() then
        STATS_LIBRARY.UpdateStat(player, "DailyRewardLastDay", dayIndex - WEEK_DAYS)
    else
        STATS_LIBRARY.UpdateStat(player, "DailyRewardLastDay", dayIndex)
    end

    -- Save the os and client time information
    STATS_LIBRARY.UpdateStat(player, "DailyRewardLastTime", os.time())
    STATS_LIBRARY.UpdateStat(player, "DailyRewardLastServerTime", os.time())
end

-- Event called from client when the player claimed the daily reward
Events.ConnectForPlayer("DailyRewardClaim", OnDailyRewardClaim)
