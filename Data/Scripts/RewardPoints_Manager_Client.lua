local API = require(script:GetCustomProperty("RewardPoints_API"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

local SCROLL_PANEL = script:GetCustomProperty("RewardPointsScrollPanel"):WaitForObject()
local REWARD_POINT_GAMES_BUTTON = script:GetCustomProperty("RewardPointGames"):WaitForObject()
local REWARD_POINT_QUEST_BUTTON = script:GetCustomProperty("RewardPointQuests"):WaitForObject()

local NotificationStartDelay = script:GetCustomProperty("NotificationStartDelay")
local NOTIFICATION_COLOR = script:GetCustomProperty("NotificationColor")
local NOTIFICATION_TEXT_COLOR = script:GetCustomProperty("NotificationTextColor")
local NOTIFICATION_BODY_COLOR = script:GetCustomProperty("NotificationBodyColor")
local ICON = script:GetCustomProperty("Icon")

local PANEL_TEMPLATE = script:GetCustomProperty("Helper_RewardPointsPanel")

local function CleanUpScrollPanel()
    for _, child in ipairs(SCROLL_PANEL:GetChildren()) do
        if Object.IsValid(child) then
            child:Destroy()
        end
    end
end

function ConstructPanel()
    local rewardPointProgress = LOCAL_PLAYER:GetPrivateNetworkedData("RewardPointClient")

    local count = 0
    for i, reward in ipairs(API.RewardPoints) do
        local newPanel = World.SpawnAsset(PANEL_TEMPLATE, {parent = SCROLL_PANEL})

        newPanel:GetCustomProperty("TitleText"):WaitForObject().text = reward.name

        --#TODO Need description
        local propDescriptionText = newPanel:GetCustomProperty("DescriptionText"):WaitForObject()
        local propRewardsLabel = newPanel:GetCustomProperty("RewardsLabel"):WaitForObject()

        local rewardPanel = newPanel:GetCustomProperty("RewardPanel"):WaitForObject()
        rewardPanel:GetCustomProperty("RewardText"):WaitForObject().text = tostring(reward.amount)

        if rewardPointProgress[i] == "Claimed" then
            newPanel:GetCustomProperty("ProgressPanel"):WaitForObject().visibility = Visibility.FORCE_OFF
            newPanel:GetCustomProperty("CompleteLabel"):WaitForObject().visibility = Visibility.FORCE_ON
        else
            local progressPanel = newPanel:GetCustomProperty("ProgressPanel"):WaitForObject()
            progressPanel:GetCustomProperty("ProgressBar"):WaitForObject().progress =
                rewardPointProgress[i] / reward.required
            progressPanel:GetCustomProperty("ProgressText"):WaitForObject().text =
                tostring(rewardPointProgress[i]) .. "  / " .. tostring(reward.required)
        end

        --        local propCompleteLabel = newPanel:GetCustomProperty("CompleteLabel"):WaitForObject()

        newPanel.y = count * 100
        count = count + 1
    end
end

function ToggleUI(uniqueId)
    if uniqueId == "RewardPointsUI" then
        CleanUpScrollPanel()
        ConstructPanel()
    end
end

function OnButtonClicked(button)
    if button == REWARD_POINT_GAMES_BUTTON then
        Events.Broadcast("ToggleUI", "")
        UI.SetRewardsDialogVisible(true, RewardsDialogTab.GAMES)
    elseif button == REWARD_POINT_QUEST_BUTTON then
        Events.Broadcast("ToggleUI", "")
        UI.SetRewardsDialogVisible(true, RewardsDialogTab.QUESTS)
    end
end

function OnDataChanged(player, key)
    if key == "RewardPoints" then
        local data = player:GetPrivateNetworkedData(key)
        if data and data.name and data.amount then
            local message = "(" .. tostring(data.amount) .. ") Reward Points Granted"
            Events.Broadcast(
                "ShowNotification",
                data.name .. " Completed",
                message,
                NOTIFICATION_COLOR,
                ICON,
                Color.WHITE,
                NOTIFICATION_TEXT_COLOR,
                NOTIFICATION_BODY_COLOR
            )
        end
    end
end

-- Connect UI events
Events.Connect("ToggleUI", ToggleUI)
-- handler params: Player_player, string_key
LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(OnDataChanged)
REWARD_POINT_GAMES_BUTTON.clickedEvent:Connect(OnButtonClicked)
REWARD_POINT_QUEST_BUTTON.clickedEvent:Connect(OnButtonClicked)
