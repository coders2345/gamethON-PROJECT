local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local UPGRADE_PANEL = script:GetCustomProperty("ShovelUpgradePanel"):WaitForObject()
local PLAYER_SHOVEL_PREVIEW = script:GetCustomProperty("PlayerShovelPreview"):WaitForObject()
local UPGRADE_SHOVEL_PREVIEW = script:GetCustomProperty("UpgradeShovelPreview"):WaitForObject()
local MAX_SHOVEL_PREVIEW = script:GetCustomProperty("MaxShovelPreview"):WaitForObject()
local UPGRADE_ARROW = script:GetCustomProperty("UpgradeArrow"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local LOCAL_PLAYER = Game.GetLocalPlayer()
local SHOVEL_LEVEL_KEY = "ShovelLevel"

local PLAYER_SHOVEL_PANEL = Get(UPGRADE_PANEL, "PlayerShovelPanel")
local UPGRADE_SHOVEL_PANEL = Get(UPGRADE_PANEL, "UpgradeShovelPanel")
local MAX_SHOVEL_PANEL = Get(UPGRADE_PANEL, "MaxShovelPanel")

local PLAYER_SHOVEL_PARENT = Get(PLAYER_SHOVEL_PREVIEW, "PreviewParent")
local UPGRADE_SHOVEL_PARENT = Get(UPGRADE_SHOVEL_PREVIEW, "PreviewParent")
local MAX_SHOVEL_PARENT = Get(MAX_SHOVEL_PREVIEW, "PreviewParent")

local UPGRADE_TEXT = Get(UPGRADE_PANEL, "UpgradeText")
local UPGRADE_BUTTON = Get(UPGRADE_PANEL, "UpgradeButton")
local PURCHASE_UPGRADE_BUTTON = Get(UPGRADE_PANEL, "PurchaseUpgradeButton")

function OnUpgrade(freeUpgrade)
    Events.BroadcastToServer("ShovelUpgrade", SHOVEL_LEVEL_KEY, freeUpgrade)
    UPGRADE_BUTTON.isInteractable = false
    PURCHASE_UPGRADE_BUTTON.isInteractable = false
    Task.Wait(1)
    Refresh()
end

function UpdateStatInfo(panel, level)
    Get(panel, "LevelText").text = "Level "..tostring(level)
    Get(panel, "TypeText").text = tostring(UPGRADES_LIST[SHOVEL_LEVEL_KEY][level].shovelData.material)
    Get(panel, "SpeedText").text = tostring(UPGRADES_LIST[SHOVEL_LEVEL_KEY][level].shovelData.castTime)
end

function Refresh()
    -- Cleanup preview items in hierarchy
    for _, value in ipairs(PLAYER_SHOVEL_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(UPGRADE_SHOVEL_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(MAX_SHOVEL_PARENT:GetChildren()) do
        value:Destroy()
    end

    PLAYER_SHOVEL_PREVIEW.visibility = Visibility.FORCE_OFF
    UPGRADE_SHOVEL_PREVIEW.visibility = Visibility.FORCE_OFF
    MAX_SHOVEL_PREVIEW.visibility = Visibility.FORCE_OFF

    PLAYER_SHOVEL_PANEL.visibility = Visibility.FORCE_OFF
    UPGRADE_SHOVEL_PANEL.visibility = Visibility.FORCE_OFF
    MAX_SHOVEL_PANEL.visibility = Visibility.FORCE_OFF

    UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    PURCHASE_UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    UPGRADE_ARROW.visibility = Visibility.FORCE_OFF

    local shovelLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, SHOVEL_LEVEL_KEY)
    local upgradeLevel = shovelLevel + 1
    local maxShovelLevel = #UPGRADES_LIST[SHOVEL_LEVEL_KEY]

    if shovelLevel + 1 <= maxShovelLevel then
        PLAYER_SHOVEL_PREVIEW.visibility = Visibility.INHERIT
        UPGRADE_SHOVEL_PREVIEW.visibility = Visibility.INHERIT
        PLAYER_SHOVEL_PANEL.visibility = Visibility.INHERIT
        UPGRADE_SHOVEL_PANEL.visibility = Visibility.INHERIT
        UPGRADE_ARROW.visibility = Visibility.INHERIT

        local money = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
        local upgradePerk = UPGRADES_LIST[SHOVEL_LEVEL_KEY][upgradeLevel].shovelData.perk
        local upgradeCost = UPGRADES_LIST[SHOVEL_LEVEL_KEY][upgradeLevel].consumeStat["Money"]

        World.SpawnAsset(UPGRADES_LIST[SHOVEL_LEVEL_KEY][shovelLevel].shovelData.equipmentAsset,
                                            {parent = PLAYER_SHOVEL_PARENT})
        World.SpawnAsset(UPGRADES_LIST[SHOVEL_LEVEL_KEY][upgradeLevel].shovelData.equipmentAsset,
                                            {parent = UPGRADE_SHOVEL_PARENT})

        UpdateStatInfo(PLAYER_SHOVEL_PANEL, shovelLevel)
        UpdateStatInfo(UPGRADE_SHOVEL_PANEL, upgradeLevel)

        UPGRADE_BUTTON.visibility = Visibility.INHERIT
        Get(UPGRADE_BUTTON, "PriceText").text = UTILITIES_LIBRARY.FormatMoney(upgradeCost)

        if money < upgradeCost then
            UPGRADE_BUTTON.isInteractable = false
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.RED)
            UPGRADE_TEXT.text = "Not enough money to upgrade Shovel to Level "..tostring(upgradeLevel)
        else
            UPGRADE_BUTTON.isInteractable = true
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.EMERALD)
            UPGRADE_TEXT.text = "Upgrade Shovel to Level "..tostring(upgradeLevel).."!"
        end

        PURCHASE_UPGRADE_BUTTON.visibility = Visibility.INHERIT
        PURCHASE_UPGRADE_BUTTON.isInteractable = true
        PURCHASE_UPGRADE_BUTTON:SetPerkReference(upgradePerk)
    else
        MAX_SHOVEL_PREVIEW.visibility = Visibility.INHERIT
        MAX_SHOVEL_PANEL.visibility = Visibility.INHERIT

        World.SpawnAsset(UPGRADES_LIST[SHOVEL_LEVEL_KEY][shovelLevel].shovelData.equipmentAsset,
        {parent = MAX_SHOVEL_PARENT})

        UpdateStatInfo(MAX_SHOVEL_PANEL, shovelLevel)
        UPGRADE_TEXT.text = "Your Shovel is at Max Level!"
    end
end

function Setup()
    UPGRADE_BUTTON.clickedEvent:Connect(OnUpgradeClicked)
    LOCAL_PLAYER.perkChangedEvent:Connect(OnPerkChanged)
end

function OnUpgradeClicked()
    OnUpgrade()
end

function OnPerkChanged(player, perk)
    local upgradeLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, SHOVEL_LEVEL_KEY) + 1
    if not UPGRADES_LIST[SHOVEL_LEVEL_KEY][upgradeLevel] then return end
    local upgradePerk = UPGRADES_LIST[SHOVEL_LEVEL_KEY][upgradeLevel].shovelData.perk

    if upgradePerk ~= nil and upgradePerk == perk and player:HasPerk(perk) then
        OnUpgrade(true)
    end
end

function OnStatChanged(player, statId, _)
    if player == LOCAL_PLAYER and statId == SHOVEL_LEVEL_KEY then
        Refresh()
    end
end

function OnToggleUI(key, value)
    if key == "ShovelUI" then
        Refresh()
        _G.AnalyticsFacade.BindingToggle(LOCAL_PLAYER, "ShovelUI")
    end
end

Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", OnToggleUI)

Setup()
