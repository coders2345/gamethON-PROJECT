local API = require(script:GetCustomProperty("API"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local REWARD_TEXT = script:GetCustomProperty("RewardText"):WaitForObject()
local TIMER_TEXT = script:GetCustomProperty("TimerText"):WaitForObject()
local CLAIM_BUTTON = script:GetCustomProperty("ClaimButton"):WaitForObject()
local VIEW_PANEL = script:GetCustomProperty("NormalViewPanel"):WaitForObject()
local VIP_VIEW_PANEL = script:GetCustomProperty("VIPViewPanel"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function Tick()
    if not API.IsReadyToClaim() then
        TIMER_TEXT.text = "Next Reward: "..UTILITIES_LIBRARY.UpdateTimeRemaining(API.GetRemainingTime())
    else
        TIMER_TEXT.text = "Ready to Claim Your Reward"
    end
end

function Refresh()
    local rewardValue, isMember = API.GetRewardAmount()
    REWARD_TEXT.text = tostring(rewardValue)

    VIEW_PANEL.visibility = Visibility.FORCE_OFF
    VIP_VIEW_PANEL.visibility = Visibility.FORCE_OFF
    CLAIM_BUTTON.isInteractable = false

    if isMember then
        VIP_VIEW_PANEL.visibility = Visibility.INHERIT
    else
        VIEW_PANEL.visibility = Visibility.INHERIT
    end

    if API.IsReadyToClaim() then
        CLAIM_BUTTON.isInteractable = true
    end
end

function OnClaimButtonClicked()
    CLAIM_BUTTON.isInteractable = false
    API.UpdateClientTime()

    local result = Events.BroadcastToServer("InstaGrowRewardClaim", API.GetRewardAmount())
    if result == BroadcastEventResultCode.SUCCESS then
        Events.Broadcast("InstaGrowRewardClaim", API.GetRewardAmount())
    end
end

function OnResourceChangedEvent(player, resource)
    if LOCAL_PLAYER ~= player then return end
    if resource == "InstaGrowLastTime"
    or resource == "InstaGrowLastServerTime" then
        Refresh()
    end
end

function OnRewardsEvent()
    Refresh()
end

function OnToggleUI(uniqueId)
    if uniqueId == "FarmerShop" then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnResourceChangedEvent)
Events.Connect("InstaGrowRewardAvailable", OnRewardsEvent)
Events.Connect("ToggleUI", OnToggleUI)

CLAIM_BUTTON.clickedEvent:Connect(OnClaimButtonClicked)
LOCAL_PLAYER.perkChangedEvent:Connect(Refresh)