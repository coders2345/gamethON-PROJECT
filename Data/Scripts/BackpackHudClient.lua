local PROGRESS_BAR = script:GetCustomProperty("UIProgressBar"):WaitForObject()
local CAPACITY_TEXT = script:GetCustomProperty("CapacityText"):WaitForObject()

local BACKPACK_UPGRADES_LIST, BACKPACK_UPGRADE_HELPER = require(script:GetCustomProperty("BackpackUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local LOCAL_PLAYER = Game.GetLocalPlayer()
local isDetecting = false
local DIG_ALLOWABLE_DISTANCE = 100
function Refresh()
    local currentBackpackLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "BackpackLevel")
    local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(currentBackpackLevel)
    local currentMetalStorage = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "CurMetalStorage")

    CAPACITY_TEXT.text = tostring(currentMetalStorage) .. " / " .. tostring(backpackMaxCapacity)
    PROGRESS_BAR.progress = CoreMath.Clamp(currentMetalStorage / backpackMaxCapacity)
end

function HandleStatChanged(player, statId, value)
    if statId == "BackpackLevel" or statId == "CurMetalStorage" then
        Refresh()
    end
end

function HandleDetectStateChanged(inIsDetecting)
    isDetecting = inIsDetecting
end

function HandleBindingPressed(player, action)
    if action == "ability_primary" then
        if isDetecting and player.clientUserData.PI_DETECT_CONTEXT then
            if player.clientUserData.PI_DETECT_CONTEXT.distanceToTargetSite < DIG_ALLOWABLE_DISTANCE then
                local backpackLevel = STATS_LIBRARY.GetStat(player, "BackpackLevel")
                local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(backpackLevel)
                local currentMetalStorage = STATS_LIBRARY.GetStat(player, "CurMetalStorage")
                if currentMetalStorage >= backpackMaxCapacity then
                    UI.ShowFlyUpText("Cannot Dig. Backpack Full!",player:GetWorldPosition(), { duration = 2, color = Color.RED, isBig = true})
                end
            end
        end
    end
end

LOCAL_PLAYER.bindingPressedEvent:Connect(HandleBindingPressed)
Events.Connect("StartMetalDetection", HandleDetectStateChanged, true)
Events.Connect("StopMetalDetection", HandleDetectStateChanged, false)
Events.Connect("StatChangedEvent", HandleStatChanged)
Refresh()