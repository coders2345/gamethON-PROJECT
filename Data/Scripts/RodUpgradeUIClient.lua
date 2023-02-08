local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local PARENT_PANEL = script:GetCustomProperty("UpgradePanel"):WaitForObject()
local PLAYER_PREVIEW = script:GetCustomProperty("PlayerPreview"):WaitForObject()
local UPGRADE_PREVIEW = script:GetCustomProperty("UpgradePreview"):WaitForObject()
local MAX_PREVIEW = script:GetCustomProperty("MaxPreview"):WaitForObject()
local UPGRADE_ARROW = script:GetCustomProperty("UpgradeArrow"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local LOCAL_PLAYER = Game.GetLocalPlayer()
local LEVEL_KEY = "FishingRodLevel"

local PLAYER_PANEL = Get(PARENT_PANEL, "PlayerPanel")
local UPGRADE_PANEL = Get(PARENT_PANEL, "UpgradePanel")
local MAX_PANEL = Get(PARENT_PANEL, "MaxPanel")

local PLAYER_PREVIEW_PARENT = Get(PLAYER_PREVIEW, "PreviewParent")
local UPGRADE_PREVIEW_PARENT = Get(UPGRADE_PREVIEW, "PreviewParent")
local MAX_PREVIEW_PARENT = Get(MAX_PREVIEW, "PreviewParent")

local UPGRADE_TEXT = Get(PARENT_PANEL, "UpgradeText")
local UPGRADE_BUTTON = Get(PARENT_PANEL, "UpgradeButton")
local PURCHASE_UPGRADE_BUTTON = Get(PARENT_PANEL, "PurchaseUpgradeButton")

function OnUpgrade(freeUpgrade)
    Events.BroadcastToServer("TryUpgrade", LOCAL_PLAYER, LEVEL_KEY, freeUpgrade)
    UPGRADE_BUTTON.isInteractable = false
    PURCHASE_UPGRADE_BUTTON.isInteractable = false
    Task.Wait(1)
    Refresh()
end

function UpdateStatInfo(panel, level)
    Get(panel, "LevelText").text = "Level "..tostring(level)
    Get(panel, "TypeText").text = tostring(UPGRADES_LIST[LEVEL_KEY][level].rodData.material)
    Get(panel, "DistanceText").text = tostring(UPGRADES_LIST[LEVEL_KEY][level].rodData.castSpeed)
    Get(panel, "BaitText").text = tostring(UPGRADES_LIST[LEVEL_KEY][level].rodData.baitRange)
end

function Refresh()
    -- Cleanup preview items in hierarchy
    for _, value in ipairs(PLAYER_PREVIEW_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(UPGRADE_PREVIEW_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(MAX_PREVIEW_PARENT:GetChildren()) do
        value:Destroy()
    end

    PLAYER_PREVIEW.visibility = Visibility.FORCE_OFF
    UPGRADE_PREVIEW.visibility = Visibility.FORCE_OFF
    MAX_PREVIEW.visibility = Visibility.FORCE_OFF

    PLAYER_PANEL.visibility = Visibility.FORCE_OFF
    UPGRADE_PANEL.visibility = Visibility.FORCE_OFF
    MAX_PANEL.visibility = Visibility.FORCE_OFF

    UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    PURCHASE_UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    UPGRADE_ARROW.visibility = Visibility.FORCE_OFF

    local shovelLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, LEVEL_KEY)
    local upgradeLevel = shovelLevel + 1
    local maxShovelLevel = #UPGRADES_LIST[LEVEL_KEY]

    if shovelLevel + 1 <= maxShovelLevel then
        PLAYER_PREVIEW.visibility = Visibility.INHERIT
        UPGRADE_PREVIEW.visibility = Visibility.INHERIT
        PLAYER_PANEL.visibility = Visibility.INHERIT
        UPGRADE_PANEL.visibility = Visibility.INHERIT
        UPGRADE_ARROW.visibility = Visibility.INHERIT

        local money = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
        local upgradePerk = UPGRADES_LIST[LEVEL_KEY][upgradeLevel].rodData.perk
        local upgradeCost = UPGRADES_LIST[LEVEL_KEY][upgradeLevel].consumeStat["Money"]

        World.SpawnAsset(UPGRADES_LIST[LEVEL_KEY][shovelLevel].rodData.equipmentAsset,
                                            {parent = PLAYER_PREVIEW_PARENT})
        World.SpawnAsset(UPGRADES_LIST[LEVEL_KEY][upgradeLevel].rodData.equipmentAsset,
                                            {parent = UPGRADE_PREVIEW_PARENT})

        UpdateStatInfo(PLAYER_PANEL, shovelLevel)
        UpdateStatInfo(UPGRADE_PANEL, upgradeLevel)

        UPGRADE_BUTTON.visibility = Visibility.INHERIT
        Get(UPGRADE_BUTTON, "PriceText").text = UTILITIES_LIBRARY.FormatMoney(upgradeCost)

        if money < upgradeCost then
            UPGRADE_BUTTON.isInteractable = false
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.RED)
            UPGRADE_TEXT.text = "Not enough money to upgrade Fishing Rod to Level "..tostring(upgradeLevel)
        else
            UPGRADE_BUTTON.isInteractable = true
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.EMERALD)
            UPGRADE_TEXT.text = "Upgrade Fishing Rod to Level "..tostring(upgradeLevel).."!"
        end

        PURCHASE_UPGRADE_BUTTON.visibility = Visibility.INHERIT
        PURCHASE_UPGRADE_BUTTON.isInteractable = true
        PURCHASE_UPGRADE_BUTTON:SetPerkReference(upgradePerk)
    else
        MAX_PREVIEW.visibility = Visibility.INHERIT
        MAX_PANEL.visibility = Visibility.INHERIT

        World.SpawnAsset(UPGRADES_LIST[LEVEL_KEY][shovelLevel].rodData.equipmentAsset,
        {parent = MAX_PREVIEW_PARENT})

        UpdateStatInfo(MAX_PANEL, shovelLevel)
        UPGRADE_TEXT.text = "Your Fishing Rod is at Max Level!"
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
    local upgradeLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, LEVEL_KEY) + 1
    if not UPGRADES_LIST[LEVEL_KEY][upgradeLevel] then return end
    local upgradePerk = UPGRADES_LIST[LEVEL_KEY][upgradeLevel].rodData.perk

    if upgradePerk ~= nil and upgradePerk == perk and player:HasPerk(perk) then
        OnUpgrade(true)
    end
end

function OnStatChanged(player, statId, _)
    if player == LOCAL_PLAYER and statId == LEVEL_KEY then
        Refresh()
    end
end

function OnToggleUI(key, value)
    if key == "FishingRodUI" then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", OnToggleUI)

Setup()