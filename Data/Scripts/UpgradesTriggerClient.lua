local TRIGGER = script:GetCustomProperty("UpgradesTrigger"):WaitForObject()
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local MENU_ITEM_PANEL = script:GetCustomProperty("UpgradesMenuItemPanel")
local SCROLL_PANEL = script:GetCustomProperty("UIScrollPanel"):WaitForObject()
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local DISABLE_COLOR = TRIGGER:GetCustomProperty("DisableColor")
local ENABLE_COLOR = TRIGGER:GetCustomProperty("EnableColor")
local UPGRADE_BUTTON = script:GetCustomProperty("UpgradeButton"):WaitForObject()
local CANCEL_BUTTON = script:GetCustomProperty("CancelButton"):WaitForObject()
local UI_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local MENU_TITLE = TRIGGER:GetCustomProperty("MenuTitle")
local TITLE_TEXT_UI = script:GetCustomProperty("Title"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end

local LOCAL_PLAYER = Game.GetLocalPlayer()

local upgradeID = TRIGGER:GetCustomProperty("UpgradeID")
local statPadding = 40
local itemPanels = {}

function GetUpgradeParamsText(paramsTable)
    local count = 0
    local conCatText = ""
    if paramsTable then
        for k, v in pairs(paramsTable) do
            conCatText = conCatText .. k .. " " .. tostring(v) .. "\n"
            count = count + 1
        end 
    end
    return conCatText, count
end

function PopulateUI()
    if not UPGRADES_LIST[upgradeID] then
        warn("Upgrade trigger made with an Id not in upgrades list. Id: " .. tostring(upgradeID))
        return
    end
    local upgrades = UPGRADES_LIST[upgradeID]
    local prevHeight = 0
    local prevY = 0
    for level, item in pairs(upgrades) do
        local newItem = World.SpawnAsset(MENU_ITEM_PANEL, {parent = SCROLL_PANEL})
        local background = Get(newItem, "Background")
        local labelText = Get(newItem, "LevelText")
        local requirementsText = Get(newItem, "RequirementsText")
        local upgradesText = Get(newItem, "UpgradesText")
        local currentLevel = STATS_LIBRARY.GetStat(Game.GetLocalPlayer(), upgradeID)
        table.insert(itemPanels, newItem)

        if level > currentLevel then
            background:SetColor(DISABLE_COLOR)
        else
            background:SetColor(ENABLE_COLOR)
        end
        -- Build display text
        labelText.text = "Level " .. tostring(level)

        local upgradesDisplayText, numUpgrades = GetUpgradeParamsText(item["upgradResultStats"])
        if numUpgrades > 0 then
            upgradesText.text = "Upgrades: \n" .. upgradesDisplayText
        end

        local reqDisplayText, numReq = GetUpgradeParamsText(item["requiredStats"])
        if numReq > 0 then
            requirementsText.text = "Required: \n" .. reqDisplayText
        end

        -- Adjust panel height according to amount of text being displayed
        newItem.height = newItem.height + statPadding * math.max(numUpgrades, numReq)
        if prevHeight == 0 then
            newItem.y = newItem.y + level * newItem.height
        else
            newItem.y = prevY + prevHeight
        end
        prevHeight = newItem.height
        prevY = newItem.y
    end
end

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)
end

function HandleInteracted(trigger, other)
    -- TODO check if trigger is in the farm owned my the interacting player
    if other:IsA("Player") then
        Events.Broadcast("ActivateUpgradesUI", trigger)
        SetUIInteraction(true)
        Refresh()
        UI_CONTAINER.visibility = Visibility.FORCE_ON
	end
end

function Refresh()
    local currentLevel = STATS_LIBRARY.GetStat(Game.GetLocalPlayer(), upgradeID)
    for level, itemPanel in pairs(itemPanels) do
        local background = Get(itemPanel, "Background")
        if level > currentLevel then
            background:SetColor(DISABLE_COLOR)
        else
            background:SetColor(ENABLE_COLOR)
        end
    end
end

function OnClicked(inButton)
    if inButton == UPGRADE_BUTTON then
        Events.BroadcastToServer("TryUpgrade", Game.GetLocalPlayer(), upgradeID)
    elseif inButton == CANCEL_BUTTON then
        SetUIInteraction(false)
        UI_CONTAINER.visibility = Visibility.FORCE_OFF
    end
end

function HandleUpgradeComplete(player, statId, value)
    if player ~= Game.GetLocalPlayer() then return end
    if statId ~= upgradeID then return end
    Refresh()
end

function HandleActivateUpgradesUI(trigger)
    -- Close all other active upgrades UI
    if trigger ~= TRIGGER then
        SetUIInteraction(false)
        UI_CONTAINER.visibility = Visibility.FORCE_OFF
    end
end
Events.Connect("ActivateUpgradesUI", HandleActivateUpgradesUI)
Events.Connect("UpgradeComplete", HandleUpgradeComplete)

UPGRADE_BUTTON.clickedEvent:Connect(OnClicked)
CANCEL_BUTTON.clickedEvent:Connect(OnClicked)

TRIGGER.interactedEvent:Connect(HandleInteracted)

--Init
PopulateUI()
TITLE_TEXT_UI.text = MENU_TITLE

function OnBindingPressed(whichPlayer, binding)
	if (binding == "ability_extra_0") then 
        SetUIInteraction(true)
        Refresh()
        UI_CONTAINER.visibility = Visibility.FORCE_ON
	end
end

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)