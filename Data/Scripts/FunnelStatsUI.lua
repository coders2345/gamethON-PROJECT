------------------------------------------------------------------------------------------------------------------------
-- FunnelStatsUI
-- Author: Morticai (META) (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 10/15/2020
-- Version 1.0
------------------------------------------------------------------------------------------------------------------------
-- UI Manager for Funnel Stats
------------------------------------------------------------------------------------------------------------------------
-- Require
------------------------------------------------------------------------------------------------------------------------
local FunnelData = require(script:GetCustomProperty("FunnelStepsData"))
------------------------------------------------------------------------------------------------------------------------
-- Objects
------------------------------------------------------------------------------------------------------------------------
local LocalPlayer = Game.GetLocalPlayer()
local ROOT = script:GetCustomProperty("FunnelStatTracker"):WaitForObject()
local ParentPanel = script:GetCustomProperty("ParentPanel"):WaitForObject()
local StatsScrollPanel = script:GetCustomProperty("StatsScrollPanel"):WaitForObject()
local SampleSetSize = script:GetCustomProperty("SampleSetSize"):WaitForObject()
local PlayerStats = script:GetCustomProperty("PlayerStats"):WaitForObject()
local StepsStats = script:GetCustomProperty("StepsStats"):WaitForObject()
local PlayerParentPanel = script:GetCustomProperty("PlayerParentPanel"):WaitForObject()
local StepsParentPanel = script:GetCustomProperty("StepsParentPanel"):WaitForObject()
local PlayerScrollPanel = script:GetCustomProperty("PlayerScrollPanel"):WaitForObject()
local D1Retention = script:GetCustomProperty("D1Retention"):WaitForObject()
local NoDataText = script:GetCustomProperty("NoData"):WaitForObject()
local ATestGroup = script:GetCustomProperty("ATestGroup"):WaitForObject()
local BTestGroup = script:GetCustomProperty("BTestGroup"):WaitForObject()
local AllTestGroup = script:GetCustomProperty("AllTestGroup"):WaitForObject()
local Title = script:GetCustomProperty("Title"):WaitForObject()
local TestProgress = script:GetCustomProperty("TestProgress"):WaitForObject()
local TestProgressText = script:GetCustomProperty("TestProgressText"):WaitForObject()
local TestCompleteDay = script:GetCustomProperty("TestCompleteDay"):WaitForObject()
------------------------------------------------------------------------------------------------------------------------
-- Custom Properties
------------------------------------------------------------------------------------------------------------------------
local KEYBIND = ROOT:GetCustomProperty("AnalyticsPanelKeybind")
local DEV_MODE = ROOT:GetCustomProperty("isDevMode")
------------------------------------------------------------------------------------------------------------------------
-- Templates
------------------------------------------------------------------------------------------------------------------------
local StepsPanelTemp = script:GetCustomProperty("StepsPanel")
local PlayerStatsPanelTemp = script:GetCustomProperty("PlayerStatsPanel")
------------------------------------------------------------------------------------------------------------------------
-- Constants
------------------------------------------------------------------------------------------------------------------------
local ADMIN_TABLE = {
    "b4c6e32137e54571814b5e8f27aa2fcd",
    "d1073dbcc404405cbef8ce728e53d380",
    "94d3fd50c4824f019421895ec8dbf099",
    "901b7628983c4c8db4282f24afeda57a"
}
------------------------------------------------------------------------------------------------------------------------
-- Variables
------------------------------------------------------------------------------------------------------------------------
local isMenuOpen = false
local spawnedStepsPanel = {}
local spawnedPlayersPanel = {}
local events = {}
local testGroupId, spamPrevent
local defaultTestButton = BTestGroup:GetButtonColor()
------------------------------------------------------------------------------------------------------------------------
-- Local Functions
------------------------------------------------------------------------------------------------------------------------
--Used for spam prevention
--@return bool
local function isAllowed()
    local timeNow = os.clock()
    if spamPrevent ~= nil and (timeNow - spamPrevent) < 1 then
        return false
    end
    spamPrevent = timeNow
    return true
end

--@params object button
local function OnStepHover(button)
    for _, child in ipairs(button.clientUserData.panel:GetChildren()) do
        if child.name == "Background" then
            child:SetColor(Color.SMOKE)
        end
    end
end

--@params object button
local function OnStepUnhover(button)
    for _, child in ipairs(button.clientUserData.panel:GetChildren()) do
        if child.name == "Background" then
            child:SetColor(Color.BLACK)
        end
    end
end

--@params object button
local function OnPanelToggle(button)
    if button.name == "StepsStats" then
        PlayerParentPanel.visibility = Visibility.FORCE_OFF
        StepsParentPanel.visibility = Visibility.FORCE_ON
        AllTestGroup.isEnabled = true
        ATestGroup.isEnabled = true
        BTestGroup.isEnabled = true
        Title.text = "All Step Stats"
    elseif button.name == "PlayerStats" then
        PlayerParentPanel.visibility = Visibility.FORCE_ON
        StepsParentPanel.visibility = Visibility.FORCE_OFF
        AllTestGroup.isEnabled = false
        ATestGroup.isEnabled = false
        BTestGroup.isEnabled = false
        Title.text = "Player Stats"
    end
end

local function BuildPlayerStatsPanel()
    local panelCount = 1
    local playerTable = _G.Funnel.GetAllPlayerStepsString()
    local sessionTable = _G.Funnel.GetSessionTimeTable()
    if playerTable ~= nil then
        NoDataText.visibility = Visibility.FORCE_OFF
        for entry, stepString in pairs(playerTable) do
            spawnedPlayersPanel[panelCount] = World.SpawnAsset(PlayerStatsPanelTemp, {parent = PlayerScrollPanel})
            spawnedPlayersPanel[panelCount].y = 40 * (panelCount - 1)
            for _, child in ipairs(spawnedPlayersPanel[panelCount]:GetChildren()) do
                if child.name == "ID" then
                    child.text = tostring(panelCount) .. ")"
                elseif child.name == "PlayerName" then
                    child.text = tostring(entry.name)
                elseif child.name == "Steps" then
                    child.text = stepString
                elseif child.name == "Hover" then
                    events[#events + 1] = child.hoveredEvent:Connect(OnStepHover)
                    events[#events + 1] = child.unhoveredEvent:Connect(OnStepUnhover)
                    child.clientUserData.panel = spawnedPlayersPanel[panelCount]
                elseif child.name == "Session Time" and sessionTable[entry.id] ~= nil and sessionTable[entry.id] ~= "" then
                    local hours = math.floor(tonumber(sessionTable[entry.id]) / 3600)
                    local minutes = math.floor(tonumber(sessionTable[entry.id])) // 60 % 60
                    local seconds = math.floor(tonumber(sessionTable[entry.id])) % 60
                    if minutes ~= nil and seconds ~= nil and hours ~= nil then
                        child.text = string.format("%02d:%02d:%02d", hours, minutes, seconds)
                    else
                        child.text = "00:00:00"
                    end
                end
            end
            panelCount = panelCount + 1
        end
    end
end

--#TODO Starting to be a massive function, needs a refactor
local function BuildStepsPanel()
    local panelCount = 0
    local previousStep
    local stepCompleteTbl = _G.Funnel.GetAmountStepCompletedTable(testGroupId)
    local sampleSetSize = _G.Funnel.GetSampleSetCount(testGroupId)
    if stepCompleteTbl ~= nil and sampleSetSize ~= nil then
        NoDataText.visibility = Visibility.FORCE_OFF
        for index, step in ipairs(FunnelData.GetTbl()) do
            spawnedStepsPanel[index] = World.SpawnAsset(StepsPanelTemp, {parent = StatsScrollPanel})
            spawnedStepsPanel[index].y = 40 * panelCount
            panelCount = panelCount + 1
            for _, child in ipairs(spawnedStepsPanel[index]:GetChildren()) do
                if child.name == "ID" then
                    child.text = tostring(index) .. ")"
                elseif child.name == "StepName" then
                    child.text = step.name
                elseif child.name == "Hover" then
                    events[#events + 1] = child.hoveredEvent:Connect(OnStepHover)
                    events[#events + 1] = child.unhoveredEvent:Connect(OnStepUnhover)
                    child.clientUserData.panel = spawnedStepsPanel[index]
                elseif child.name == "PrecentComplete" then
                    for i, step in ipairs(stepCompleteTbl) do
                        if index == i then
                            local stepComplete = CoreMath.Round(step / sampleSetSize, 2) * 100
                            print(stepComplete)
                            if stepComplete > 0 and stepComplete <= 999 or stepComplete < 0 and stepComplete >= -999 then
                                child.text = tostring(stepComplete) .. "%"
                            else
                                child.text = "N/A"
                            end
                        end
                    end
                elseif child.name == "Delta" then
                    for i, step in ipairs(stepCompleteTbl) do
                        if index == i then
                            if previousStep then
                                local delta =
                                    CoreMath.Round((step / sampleSetSize * 100) - (previousStep / sampleSetSize) * 100)
                                if delta > 0 and delta <= 100 and delta ~= math.huge then
                                    child.text = tostring(delta) .. "%"
                                    child:SetColor(Color.GREEN)
                                elseif delta < 0 and delta >= -100 and delta ~= math.huge then
                                    child.text = tostring(delta) .. "%"
                                    child:SetColor(Color.RED)
                                else
                                    child.text = ""
                                end
                            else
                                child.text = ""
                            end
                            previousStep = step
                        end
                    end
                elseif child.name == "NotCompleted" then
                    for i, step in ipairs(stepCompleteTbl) do
                        if index == i then
                            child.text = tostring(sampleSetSize - step)
                        end
                    end
                elseif child.name == "Total Completed" then
                    for i, step in ipairs(stepCompleteTbl) do
                        if index == i then
                            child.text = tostring(step)
                        end
                    end
                end
            end
        end
    end
end

--@params float dec
local function GetD1RetentionColor(dec)
    if dec < 5 then
        return Color.RED
    elseif dec >= 5 and dec < 15 then
        return Color.YELLOW
    elseif dec > 15 then
        return Color.GREEN
    end
    return Color.WHITE
end

local function SetBottomBarStats()
    local sampleSize = _G.Funnel.GetSampleSetCount(testGroupId)
    if sampleSize ~= nil then
        SampleSetSize.text = tostring(sampleSize)
        local D1RetentionDec =
            CoreMath.Round(_G.Funnel.GetD1Retention() / _G.Funnel.GetTotalPlayersDayOneTestComplete(), 2)
        if D1RetentionDec > 0.01 and D1RetentionDec <= 100 then
            D1Retention.text = tostring(D1RetentionDec) .. "%"
            D1Retention:SetColor(GetD1RetentionColor(D1RetentionDec))
        else
            D1Retention.text = "NA"
            D1Retention:SetColor(Color.WHITE)
        end
    end
end

local function UpdateProgressBar()
    if _G.Funnel.GetTotalPlayersDayOneTestComplete() ~= nil and _G.Funnel.GetTestGroupSize() ~= nil then
        local progress = _G.Funnel.GetTotalPlayersDayOneTestComplete() / _G.Funnel.GetTestGroupSize()
        TestProgress.progress = progress
        TestProgressText.text = tostring(CoreMath.Round(progress * 100)) .. "%"
    else
        TestProgress.progress = 0
        TestProgressText.text = tostring("0%")
    end
end

local function BuildPanels()
    NoDataText.visibility = Visibility.FORCE_ON
    BuildStepsPanel()
    BuildPlayerStatsPanel()
    SetBottomBarStats()
    UpdateProgressBar()
    local previousDayPlayed = _G.Funnel.GetTotalPlayersDayOneTestComplete()
    if previousDayPlayed ~= nil and previousDayPlayed ~= 0 then
        TestCompleteDay.text = tostring(CoreMath.Round(_G.Funnel.GetTestGroupSize() / previousDayPlayed)) .. " Days"
    else
        TestCompleteDay.text = "N/A"
    end
    events[#events + 1] = PlayerStats.clickedEvent:Connect(OnPanelToggle)
    events[#events + 1] = StepsStats.clickedEvent:Connect(OnPanelToggle)
    events[#events + 1] = ATestGroup.clickedEvent:Connect(OnTestgroupToggle)
    events[#events + 1] = BTestGroup.clickedEvent:Connect(OnTestgroupToggle)
    events[#events + 1] = AllTestGroup.clickedEvent:Connect(OnTestgroupToggle)
end

local function DestroyStepsPanels()
    for _, panel in ipairs(spawnedStepsPanel) do
        if Object.IsValid(panel) then
            panel:Destroy()
        end
    end
    spawnedStepsPanel = {}
end

local function DestroyPlayerPanels()
    for _, panel in ipairs(spawnedPlayersPanel) do
        if Object.IsValid(panel) then
            panel:Destroy()
        end
    end
    spawnedPlayersPanel = {}
end

local function DestroyEventListeners()
    for _, Event in pairs(events) do
        if Object.IsValid(Event) then
            Event:Disconnect()
        end
    end
    events = {}
end

local function DestroyPanels()
    DestroyStepsPanels()
    DestroyPlayerPanels()
    DestroyEventListeners()
end

local function ToggleUI(bool)
    isMenuOpen = bool
    UI.SetCursorVisible(bool)
    UI.SetCanCursorInteractWithUI(bool)
    UI.SetCursorLockedToViewport(bool)
    if bool then
        LocalPlayer:GetActiveCamera().isDistanceAdjustable = false
        ParentPanel.visibility = Visibility.FORCE_ON
        BuildPanels()
    else
        LocalPlayer:GetActiveCamera().isDistanceAdjustable = true
        ParentPanel.visibility = Visibility.FORCE_OFF
        DestroyPanels()
    end
end

local function ResetTestGroupButtonColors()
    AllTestGroup:SetButtonColor(defaultTestButton)
    ATestGroup:SetButtonColor(defaultTestButton)
    BTestGroup:SetButtonColor(defaultTestButton)
end

------------------------------------------------------------------------------------------------------------------------
-- Global Functions
------------------------------------------------------------------------------------------------------------------------
function OnTestgroupToggle(button)
    if isAllowed() then
        DestroyStepsPanels()
        ResetTestGroupButtonColors()
        if button.name == "A-TestGroup" then
            testGroupId = 1
            Title.text = "A Group Step Stats"
            ATestGroup:SetButtonColor(Color.YELLOW)
        elseif button.name == "B-TestGroup" then
            testGroupId = 2
            Title.text = "B Group Step Stats"
            BTestGroup:SetButtonColor(Color.YELLOW)
        elseif button.name == "All-TestGroup" then
            testGroupId = nil
            Title.text = "All Step Stats"
            AllTestGroup:SetButtonColor(Color.YELLOW)
        end
        SetBottomBarStats()
        BuildStepsPanel()
    end
end

function Int()
    repeat
        Leaderboards.HasLeaderboards()
        Task.Wait(0.1)
    until true
    if not DEV_MODE then
        for _, id in ipairs(ADMIN_TABLE) do
            if id == LocalPlayer.id then
                LocalPlayer.bindingPressedEvent:Connect(OnBindingPressed)
            end
        end
    else
        LocalPlayer.bindingPressedEvent:Connect(OnBindingPressed)
    end
end

function OnBindingPressed(Player, keyPressed)
    if Player == LocalPlayer then
        if keyPressed == KEYBIND and not isMenuOpen then
            ToggleUI(true)
        elseif keyPressed == KEYBIND and isMenuOpen then
            ToggleUI(false)
        end
    end
end
------------------------------------------------------------------------------------------------------------------------
-- Initialize
------------------------------------------------------------------------------------------------------------------------
Int()
------------------------------------------------------------------------------------------------------------------------
