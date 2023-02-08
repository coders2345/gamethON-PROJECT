local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local ROOT = script:GetCustomProperty("Upgrades"):WaitForObject()

local NOTIFICATION_COLOR = ROOT:GetCustomProperty("NotificationColor")
local NOTIFICATION_LABEL_COLOR = ROOT:GetCustomProperty("NotificationLabelColor")
local NOTIFICATION_BODY_COLOR = ROOT:GetCustomProperty("NotificationBodyColor")

function CheckMetaData(currentUpgrade, key)
    if currentUpgrade["metaData"] then
        return currentUpgrade["metaData"][key]
    end
end

function HandleStatChanged(player, statId, value)
    if not UPGRADES_LIST[statId] then return end
    Events.Broadcast("UpgradeComplete", player, statId, value)
    local allUpgrades = UPGRADES_LIST[statId]

    local currentUpgrade = allUpgrades[value]
    if currentUpgrade then
        if player ~= Game.GetLocalPlayer() then return end
        if CheckMetaData(currentUpgrade,"disableNotification") then
            return
        end

        -- default notification
        local label = "Upgrade Success"
        local description = "You upgrade was a success!"
        if currentUpgrade["notificationName"] then
            label = currentUpgrade["notificationName"]
        end
        if currentUpgrade["notificationDescription"] then
            description = currentUpgrade["notificationDescription"]
        end
        
        Events.Broadcast("ShowNotification", label, description, NOTIFICATION_COLOR, nil, Color.New(0,0,0,0), NOTIFICATION_LABEL_COLOR, NOTIFICATION_BODY_COLOR)
    else
        warn("Level " .. tostring(value) .. " upgrade for id: " .. tostring(statId) .. " is not specified in upgrades list.")
    end
end

-- Hack to not show initial notification till I think of a better solution
Task.Wait(0.1)
Events.Connect("StatChangedEvent", HandleStatChanged)