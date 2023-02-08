--[[
    This script manages insta grow resource and tracks the player's purchases of each insta grow bundle on client side.
    It also tracks the time for daily insta grow rewards by registering to the APIInstaGrow.
--]]

-- Internal custom properties
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local API = require(script:GetCustomProperty("API"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local BUNDLES_LIST_REFERNCE = script:GetCustomProperty("BundlesList"):WaitForObject()

-- Exposed custom properties
local REWARD_AMOUNT = ROOT:GetCustomProperty("RewardAmount") or 3
local VIP_REWARD_AMOUNT = ROOT:GetCustomProperty("VIPRewardAmount") or 10
local DAY_SECONDS = ROOT:GetCustomProperty("DaySeconds") or 86400

-- Constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal variables
local lastTime = 0
local lastClientTime = time()
local lastOsTime = 0
local isReadyToClaim = false

-- Gather bundle data into table from hierarchy list
local bundles = {}
for _, child in ipairs(BUNDLES_LIST_REFERNCE:GetChildren()) do
    table.insert(bundles, {
        reference = child:GetCustomProperty("BundleReference"),
        counterResource = child:GetCustomProperty("CounterResource"),
        rewardResource = child:GetCustomProperty("RewardResource"),
        rewardAmount = child:GetCustomProperty("RewardAmount")
    })
end

function Tick()
    -- Keeps the stats up to date for tracking the progress
    lastTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "InstaGrowLastTime")
    lastOsTime = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "InstaGrowLastServerTime")

    -- Sends event if the daily reward is ready or not
    if not isReadyToClaim and GetProgress() >= DAY_SECONDS then
        isReadyToClaim = true
        Events.Broadcast("InstaGrowRewardAvailable", isReadyToClaim)

    elseif isReadyToClaim and GetProgress() < DAY_SECONDS then
        isReadyToClaim = false
        Events.Broadcast("InstaGrowRewardAvailable", isReadyToClaim)
    end
end

-- bool IsReadyToClaim()
-- Whether or not the daily reward ready to be claimed
function IsReadyToClaim()
    return isReadyToClaim
end

-- int GetRewardAmount()
-- Returns the amount based on player's membership
function GetRewardAmount()
    if not API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
        return REWARD_AMOUNT, false
    else
        return VIP_REWARD_AMOUNT, true
    end
end

-- table GetStats()
-- Returns the table of daily insta grow reward stats
function GetStats()
    local result = {
        lastTime = lastTime,
        lastOsTime = lastOsTime,
        lastClientTime = lastClientTime,
        rewardAmount = GetRewardAmount(),
        daySeconds = DAY_SECONDS
    }
    return result
end

-- table GetBundles()
-- Returns the table of insta grow bundles
function GetBundles()
    return bundles
end

-- float GetProgress()
-- Returns the time that passed since last time player claimed the reward
function GetProgress()
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
functionTable.GetBundles = GetBundles
functionTable.GetRemainingTime = GetRemainingTime
functionTable.GetRewardAmount = GetRewardAmount
functionTable.UpdateClientTime = UpdateClientTime
functionTable.IsReadyToClaim = IsReadyToClaim

API.RegisterManager(functionTable)
