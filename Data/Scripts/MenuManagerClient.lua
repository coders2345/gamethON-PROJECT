local UI_CONTAINER_TOP = script:GetCustomProperty("UIContainerTop"):WaitForObject()
local UI_CONTAINER_BOTTOM = script:GetCustomProperty("UIContainerBottom"):WaitForObject()
local MENU_PANEL_TEMPLATE = script:GetCustomProperty("MenuPanelTemplate")
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local ACHIEVEMENT_LIBRARY, ACHIEVEMENTS = require(script:GetCustomProperty("AchievementsLibrary"))
local STATS_MENU_ITEM = script:GetCustomProperty("StatsMenuItemPanel")
local ACHIEVEMENT_MENU_ITEM = script:GetCustomProperty("AchievementMenuItemPanel")
local TASK_MENU_ITEM = script:GetCustomProperty("TasksMenuItemPanel")

local Tween = require(script:GetCustomProperty("Tween"))

local Get = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local statsMenu = nil
local achievementsMenu = nil
local tasksMenu = nil

local statsTweenIn = nil 
local statsTweenOut = nil 

local achievementsTweenIn = nil 
local achievementsTweenOut = nil 

local tasksTweenIn = nil 
local tasksTweenOut = nil 

local showStats = false
local showAchievements = false
local showTasks = false

local LOCAL_PLAYER = Game.GetLocalPlayer()

function PopulateStats()
    local panel = Get(statsMenu, "UIScrollPanel")
    local count = 0
    for k, _ in pairs(STATS_LIST) do
        local value = STATS_LIBRARY.GetStat(LOCAL_PLAYER, k)
        local newItem = World.SpawnAsset(STATS_MENU_ITEM, {parent = panel})
        newItem.x = 0
        newItem.y = newItem.height * count + 10
        newItem.clientUserData.id = k
        Get(newItem, "Label").text = tostring(STATS_LIST[k].name)
        Get(newItem, "Body").text = tostring(value)
        count = count + 1
    end
end

function PopulateAchievements()
    local panel = Get(achievementsMenu, "UIScrollPanel")
    local count = 0
    for k, v in pairs(ACHIEVEMENTS) do
        local newItem = World.SpawnAsset(ACHIEVEMENT_MENU_ITEM, {parent = panel})
        newItem.x = 0
        newItem.y = newItem.height * count + 10
        local achievement = v.name
        newItem.clientUserData.id = k
        Get(newItem, "Label").text = tostring(v.name)
        Get(newItem, "Body").text = tostring(v.description)
        count = count + 1
    end
end

function  GetAchParamsText(paramsTable)
    local count = 0
    local conCatText = ""
    if paramsTable then
        for k, v in pairs(paramsTable) do
            if ACHIEVEMENTS[v] and ACHIEVEMENTS[v].name then
                conCatText = conCatText ..  ACHIEVEMENTS[v].name .. "\n"
                count = count + 1
            end
        end 
    end
    return conCatText, count
end

function GetStatParamsText(paramsTable)
    local count = 0
    local conCatText = ""
    if paramsTable then
        for k, v in pairs(paramsTable) do
            conCatText = conCatText ..  STATS_LIST[k].name .. " " .. tostring(v) .. "\n"
            count = count + 1
        end 
    end
    return conCatText, count
end

function PopulateTasks()
    local dependentAchievements = ACHIEVEMENT_LIBRARY.GetDependentAchievements()

    local panel = Get(tasksMenu, "UIScrollPanel")
    local count = 0
    local prevHeight = 0
    local prevY = 0
    local statPadding = 40
    for k, v in pairs(dependentAchievements) do
        if ACHIEVEMENT_LIBRARY.CheckRequiredAchievements(LOCAL_PLAYER, v) or v["isDefaultTask"] then
            local rewardsDisplayText, numRewards = GetStatParamsText(v["rewardStats"])
            local requiredDisplayText, numRequired = GetStatParamsText(v["requiredStats"])
            print(k)
            print(#v["requiredAchievements"])
            local requiredAchDisplayText, numAchRequired = GetAchParamsText(v["requiredAchievements"])
            local newItem = World.SpawnAsset(TASK_MENU_ITEM, {parent = panel})

            newItem.clientUserData.id = k
            Get(newItem, "Label").text = tostring(v.name)
            if ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(LOCAL_PLAYER, k) then
                Get(newItem, "ClaimButton").isInteractable = false
                Get(newItem, "Background"):SetColor(Color.GRAY)
            end

            if numRewards > 0 then
                Get(newItem, "Rewards").text = "Rewards: \n" .. rewardsDisplayText
            else
                Get(newItem, "Rewards").text = ""
            end

            if numRequired > 0 then
                Get(newItem, "Required").text = "Required: \n" .. requiredDisplayText
            else
                Get(newItem, "Required").text = ""
            end

            if numAchRequired > 0 then
                Get(newItem, "Required").text = "Required: \n" .. requiredAchDisplayText
            end
            
            -- Adjust panel height according to amount of text being displayed
            newItem.height = newItem.height + statPadding * math.max(numRewards,numRequired + numAchRequired)
            if prevHeight == 0 then
                newItem.y = newItem.y + count * newItem.height
            else
                newItem.y = prevY + prevHeight
            end
            newItem.x = 0
            prevHeight = newItem.height
            prevY = newItem.y
            count = count + 1
        end
    end
end

function Init()
    statsMenu = World.SpawnAsset(MENU_PANEL_TEMPLATE, {parent = UI_CONTAINER_TOP})
    achievementsMenu = World.SpawnAsset(MENU_PANEL_TEMPLATE, {parent = UI_CONTAINER_BOTTOM})
    tasksMenu = World.SpawnAsset(MENU_PANEL_TEMPLATE, {parent = UI_CONTAINER_BOTTOM})

    Get(statsMenu, "HeaderText").text = "STATS"
    Get(achievementsMenu, "HeaderText").text = "ALL ACHIEVEMENTS"
    Get(tasksMenu, "HeaderText").text = "Tasks"

    statsMenu.visibility = Visibility.FORCE_OFF
    achievementsMenu.visibility = Visibility.FORCE_OFF
    tasksMenu.visibility = Visibility.FORCE_OFF
    
    statsMenu.y = -statsMenu.height
    achievementsMenu.y = -achievementsMenu.height
    tasksMenu.y = -achievementsMenu.height

    statsTweenIn = Tween.new(1, statsMenu, { y = 0}, "outBounce")
    statsTweenOut = Tween.new(0.5, statsMenu, { y = -statsMenu.height}, "inExpo")

    achievementsTweenIn = Tween.new(1, achievementsMenu, { y = 0}, "outBounce")
    achievementsTweenOut = Tween.new(0.5, achievementsMenu, { y = -achievementsMenu.height}, "inExpo")

    tasksTweenIn = Tween.new(1, tasksMenu, { y = 0}, "outBounce")
    tasksTweenOut = Tween.new(0.5, tasksMenu, { y = -tasksMenu.height}, "inExpo")

    PopulateStats()
    PopulateAchievements()
end
Init()

function Tick(dt)
    if statsMenu.visibility == Visibility.FORCE_ON then
        if showStats then
            statsTweenIn:update(dt)
        else
            if statsTweenOut:update(dt) then
                statsMenu.visibility = Visibility.FORCE_OFF
            end
        end

    end

    if achievementsMenu.visibility == Visibility.FORCE_ON then
        if showAchievements then
            achievementsTweenIn:update(dt)
        else
            if achievementsTweenOut:update(dt) then
                achievementsMenu.visibility = Visibility.FORCE_OFF
            end
        end
    end

    if tasksMenu.visibility == Visibility.FORCE_ON then
        if showTasks then
            tasksTweenIn:update(dt)
        else
            if tasksTweenOut:update(dt) then
                tasksMenu.visibility = Visibility.FORCE_OFF
            end
        end
    end
end

function RefreshStats()
    local panel = Get(statsMenu, "UIScrollPanel")
    for k, v in pairs(panel:GetChildren()) do
        local id = v.clientUserData.id
        Get(v, "Body").text = tostring(STATS_LIBRARY.GetStat(LOCAL_PLAYER, id))
    end
end

function RefreshAchievements()
    local panel = Get(achievementsMenu, "UIScrollPanel")
    for k, v in pairs(panel:GetChildren()) do
        local id = v.clientUserData.id
        if not id then
            warn("Something went wrong. No ID assigned to achievement menu item :" .. v.name)
        else
            if ACHIEVEMENT_LIBRARY.IsAchievementUnlocked(LOCAL_PLAYER, id) then
                Get(v, "Check").visibility = Visibility.INHERIT
                Get(v, "Cross").visibility = Visibility.FORCE_OFF
            else
                Get(v, "Cross").visibility = Visibility.INHERIT
                Get(v, "Check").visibility = Visibility.FORCE_OFF
            end
        end
    end
end

function RefreshTasks()
    local panel = Get(tasksMenu, "UIScrollPanel")
    for _, child in ipairs(panel:GetChildren()) do
        if Object.IsValid(child) then
            child:Destroy()
        end
    end
    PopulateTasks()
end

function ToggleStatsMenu(forceOff)
    if forceOff then
        showStats = false
    else
        showStats = not showStats
    end
    statsMenu.visibility = Visibility.FORCE_ON
    if showStats then
        RefreshStats()
        statsTweenIn:reset()
        SetUIInteraction(true)
    else
        statsTweenOut:reset()
        SetUIInteraction(false)
    end
end

function ToggleAchievementsMenu(forceOff)
    if forceOff then
        showAchievements = false
    else
        showAchievements = not showAchievements
    end
    achievementsMenu.visibility = Visibility.FORCE_ON
    if showAchievements then
        RefreshAchievements()
        achievementsTweenIn:reset()
        SetUIInteraction(true)
    else
        achievementsTweenOut:reset()
        SetUIInteraction(false)
    end
end

function ToggleTasks(forceOff)
    if forceOff then
        showTasks = false
    else
        showTasks = not showTasks
    end
    tasksMenu.visibility = Visibility.FORCE_ON
    if showTasks then
        RefreshTasks()
        tasksTweenIn:reset()
        SetUIInteraction(true)
    else
        tasksTweenOut:reset()
        SetUIInteraction(false)
    end
end

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)
end

-- TODO Stop movement when in menu.
function OnBindingPressed(player, binding)
    if player ~= LOCAL_PLAYER then return end
    if (binding == "ability_extra_6") then
        local enableStatsMenu = false
        if enableStatsMenu then
            achievementsMenu.parent = UI_CONTAINER_BOTTOM
            tasksMenu.parent = UI_CONTAINER_BOTTOM
            statsMenu.parent = UI_CONTAINER_TOP
            UI_CONTAINER_BOTTOM.visibility = Visibility.FORCE_OFF
            if achievementsMenu.visibility == Visibility.FORCE_ON or tasksMenu.visibility == Visibility.FORCE_ON then
                ToggleAchievementsMenu(true)
                ToggleTasks(true)
            end
            ToggleStatsMenu()
        end
    end
    if (binding == "ability_extra_7") then
        statsMenu.parent = UI_CONTAINER_BOTTOM
        tasksMenu.parent = UI_CONTAINER_BOTTOM
        achievementsMenu.parent = UI_CONTAINER_TOP
        UI_CONTAINER_BOTTOM.visibility = Visibility.FORCE_OFF
        if statsMenu.visibility == Visibility.FORCE_ON or tasksMenu.visibility == Visibility.FORCE_ON then
            ToggleTasks(true)
            ToggleStatsMenu(true)
        end
        ToggleAchievementsMenu()
    end
    if (binding == "ability_extra_8") then
        statsMenu.parent = UI_CONTAINER_BOTTOM
        achievementsMenu.parent = UI_CONTAINER_BOTTOM
        tasksMenu.parent = UI_CONTAINER_TOP
        UI_CONTAINER_BOTTOM.visibility = Visibility.FORCE_OFF
        if statsMenu.visibility == Visibility.FORCE_ON or achievementsMenu.visibility == Visibility.FORCE_ON then
            ToggleStatsMenu(true)
            ToggleAchievementsMenu(true)
        end
        ToggleTasks()
    end
end

function HandleAchievementUnlocked(id)
    RefreshAchievements()
    RefreshTasks()
end

function OnStatChanged(player, statId, value)
    if player ~= LOCAL_PLAYER then return end
    RefreshStats()
end

function OnPlayerJoined(player)
	-- hook up binding in player joined event here, move to more appropriate place if needed
	player.bindingPressedEvent:Connect(OnBindingPressed)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("AchievementUnlocked", HandleAchievementUnlocked)