local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local UPGRADE_PANEL = script:GetCustomProperty("MetalDectUpgradePanel"):WaitForObject()
local PLAYER_ITEM_PREVIEW = script:GetCustomProperty("CurrentItemPreview"):WaitForObject()
local UPGRADE_ITEM_PREVIEW = script:GetCustomProperty("UpgradeItemPreview"):WaitForObject()
local MAX_ITEM_PREVIEW = script:GetCustomProperty("MaxItemPreview"):WaitForObject()
local UPGRADE_ARROW = script:GetCustomProperty("UpgradeArrow"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local LOCAL_PLAYER = Game.GetLocalPlayer()
local METAL_DETECTOR_LEVEL_KEY = "MetalDetectorLevel"

local CURRENT_ITEM_PANEL = Get(UPGRADE_PANEL, "CurrentItemPanel")
local UPGRADE_ITEM_PANEL = Get(UPGRADE_PANEL, "UpgradeItemPanel")
local MAX_ITEM_PANEL = Get(UPGRADE_PANEL, "MaxItemPanel")

local PLAYER_ITEM_PARENT = Get(PLAYER_ITEM_PREVIEW, "PreviewParent")
local UPGRADE_ITEM_PARENT = Get(UPGRADE_ITEM_PREVIEW, "PreviewParent")
local MAX_ITEM_PARENT = Get(MAX_ITEM_PREVIEW, "PreviewParent")

local UPGRADE_TEXT = Get(UPGRADE_PANEL, "UpgradeText")
local UPGRADE_BUTTON = Get(UPGRADE_PANEL, "UpgradeButton")
local PURCHASE_UPGRADE_BUTTON = Get(UPGRADE_PANEL, "PurchaseUpgradeButton")

function OnUpgrade(freeUpgrade)
    Events.BroadcastToServer("TryUpgrade", LOCAL_PLAYER, METAL_DETECTOR_LEVEL_KEY, freeUpgrade)
    UPGRADE_BUTTON.isInteractable = false
    PURCHASE_UPGRADE_BUTTON.isInteractable = false
    Task.Wait(1)
    Refresh()
end

function UpdateStatInfo(panel, level)
    Get(panel, "LevelText").text = "Level "..tostring(level)
    Get(panel, "TypeText").text = tostring(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][level].metaData.type)
    Get(panel, "DepthText").text = tostring(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][level].upgradeResultStats.DetectionMaxDepth)
    Get(panel, "RadiusText").text = tostring(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][level].upgradeResultStats.DetectionRadius)
end

function Refresh()
    -- Cleanup preview items in hierarchy
    for _, value in ipairs(PLAYER_ITEM_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(UPGRADE_ITEM_PARENT:GetChildren()) do
        value:Destroy()
    end
    for _, value in ipairs(MAX_ITEM_PARENT:GetChildren()) do
        value:Destroy()
    end

    PLAYER_ITEM_PREVIEW.visibility = Visibility.FORCE_OFF
    UPGRADE_ITEM_PREVIEW.visibility = Visibility.FORCE_OFF
    MAX_ITEM_PREVIEW.visibility = Visibility.FORCE_OFF

    CURRENT_ITEM_PANEL.visibility = Visibility.FORCE_OFF
    UPGRADE_ITEM_PANEL.visibility = Visibility.FORCE_OFF
    MAX_ITEM_PANEL.visibility = Visibility.FORCE_OFF

    UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    PURCHASE_UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
    UPGRADE_ARROW.visibility = Visibility.FORCE_OFF

    local currentLevel = math.max(1, STATS_LIBRARY.GetStat(LOCAL_PLAYER, METAL_DETECTOR_LEVEL_KEY))
    local upgradeLevel = currentLevel + 1
    local maxLevel = #UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY]

    if currentLevel + 1 <= maxLevel then
        PLAYER_ITEM_PREVIEW.visibility = Visibility.INHERIT
        UPGRADE_ITEM_PREVIEW.visibility = Visibility.INHERIT
        CURRENT_ITEM_PANEL.visibility = Visibility.INHERIT
        UPGRADE_ITEM_PANEL.visibility = Visibility.INHERIT
        UPGRADE_ARROW.visibility = Visibility.INHERIT

        local money = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
        local upgradePerk = UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][upgradeLevel].metaData.perk
        local upgradeCost = UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][upgradeLevel].consumeStat["Money"]

        if UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][currentLevel].metaData.equipmentAsset then
            World.SpawnAsset(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][currentLevel].metaData.equipmentAsset,
                                                {parent = PLAYER_ITEM_PARENT})
            World.SpawnAsset(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][upgradeLevel].metaData.equipmentAsset,
                                                {parent = UPGRADE_ITEM_PARENT})
        end

        UpdateStatInfo(CURRENT_ITEM_PANEL, currentLevel)
        UpdateStatInfo(UPGRADE_ITEM_PANEL, upgradeLevel)

        UPGRADE_BUTTON.visibility = Visibility.INHERIT
        Get(UPGRADE_BUTTON, "PriceText").text = UTILITIES_LIBRARY.FormatMoney(upgradeCost)

        if money < upgradeCost then
            UPGRADE_BUTTON.isInteractable = false
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.RED)
            UPGRADE_TEXT.text = "Not enough money to upgrade metal detector to Level "..tostring(upgradeLevel)
        else
            UPGRADE_BUTTON.isInteractable = true
            Get(UPGRADE_BUTTON, "PriceText"):SetColor(Color.EMERALD)
            UPGRADE_TEXT.text = "Upgrade metal detector to Level "..tostring(upgradeLevel).."!"
        end

        PURCHASE_UPGRADE_BUTTON.visibility = Visibility.INHERIT
        PURCHASE_UPGRADE_BUTTON.isInteractable = true
        PURCHASE_UPGRADE_BUTTON:SetPerkReference(upgradePerk)
    else
        MAX_ITEM_PREVIEW.visibility = Visibility.INHERIT
        MAX_ITEM_PANEL.visibility = Visibility.INHERIT

        if UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][currentLevel].metaData.equipmentAsset then
            World.SpawnAsset(UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][currentLevel].metaData.equipmentAsset,
            {parent = MAX_ITEM_PARENT})
        end

        UpdateStatInfo(MAX_ITEM_PANEL, currentLevel)
        UPGRADE_TEXT.text = "Your metal detector is at Max Level!"
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
    local upgradeLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, METAL_DETECTOR_LEVEL_KEY) + 1

    if not UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][upgradeLevel] then return end
    local upgradePerk = UPGRADES_LIST[METAL_DETECTOR_LEVEL_KEY][upgradeLevel].metaData.perk

    if upgradePerk ~= nil and upgradePerk == perk and player:HasPerk(perk) then
        OnUpgrade(true)
    end
end
function OnStatChanged(player, statId, _)
    if player == LOCAL_PLAYER and statId == METAL_DETECTOR_LEVEL_KEY then
        Refresh()
    end
end

function OnToggleUI(key, value)
    if key == "MetalDectectorUpgrade" then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", OnToggleUI)

Setup()
