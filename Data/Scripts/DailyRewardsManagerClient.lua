--[[
    This script tracks the time for daily rewards by registering to the APIDailyRewards.
--]]

-- Internal custom properties
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local API = require(script:GetCustomProperty("API"))
local STATS_LIBRARY, STAT_LIST = require(script:GetCustomProperty("StatsLibrary"))

-- Exposed custom properties
local WEEK_DAYS = ROOT:GetCustomProperty("WeekDays") or 7
local DAY_SECONDS = ROOT:GetCustomProperty("DaySeconds") or 86400

-- Constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal variables
local lastTime = 0
local lastClientTime = time()
local lastOsTime = 0
local isReadyToClaim = false

function Tick()
    -- Sends event if the daily reward is ready or not
    if not isReadyToClaim and GetProgress() >= DAY_SECONDS then
        isReadyToClaim = true
        Events.Broadcast("DailyRewardAvailable", isReadyToClaim)
    elseif isReadyToClaim and GetProgress() < DAY_SECONDS then
        isReadyToClaim = false
        Events.Broadcast("DailyRewardAvailable", isReadyToClaim)
    end
end

-- bool IsReadyToClaim()
-- Whether or not the daily reward ready to be claimed
function IsReadyToClaim()
    return isReadyToClaim
end

-- table GetStats()
-- Returns the table of daily reward time stats
function GetStats()
    local result = {
        lastDay = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "DailyRewardLastDay"),
        lastTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "DailyRewardLastTime"),
        lastOsTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "DailyRewardLastServerTime"),
        lastClientTime = lastClientTime,
        isReadyToClaim = isReadyToClaim,
        weekDays = WEEK_DAYS,
        daySeconds = DAY_SECONDS
    }
    return result
end

-- float GetProgress()
-- Returns the time that passed since last time player claimed the reward
function GetProgress()
    lastTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "DailyRewardLastTime")
    lastOsTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "DailyRewardLastServerTime")

    return lastOsTime - lastTime + (time() - lastClientTime)
end

-- float GetRemainingTime()
-- Returns the remaining time that's left for player to claim the reward
function GetRemainingTime()
    return CoreMath.Clamp(DAY_SECONDS - GetProgress(), 0, DAY_SECONDS)
end

-- nil GetRemainingTime()
-- Update the tracking for the last client time
function UpdateClientTime()
    lastClientTime = time()
end

-- Initiliaze
local functionTable = {}
functionTable.GetStats = GetStats
functionTable.GetProgress = GetProgress
functionTable.GetRemainingTime = GetRemainingTime
functionTable.UpdateClientTime = UpdateClientTime
functionTable.IsReadyToClaim = IsReadyToClaim

API.RegisterManager(functionTable)
