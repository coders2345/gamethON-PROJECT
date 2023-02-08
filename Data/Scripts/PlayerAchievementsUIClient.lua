local ACHIEVEMENT_LIBRARY, ACHIEVEMENTS = require(script:GetCustomProperty("AchievementsLibrary"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local API_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local ACHIEVEMENT_PANEL_ASSET = script:GetCustomProperty("AchievementPanel")

local PANEL = script:GetCustomProperty("PlayerAchievementsPanel"):WaitForObject()
local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local PROFILE_PANEL = GET(PANEL, "PlayerProfilePanel")
local SCROLL_PANEL = GET(PANEL, "AchievementScrollPanel")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function CompareAchievements(id1, id2)

    local id1Unlocked = ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(LOCAL_PLAYER, id1)
    local id1Claimed = ACHIEVEMENT_LIBRARY.IsAchievementRewardsClaimed(LOCAL_PLAYER, id1)

    local id2Unlocked = ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(LOCAL_PLAYER, id2)
    local id2Claimed = ACHIEVEMENT_LIBRARY.IsAchievementRewardsClaimed(LOCAL_PLAYER, id2)

    if id1Claimed ~= id2Claimed then
        return id2Claimed
    end

    if id1Unlocked ~= id2Unlocked then
        return id1Unlocked
    end

    return ACHIEVEMENTS[id1].name < ACHIEVEMENTS[id2].name
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

function UpdatePlayerProfile()
    GET(PROFILE_PANEL, "FarmerName").text = LOCAL_PLAYER.name
    GET(PROFILE_PANEL, "JoinedDate").text = "Joined Date: "..os.date("%x", STATS_LIBRARY.GetStat(LOCAL_PLAYER, "StartTime"))
end

function PopulateAchievements()
    local dependentAchievements = ACHIEVEMENT_LIBRARY.GetDependentAchievements()

    local sortedList = {}
    for id, _ in pairs(dependentAchievements) do
        table.insert(sortedList, id)
    end
    table.sort(sortedList, CompareAchievements)

    local count = 0
    for _, achievId in ipairs(sortedList) do
        local data = ACHIEVEMENTS[achievId]
        if ACHIEVEMENT_LIBRARY.CheckRequiredAchievements(LOCAL_PLAYER, data) or data["isDefaultTask"] then
            local newItem = World.SpawnAsset(ACHIEVEMENT_PANEL_ASSET, {parent = SCROLL_PANEL})

            -- Saving id for button reference
            newItem.clientUserData.id = achievId

            GET(newItem, "TitleText").text = data.name
            GET(newItem, "DescriptionText").text = data.description

            local rewardsLabel = GET(newItem, "RewardsLabel")
            local rewardPanel = GET(newItem, "RewardPanel")
            local progressPanel = GET(newItem, "ProgressPanel")
            local completeLabel = GET(newItem, "CompleteLabel")
            local collectButton = GET(newItem, "CollectRewardButton")

            rewardsLabel.visibility = Visibility.FORCE_OFF
            rewardPanel.visibility = Visibility.FORCE_OFF
            progressPanel.visibility = Visibility.FORCE_OFF
            completeLabel.visibility = Visibility.FORCE_OFF
            collectButton.visibility = Visibility.FORCE_OFF

            if ACHIEVEMENT_LIBRARY.IsAchievementRewardsClaimed(LOCAL_PLAYER, achievId) then
                completeLabel.visibility = Visibility.INHERIT
            else
                -- Updating reward text
                rewardsLabel.visibility = Visibility.INHERIT
                rewardPanel.visibility = Visibility.INHERIT

                local rewardText = GET(rewardPanel, "RewardText")
                local rewardIcon = GET(rewardPanel, "RewardIcon")

                local resourceReward = ""
                local resourceRewardAmount = ""

                for key, value in pairs(data["rewardStats"]) do
                    resourceReward = key
                    resourceRewardAmount = value
                end

                rewardText.text = string.format("x%d %s", resourceRewardAmount, STATS_LIST[resourceReward].name)
                rewardIcon:SetImage(STATS_LIST[resourceReward].icon)
                --rewardIcon:SetColor(STATS_LIST[resourceReward].iconColor)

                if not ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(LOCAL_PLAYER, achievId) then
                    -- Updating progress bar
                    progressPanel.visibility = Visibility.INHERIT
                    local progressBar = GET(progressPanel, "ProgressBar")
                    local progressBarText = GET(progressPanel, "ProgressText")

                    local requiredResource = ""
                    local requiredResourceAmount = ""

                    for key, value in pairs(data["requiredStats"]) do
                        requiredResource = key
                        requiredResourceAmount = value
                    end

                    local currentResource = STATS_LIBRARY.GetStat(LOCAL_PLAYER, requiredResource)

                    if data.isDefaultTask and #data.requiredAchievements > 0 then
                        local lastRequirementValue = dependentAchievements[data.requiredAchievements[1]][requiredResource]
                        progressBar.progress = CoreMath.Clamp((currentResource - lastRequirementValue)/(requiredResourceAmount - lastRequirementValue))
                        progressBarText.text = string.format("%d/%d", currentResource - lastRequirementValue, requiredResourceAmount - lastRequirementValue)
                    else
                        progressBar.progress = CoreMath.Clamp(currentResource/requiredResourceAmount)
                        progressBarText.text = string.format("%d/%d", currentResource, requiredResourceAmount)
                    end
                else
                    collectButton.isInteractable = true
                    collectButton.visibility = Visibility.INHERIT
                    collectButton.clickedEvent:Connect(function()
                        if CheckAchievementRewards(LOCAL_PLAYER, data) then
                            Events.BroadcastToServer("TryClaimAchievement", LOCAL_PLAYER, achievId)
                        else
                            local message = "Can't claim achievement rewards due insufficient storage capacity. Please upgrade your Barn Storage."
                            Events.Broadcast("ShowNotification", "Full Barn Storage!", message, Color.RUBY,
                            API_STORAGE.GetStorageIcon(), Color.WHITE, Color.WHITE, Color.WHITE)
                        end
                        collectButton.isInteractable = false
                        Task.Wait(1)
                        if Object.IsValid(script) then
                            ResetUI()
                        end
                    end)
                end
            end

            newItem.y = newItem.y + count * newItem.height
            count = count + 1
        end
    end
end

function ResetUI()
    -- Cleanup all children
    for _, child in ipairs(SCROLL_PANEL:GetChildren()) do
        child:Destroy()
    end
    PopulateAchievements()
    UpdatePlayerProfile()
end

function ToggleUI (uniqueId)
    if uniqueId == "PlayerAchievementsUI" then
        ResetUI()
    end
end

function OnAchievementClaimed (achievementId)
    local data = ACHIEVEMENTS[achievementId]
    if not data then return end
    for key, value in pairs(data["rewardStats"]) do
        for _, resource in ipairs(API_STORAGE.GetValidResources()) do
            if resource == key then
                local message = string.format("Added x%d %s to Barn Storage.", value, STATS_LIST[resource].name)
                Events.Broadcast("ShowNotification", "Achievement Rewards Claimed!", message, Color.BLACK,
                STATS_LIST[resource].icon, Color.WHITE, Color.EMERALD, Color.GREY)
            end
        end
    end
    _G.AnalyticsFacade.TrackAchivements(LOCAL_PLAYER, "TrackAchievement", achievementId)
end

function OnStatChanged(player, statId, _)
    if player ~= LOCAL_PLAYER then return end
    if ACHIEVEMENTS[statId] then
        ResetUI()
    end
end

-- Connect events
Events.Connect("ToggleUI", ToggleUI)
Events.Connect("AchievementClaimed", OnAchievementClaimed)
Events.Connect("StatChangedEvent", OnStatChanged)

ResetUI()

