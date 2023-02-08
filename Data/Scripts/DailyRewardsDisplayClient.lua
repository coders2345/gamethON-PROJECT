-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local DAILY_REWARDS_LIBRARY = require(script:GetCustomProperty("DailyRewardsLibrary"))
local _, STAT_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local REWARDS_PANEL = script:GetCustomProperty("RewardsPanel"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local GET = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local TIMER_TEXT = GET(script, "TimerText")

function Tick()
    if not API.IsReadyToClaim() then
        TIMER_TEXT.text = "Next Reward Available in: "..UTILITIES_LIBRARY.UpdateTimeRemaining(API.GetRemainingTime())
    else
        TIMER_TEXT.text = "Ready to Claim Your Reward"
    end
end

function Refresh()
    local weekDays = API.GetStats().weekDays
    local lastDay = API.GetStats().lastDay
    local daySeconds = API.GetStats().daySeconds

    local rewardStartDay = math.floor(lastDay/weekDays) * weekDays
    if lastDay % weekDays == 0 and rewardStartDay > 0 and API.GetProgress() < daySeconds then
        rewardStartDay = rewardStartDay - weekDays
    end

    for i, child in ipairs(REWARDS_PANEL:GetChildren()) do
        local dayIndex = rewardStartDay + i
        local rewardData = DAILY_REWARDS_LIBRARY.GetRewardByIndex(dayIndex)

        GET(child, "NameText").text = STAT_LIST[rewardData.rewardStatName].name
        GET(child, "Icon"):SetImage(STAT_LIST[rewardData.rewardStatName].icon)
        GET(child, "DayText").text = "Day "..tostring(i)

        local amountText = GET(child, "AmountText")
        if API_BARN_STORAGE.IsResourceValid(rewardData.rewardStatName) then
            amountText.text = "x"..tostring(rewardData.rewardStatValue)
        else
            if rewardData.rewardStatName == "Money" then
                amountText.text = "$".. UTILITIES_LIBRARY.FormatMoney(rewardData.rewardStatValue)
            else
                amountText.text = tostring(rewardData.rewardStatValue)
            end
        end

        local claimedPanel = GET(child, "ClaimedPanel")
        local claimButton = GET(child, "ClaimButton")
        local lockIcon = GET(child, "LockIcon")

        claimedPanel.visibility = Visibility.FORCE_OFF
        lockIcon.visibility = Visibility.FORCE_OFF
        claimButton.isInteractable = false
        claimButton.clientUserData.dayIndex = dayIndex

        if dayIndex == lastDay + 1 then
            if API.IsReadyToClaim() then
                claimButton.isInteractable = true
            else
                lockIcon.visibility = Visibility.INHERIT
            end
        elseif dayIndex <= lastDay then
            claimedPanel.visibility = Visibility.INHERIT
        elseif dayIndex > lastDay + 1 then
            lockIcon.visibility = Visibility.INHERIT
        end
    end
end

function Setup()
    for _, child in ipairs(REWARDS_PANEL:GetChildren()) do
        GET(child, "ClaimButton").clickedEvent:Connect(OnClaimButtonClicked)
    end
end

function CanRewardBeClaimed(dayIndex)
    local rewardData = DAILY_REWARDS_LIBRARY.GetRewardByIndex(dayIndex)
    if API_BARN_STORAGE.IsResourceValid(rewardData.rewardStatName) then
        if API_BARN_STORAGE.CheckAvailibility(LOCAL_PLAYER, rewardData.rewardStatValue) then
            return true
        else
            return false
        end
    else
        return true
    end
end

function OnClaimButtonClicked(button)
    local dayIndex = button.clientUserData.dayIndex
    if not CanRewardBeClaimed(dayIndex) then
        API_BARN_STORAGE.ShowErrorNotification()
        return
    end

    button.isInteractable = false
    API.UpdateClientTime()
    local result = Events.BroadcastToServer("DailyRewardClaim", dayIndex)
    if result == BroadcastEventResultCode.SUCCESS then
        Events.Broadcast("DailyRewardClaim", dayIndex)
    end
end

function OnResourceChangedEvent(player, resource)
    if LOCAL_PLAYER ~= player then return end
    if resource == "DailyRewardLastServerTime" then
        Task.Wait(.5)
        Refresh()
    end
end

function OnDailyRewardsEvent()
    Task.Wait()
    Refresh()
end

function OnToggleUI(uniqueId)
    if uniqueId == "FarmerShop" then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnResourceChangedEvent)
Events.Connect("DailyRewardAvailable", OnDailyRewardsEvent)
Events.Connect("ToggleUI", OnToggleUI)

Setup()