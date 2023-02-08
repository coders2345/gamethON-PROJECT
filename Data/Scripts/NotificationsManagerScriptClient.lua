--[[
USAGE:
Events.Broadcast("ShowNotification", "LABEL", "DESCRIPTION", bgColor, iconAssetId, iconColor, labelColor, bodyColor)

Note:
background color, iconAssetId and iconColor are optional parameters

--]]
local NOTIFICATION_PANEL = script:GetCustomProperty("NotificationPanel")
local UI_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local ACHIEVEMENT_LIBRARY, ACHIEVEMENTS = require(script:GetCustomProperty("Achievements"))
local UI_PANEL = script:GetCustomProperty("UIPanel"):WaitForObject()

local currentDisplay = {}

function ShowNotification(label, body, backgroundColor, iconAssetId, iconColor, labelColor, bodyColor)
    -- move current notifications down
    for k, v in pairs(currentDisplay) do
        if Object.IsValid(v) then
            Events.Broadcast("MoveNotificationDown", v)
        end
    end

    local panel = World.SpawnAsset(NOTIFICATION_PANEL, {parent = UI_PANEL})
    -- push to top of stack
    table.insert(currentDisplay, panel)

    Events.Broadcast("ShowNotificationPanel", currentDisplay[#currentDisplay], label, body, backgroundColor, iconAssetId, iconColor, labelColor, bodyColor)
end

function HandleNotificationComplete(inPanel)
    -- remove from current display
    for k, panel in pairs(currentDisplay) do
        if panel == inPanel then
            local rpanel = table.remove(currentDisplay, k)
            rpanel:Destroy()
            return
        end
    end
end

Events.Connect("NotificationComplete", HandleNotificationComplete)
Events.Connect("ShowNotification", ShowNotification)

local DEBUG = false
local iconAssetId = nil
if DEBUG then
    function Tick()
        --Events.Broadcast("ShowNotification", "LABEL", "DESCRIPTION", Color.RED, iconAssetId, Color.GREEN, Color.BLUE, Color.YELLOW)
        Events.Broadcast("AchievementUnlocked", "achievement1")
        Task.Wait(0.5)
    end
end