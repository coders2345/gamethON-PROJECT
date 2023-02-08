local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local INVENTORY, INV_ITEMS = require(script:GetCustomProperty("Inventory"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local INVENTORY_ITEM_PANEL = script:GetCustomProperty("InventoryItemPanel")
local PACK_LIB = require(script:GetCustomProperty("PackBits"))
local ORDERED_TABLE = require(script:GetCustomProperty("OrderedTable"))
local INV_MAN_SERVER = script:GetCustomProperty("InventoryManagerServer"):WaitForObject()
local ROOT = script:GetCustomProperty("InventoryUI"):WaitForObject()
local ITEM_DESC_PANEL = script:GetCustomProperty("ItemDescPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("Close"):WaitForObject()
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local BACKPACK_UPGRADE_PANEL = script:GetCustomProperty("BackpackUpgradePanel"):WaitForObject()
local BACKPACK_UPGRADES_LIST, BACKPACK_UPGRADE_HELPER = require(script:GetCustomProperty("BackpackUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))

local INVENTORY_PANEL = GET(script, "InventoryPanel")
local SCROLL_PANEL = GET(script, "UIScrollPanel")
local PREVIEW_OBJECT = GET(script, "PreviewObject")

local ITEM_DEC_NAME = GET(ITEM_DESC_PANEL, "Title")
local ITEM_DEC_RARITY_ICON = GET(ITEM_DESC_PANEL, "RarityIcon")
local ITEM_DEC_RARITY_TEXT = GET(ITEM_DESC_PANEL, "RarityText")
local ITEM_DEC_BODY = GET(ITEM_DESC_PANEL, "Body")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local eventHandles = {}
local entriesList = {}
local currentPreview = nil
local focusedItemId = nil
local allItems = ORDERED_TABLE.new()
local obtained = ORDERED_TABLE.new()
-- table of tables
-- fields: panel, name, button, background
local idEntriesMap = {}

local ROTATE_ANGLE = Rotation.New(0,0,10)
local ROTATION_MULTIPLIER = 5

local Debug = false
local ShowDebugDesc = false

-- init local sorted item list
for itemId, _ in pairs (ITEM_LIBRARY.GetAllItemsSorted()) do
    allItems[itemId] = 0
end

function HandleFishItemAnimation(properties, preview)
    -- Check if this is fish item
    if string.match(properties.area, "FISHING") then
        local fishScript = preview:FindDescendantByType("Script")
        if fishScript then
            fishScript.context.DisableFishAnimation()
        end
    end
end

function HandleItemClicked(itemId)
    local properties = ITEM_LIBRARY.GetItem(itemId)

    if properties then
        if Object.IsValid(currentPreview) then
            -- don't spawn the item again if already selected
            if currentPreview.sourceTemplateId == string.match(properties.assetRef, "(%w+):(%w+)") then
                return
            end
            currentPreview:Destroy()
        end
        currentPreview = World.SpawnAsset(properties.assetRef, {parent = PREVIEW_OBJECT})
        HandleFishItemAnimation(properties, currentPreview)
        currentPreview:RotateContinuous(ROTATE_ANGLE, ROTATION_MULTIPLIER, true)

        ITEM_DEC_NAME.text = properties.playerFacingName
        local rarityColor = ITEM_LIBRARY.GetRarityColor(properties.itemRarity)
        local rarityIcon = ITEM_LIBRARY.GetRarityIcon(properties.itemRarity)

        ITEM_DEC_RARITY_ICON:SetColor(rarityColor)
        ITEM_DEC_RARITY_ICON:SetImage(rarityIcon)
        ITEM_DEC_RARITY_TEXT.text = ITEM_LIBRARY.GetRarityText(properties.itemRarity)
        if ShowDebugDesc then
            ITEM_DEC_BODY.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis arcu eros. Duis vehicula lorem sed libero feugiat, quis commodo orci commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. In mattis odio varius, mollis felis at, cursus erat. Vivamus vulputate rhoncus ante, a interdum ante imperdiet ut. Proin mattis ex non scelerisque suscipit. Phasellus in tincidunt ante. Nunc ultrices mi quam, in venenatis turpis auctor ac. Donec accumsan ullamcorper commodo"
        else
            ITEM_DEC_BODY.text = tostring(properties.itemDesc)
        end
        ITEM_DEC_RARITY_ICON.visibility = Visibility.INHERIT
    end
end

function CleanUp()
    entriesList = {}
    -- event handles
    for _, handle in ipairs(eventHandles) do
        if handle then
            handle:Disconnect()
        end
    end
    -- spawned panels
    for _, item in pairs(SCROLL_PANEL:GetChildren()) do
        item:Destroy()
    end
end

local function SpawnItemPanel(count)        
    local panelTable = {}
    panelTable.panel = World.SpawnAsset(INVENTORY_ITEM_PANEL, {parent = SCROLL_PANEL})
    
    panelTable.name = GET(panelTable.panel, "Name")
    
    panelTable.button = GET(panelTable.panel, "Button")
    panelTable.button.clientUserData.owner = newPanel
    
    panelTable.icon = GET(panelTable.panel, "Icon")
    panelTable.background = GET(panelTable.panel, "Background")

    GET(panelTable.panel, "Count").text = ""
    
    table.insert(eventHandles, panelTable.button.clickedEvent:Connect(function() HandleItemClicked(panelTable.itemId) end))
    
    panelTable.panel.y = panelTable.panel.height * count

    return panelTable
end

local function AssignItemToEntry(itemId, entry, isObtained)
    local itemProp = ITEM_LIBRARY.GetItem(itemId)

    entry.itemId = itemId

    entry.background:SetColor(ITEM_LIBRARY.GetRarityColor(itemProp.itemRarity))

    if isObtained then
        entry.name.text = itemProp.playerFacingName
        entry.button.isInteractable = true
    else
        entry.name.text = "???"
        entry.button.isInteractable = false
    end

    if ITEM_LIBRARY.IsItemFishingCategory(itemId) then
        entry.icon:SetImage(INVENTORY.GetFishIcon())
    else
        entry.icon:SetImage(INVENTORY.GetItemIcon())
    end

    idEntriesMap[itemId] = entry
end

function HandleUpgradeBackpackClicked(button)
    local res = Events.BroadcastToServer("TryUpgrade", Game.GetLocalPlayer(), "BackpackLevel")
    if res == BroadcastEventResultCode.SUCCESS then
        UpdateBackpackUpgradePanel()
    end
end

function UpdateBackpackUpgradePanel()
    local currentBackpackLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "BackpackLevel")
    local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(currentBackpackLevel)
    local currentMetalStorage = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "CurMetalStorage")
    local nextBackpackLevel = currentBackpackLevel + 1

    GET(BACKPACK_UPGRADE_PANEL, "CapacityText").text = tostring(CoreMath.Clamp(currentMetalStorage,0,backpackMaxCapacity)) .. " / " .. tostring(backpackMaxCapacity)
    GET(BACKPACK_UPGRADE_PANEL, "CapacityProgress").progress = CoreMath.Clamp(currentMetalStorage / backpackMaxCapacity)
    GET(BACKPACK_UPGRADE_PANEL, "LevelText").text = tostring(currentBackpackLevel)
    local VIP_LABEL = GET(BACKPACK_UPGRADE_PANEL, "VIPDiscountText")

    if nextBackpackLevel <= #BACKPACK_UPGRADES_LIST then
        local nextUpgrade = BACKPACK_UPGRADES_LIST[nextBackpackLevel]
        local upgradeCost = nextUpgrade.consumeStat.Money

        if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
            local discount = API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.BACKPACK_DISCOUNT)
            local totalDiscount = CoreMath.Round(upgradeCost * discount)
            upgradeCost = upgradeCost - totalDiscount
            VIP_LABEL.text = string.format("%.0f%s VIP Discount", discount * 100, "%")
        else
            VIP_LABEL.text = ""
        end

        GET(BACKPACK_UPGRADE_PANEL, "UpgradePriceText").text = tostring(upgradeCost)
        GET(BACKPACK_UPGRADE_PANEL, "ExpandedCapacityText").text = "Expand to " .. tostring(BACKPACK_UPGRADE_HELPER.GetCapacity(nextBackpackLevel))
        GET(BACKPACK_UPGRADE_PANEL, "UpgradeButton").visibility = Visibility.INHERIT

        if STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money") < upgradeCost then
            GET(BACKPACK_UPGRADE_PANEL, "UpgradePriceText"):SetColor(Color.RED)
        else
            GET(BACKPACK_UPGRADE_PANEL, "UpgradePriceText"):SetColor(Color.BLACK)
        end
    else
        VIP_LABEL.text = ""
        GET(BACKPACK_UPGRADE_PANEL, "UpgradeButton").visibility = Visibility.FORCE_OFF
    end
end

function Construct()
    entriesList = {}
    idEntriesMap = {}

    local count = 0
    for id, itemCount in pairs(allItems) do
        local entry = SpawnItemPanel(count)

        table.insert(entriesList, entry)

        count = count + 1
    end

    table.insert(eventHandles, GET(BACKPACK_UPGRADE_PANEL, "UpgradeButton").clickedEvent:Connect(HandleUpgradeBackpackClicked))
    UpdateBackpackUpgradePanel()
end

function InitializeObtainedItems()
    -- init obtained items from packed list
    local packObj = PACK_LIB.new(INVENTORY.GetInventoryItemListCount())
    local totalSeg = PACK_LIB:GetSegment(INVENTORY.GetInventoryItemListCount())
    local tbl = {}

    for i = 1, totalSeg, 1 do
        tbl[i] = LOCAL_PLAYER:GetResource("PckInv" .. tostring(i))
    end
    local str = packObj:GetPackedString(tbl)

    packObj = PACK_LIB.new(INVENTORY.GetInventoryItemListCount(), str)

    local idx = 0
    for k, v in pairs(INV_ITEMS) do
        idx = idx + 1
        if packObj:IsBitSet(idx) then
            obtained[k] = 1
        end
    end
end

function RefreshPanels()
    local entryIndex = 1

    -- iterate backwards over items list, so highest rarity is at first
    for itemIndex = #allItems, 1, -1 do
        local itemId = allItems[itemIndex]

        if obtained[itemId] == 1 then
            -- if we've obtained the item, set it to be
            -- the highest unused entry in our UI
            AssignItemToEntry(itemId, entriesList[entryIndex], true)

            entryIndex = entryIndex + 1
        end

        -- break up over a few frames
        if entryIndex % 30 == 0 then Task.Wait(.1) end
    end

    -- iterate again and backfill the remaining entries with colored blanks
    for itemIndex = #allItems, 1, -1 do
        local itemId = allItems[itemIndex]

        if obtained[itemId] ~= 1 then
            AssignItemToEntry(itemId, entriesList[entryIndex], false)

            entryIndex = entryIndex + 1
        end

        -- break up over a few frames
        if entryIndex % 30 == 0 then Task.Wait(.1) end
    end
end

function ToggleUI(uniqueId, toggleVal)
    if ROOT.visibility ~= Visibility.FORCE_OFF then
        if uniqueId == "ItemInventoryUI" then
            UpdateBackpackUpgradePanel()

            if focusedItemId ~= nil then
                HandleItemClicked(focusedItemId)
            else
                HandleItemClicked(obtained[1])
            end
            focusedItemId = nil

            RefreshPanels()
		end
    end
end

function FocusItem(id)
    focusedItemId = id
end

function Init()
    ITEM_DEC_NAME.text = ""
    ITEM_DEC_RARITY_ICON:SetColor(Color.WHITE)
    ITEM_DEC_RARITY_TEXT.text = ""
    ITEM_DEC_BODY.text = ""
    ITEM_DEC_RARITY_ICON.visibility = Visibility.FORCE_OFF
end
Init()

function HandleCloseClicked(button)
    Events.BroadcastToServer("RequestInteraction", Game.GetLocalPlayer(), INTERACTION_LIBRARY.DEFAULT)
end

function HandleObtainedItem(itemId)
    if obtained[itemId] == nil then
        obtained[itemId] = 1

        focusedItemId = itemId
    end
end

function OnStatChanged(player, statId, value)
    if statId == "BackpackLevel" or statId == "Money" then
        UpdateBackpackUpgradePanel()
    end
end

function InventoryChanged(player, key, value)
    if player == LOCAL_PLAYER then
        if obtained[key] == nil and value > 0 then
            HandleObtainedItem(key)
        end
    end
end

CLOSE_BUTTON.clickedEvent:Connect(HandleCloseClicked)
INVENTORY_PANEL.visibility = Visibility.FORCE_OFF
Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", ToggleUI)
Events.Connect("InvFocusItem", FocusItem)
Events.Connect("InventoryChangedEvent", InventoryChanged)

Construct()

Task.Wait(1)

InitializeObtainedItems()