local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local UPGRADE_PANEL = script:GetCustomProperty("StableUpgradePanel"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local LOCAL_PLAYER = Game.GetLocalPlayer()
local STABLE_LEVEL_KEY = "StableLevel"

local CURRENT_STABLE_PANEL = Get(UPGRADE_PANEL, "CurrentStablePanel")
local UPGRADE_STABLE_PANEL = Get(UPGRADE_PANEL, "UpgradeStablePanel")
local MAX_STABLE_PANEL = Get(UPGRADE_PANEL, "MaxStablePanel")

local UPGRADE_TEXT = Get(UPGRADE_PANEL, "UpgradeText")
local UPGRADE_BUTTON = Get(UPGRADE_PANEL, "UpgradeButton")
local UPGRADE_ARROW = Get(UPGRADE_PANEL, "UpgradeArrow")
local VIP_LABEL = Get(UPGRADE_PANEL, "VIPDiscountText")

function OnUpgrade()
    Events.BroadcastToServer("StableUpgrade", STABLE_LEVEL_KEY)
    UPGRADE_BUTTON.isInteractable = false
    Task.Wait(0.5)
    Refresh()
end

function UpdateStatInfo(panel, level)
    local maxStableLevel = #UPGRADES_LIST[STABLE_LEVEL_KEY]
    Get(panel, "LevelText").text = "Level "..tostring(level)
    Get(panel, "AccelText").text = tostring(UPGRADES_LIST[STABLE_LEVEL_KEY][level].stableData.acceleration)
    Get(panel, "SpeedText").text = tostring(UPGRADES_LIST[STABLE_LEVEL_KEY][level].stableData.speed)
end

function Refresh()

    CURRENT_STABLE_PANEL.visibility = Visibility.FORCE_OFF
    UPGRADE_STABLE_PANEL.visibility = Visibility.FORCE_OFF
    MAX_STABLE_PANEL.visibility = Visibility.FORCE_OFF

    UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    UPGRADE_ARROW.visibility = Visibility.FORCE_OFF

    local stableLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, STABLE_LEVEL_KEY)
    local upgradeLevel = stableLevel + 1
    local maxStableLevel = #UPGRADES_LIST[STABLE_LEVEL_KEY]

    if stableLevel + 1 <= maxStableLevel then
        CURRENT_STABLE_PANEL.visibility = Visibility.INHERIT
        UPGRADE_STABLE_PANEL.visibility = Visibility.INHERIT
        UPGRADE_ARROW.visibility = Visibility.INHERIT

        local money = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
        local upgradeCost = UPGRADES_LIST[STABLE_LEVEL_KEY][upgradeLevel].consumeStat["Money"]

        UpdateStatInfo(CURRENT_STABLE_PANEL, stableLevel)
        UpdateStatInfo(UPGRADE_STABLE_PANEL, upgradeLevel)

        if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
            local discount = API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.MOUNT_DISCOUNT)
            local totalDiscount = CoreMath.Round(upgradeCost * discount)
            upgradeCost = upgradeCost - totalDiscount
            VIP_LABEL.text = string.format("%.0f%s VIP Discount", discount * 100, "%")
        else
            VIP_LABEL.text = ""
        end

        UPGRADE_BUTTON.visibility = Visibility.INHERIT
        Get(UPGRADE_BUTTON, "PriceText").text = UTILITIES_LIBRARY.FormatMoney(upgradeCost)

        if money < upgradeCost then
            UPGRADE_BUTTON.isInteractable = false
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.RED)
            UPGRADE_TEXT.text = "Not enough money to upgrade Mount to Level "..tostring(upgradeLevel)
        else
            UPGRADE_BUTTON.isInteractable = true
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.EMERALD)
            UPGRADE_TEXT.text = "Upgrade Mount to Level "..tostring(upgradeLevel).."!"
        end
    else
        MAX_STABLE_PANEL.visibility = Visibility.INHERIT

        UpdateStatInfo(MAX_STABLE_PANEL, stableLevel)
        UPGRADE_TEXT.text = "Your Mount is at Max Level!"
    end
end

function Setup()
    UPGRADE_BUTTON.clickedEvent:Connect(OnUpgrade)
end

function OnStatChanged(player, statId, _)
    if player == LOCAL_PLAYER and statId == STABLE_LEVEL_KEY then
        Refresh()
    end
end

function OnToggleUI(key, value)
    if key == "StableUI" then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", OnToggleUI)

Setup()