local DAILY_REWARDS_LIBRARY = require(script:GetCustomProperty("DailyRewardsLibrary"))
local _, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local START_WAIT_DELAY = COMPONENT_ROOT:GetCustomProperty("NotificationStartDelay")
local NOTIFICATION_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationColor")
local NOTIFICATION_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationTextColor")
local NOTIFICATION_BODY_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationBodyColor")

local START_TIME = time()

local MUID_ICON = "BB45BD50ABDAAA0D:Fantasy Sack 014"

function ShowNotification(title, body, icon)
    if time() - START_TIME < START_WAIT_DELAY then
        Task.Wait(START_WAIT_DELAY - (time() - START_TIME))
    end

    local notifIcon = icon
    if icon == nil then
        icon = MUID_ICON
    end

    Events.Broadcast("ShowNotification", title, body,
    NOTIFICATION_COLOR, icon, Color.WHITE, NOTIFICATION_TEXT_COLOR, NOTIFICATION_BODY_COLOR)
end

function OnRewardsEvent(canClaim)
    if canClaim then
        ShowNotification("Daily Reward Available", "Press 1 and claim your reward in Farmer's Shop.")
    end
end

function OnRewardClaim(dayIndex)
    local rewardData = DAILY_REWARDS_LIBRARY.GetRewardByIndex(dayIndex)
    local handle = "x"
    local resource = rewardData.rewardStatName
    local name = STATS_LIST[resource].name
    local icon = STATS_LIST[resource].icon
    if string.match(resource, "Money") then
        handle = "$"
    end
    ShowNotification("Daily Reward Claimed",
                    string.format("%s%d %s daily login reward claimed.", handle, rewardData.rewardStatValue, name), icon)
end

Events.Connect("DailyRewardAvailable", OnRewardsEvent)
Events.Connect("DailyRewardClaim", OnRewardClaim)