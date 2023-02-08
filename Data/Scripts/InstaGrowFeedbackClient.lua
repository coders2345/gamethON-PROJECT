local API = require(script:GetCustomProperty("API"))
local _, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local START_WAIT_DELAY = COMPONENT_ROOT:GetCustomProperty("NotificationStartDelay")
local NOTIFICATION_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationColor")
local NOTIFICATION_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationTextColor")
local NOTIFICATION_BODY_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationBodyColor")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local START_TIME = time()

function ShowNotification(title, body)
    if time() - START_TIME < START_WAIT_DELAY then
        Task.Wait(START_WAIT_DELAY - (time() - START_TIME))
    end
    Events.Broadcast("ShowNotification", title, body,
    NOTIFICATION_COLOR, STATS_LIST["InstaGrow"].icon, Color.WHITE, NOTIFICATION_TEXT_COLOR, NOTIFICATION_BODY_COLOR)
end

function OnRewardsEvent(canClaim)
    if canClaim then
        ShowNotification("Reward Available", "Press 1 and claim your reward in Farmer's Shop.")
    end
end

function OnPerkChanged(player, perk)
    if player ~= LOCAL_PLAYER then return end
    for _, bundle in ipairs(API.GetBundles()) do
        if perk == bundle.reference then
            ShowNotification("Purchased Insta Grows!", string.format("x%s Insta Grows added to your balance.", bundle.rewardAmount))
            Events.Broadcast("ToggleUI", "FarmerShop", false)
            return
        end
    end
end

function OnRewardClaim(amount)
    ShowNotification("Reward Claimed", string.format("x%s daily Insta Grows added to your balance.", amount))
end

LOCAL_PLAYER.perkChangedEvent:Connect(OnPerkChanged)
Events.Connect("InstaGrowRewardAvailable", OnRewardsEvent)
Events.Connect("InstaGrowRewardClaim", OnRewardClaim)