local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local INVENTORY = require(script:GetCustomProperty("Inventory"))
local UTILITIES = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local EventAPI = require(script:GetCustomProperty("META_EventsAPI"))

local PANEL = script:GetCustomProperty("MarketSellPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local propItemPanelAsset = script:GetCustomProperty("ItemPanelAsset")
local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local ITEMS_PANEL = GET(PANEL, "ItemsPanel")
local TOTAL_PANEL = GET(ITEMS_PANEL, "TotalPanel")
local SELL_BUTTON = GET(PANEL, "SellButton")
local EMPTY_NOTIFICATION = GET(PANEL, "EmptyNotification")

local UNSELECTED_COLOR = script:GetCustomProperty("UnselectedColor")
local SELECTED_COLOR = script:GetCustomProperty("SelectedColor")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local itemInstancePanels = {}
local itemSelected = {}
local currentItemPanel = nil

local eventHandles = {}

function UpdateEmptyNotification()
    if #itemInstancePanels == 0 then
        EMPTY_NOTIFICATION.visibility = Visibility.INHERIT
        ITEMS_PANEL.visibility = Visibility.FORCE_OFF
        SELL_BUTTON.visibility = Visibility.FORCE_OFF
    else
        EMPTY_NOTIFICATION.visibility = Visibility.FORCE_OFF
        ITEMS_PANEL.visibility = Visibility.INHERIT
        SELL_BUTTON.visibility = Visibility.INHERIT
    end
end

function OnSell()
    -- CSell -> Collector Sell (trying to keep event size as small as possible)
    local res, msg = Events.BroadcastToServer("FSell")
    if res == BroadcastEventResultCode.SUCCESS then
        for _, itemPanel in ipairs(itemInstancePanels) do
            if Object.IsValid(itemPanel) then
                itemPanel:Destroy()
            end
        end
        itemInstancePanels = {}
        UpdateEmptyNotification()
    elseif res ~= BroadcastEventResultCode.EXCEEDED_RATE_WARNING_LIMIT then
        Events.Broadcast("ShowNotification", "Server Busy!!", "Could not complete transaction", Color.RED,nil,nil,Color.WHITE, Color.WHITE)
    end

    -- TODO Wait for server ack incase event failed
end

function UpdateTotalPrice()
    local total = 0
    local membersCount = 0
    local bonusAmount = 0

    for i, panel in pairs(itemInstancePanels) do
        local id = panel.clientUserData.id
        local sellValue = ITEM_LIBRARY.GetItem(id).sellValue
        local count = INVENTORY.GetItem(LOCAL_PLAYER, id)
        total = total + (count * sellValue)
    end

    SELL_BUTTON.isInteractable = total > 0

    if API_MEMBERSHIP.IsRegistered() then
        membersCount = #API_MEMBERSHIP.GetMembers()
        if membersCount >= API_MEMBERSHIP.GetMaxMembersBonus() then
            membersCount = API_MEMBERSHIP.GetMaxMembersBonus()
        end
        bonusAmount = membersCount * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.FISH_SELL_BONUS)
    end

    if EventAPI.IsEventKeyActive("2XFISH") then
        total = total * 2
    end

    if membersCount > 0 then
        -- Set comparison price to original
        GET(TOTAL_PANEL, "OriginalTotalPanel").visibility = Visibility.INHERIT
        GET(TOTAL_PANEL, "OriginalTotal").text = "$"..UTILITIES.FormatMoney(total)

        -- VIP price server boost
        GET(TOTAL_PANEL, "VIPPanel").visibility = Visibility.INHERIT
        GET(TOTAL_PANEL, "VIPLabel").text = string.format("x%d VIP Members Bonus (+%.0f%s)", membersCount, bonusAmount * 100, "%")

        if total > 0 then
            GET(TOTAL_PANEL, "VIPBonus").text = "+$"..UTILITIES.FormatMoney(CoreMath.Round(total * bonusAmount))
        else
            GET(TOTAL_PANEL, "VIPBonus").text = "$"..UTILITIES.FormatMoney(CoreMath.Round(total * bonusAmount))
        end
    else
        GET(TOTAL_PANEL, "VIPPanel").visibility = Visibility.FORCE_OFF
        GET(TOTAL_PANEL, "OriginalTotalPanel").visibility = Visibility.FORCE_OFF
    end

    GET(TOTAL_PANEL, "TotalPrice").text = "$"..UTILITIES.FormatMoney(CoreMath.Round(total + total * bonusAmount))
end

function UpdatePanel(itemPanel, id, maxAvailable)
    local sellValue = ITEM_LIBRARY.GetItem(id).sellValue
    if EventAPI.IsEventKeyActive("2XFISH") then
        sellValue = sellValue * 2
    end
    
    local itemCount = INVENTORY.GetItem(LOCAL_PLAYER, id)

    local rarityIcon = ITEM_LIBRARY.GetRarityIcon(ITEM_LIBRARY.GetItem(id).itemRarity)
    local rarityColor = ITEM_LIBRARY.GetRarityColor(ITEM_LIBRARY.GetItem(id).itemRarity)

    GET(itemPanel, "Price").text = "$".. UTILITIES.FormatMoney(sellValue)
    GET(itemPanel, "QuantityText").text = tostring(itemCount)
    GET(itemPanel, "TotalPrice").text = "$".. UTILITIES.FormatMoney(itemCount * sellValue)
    GET(itemPanel, "Rarity"):SetImage(rarityIcon)
    GET(itemPanel, "Rarity"):SetColor(rarityColor)
end

function ConstructPanel()
    for k, handle in pairs(eventHandles) do
        if handle then
            handle:Disconnect()
        end
    end

    local SCROLL_PANEL = GET(ITEMS_PANEL, "ItemsScrollPanel")

    itemInstancePanels = {}
    for _, child in ipairs(SCROLL_PANEL:GetChildren()) do
        child:Destroy()
    end

    local count = 0
    for id, itemCount in pairs(INVENTORY.GetAllItems(LOCAL_PLAYER)) do
        local item = ITEM_LIBRARY.GetItem(id)
        if string.match(item.area, "FISHING") then
            local instance = World.SpawnAsset(propItemPanelAsset, {parent = SCROLL_PANEL})
            instance.clientUserData.id = id

            GET(instance, "ResourceName").text = item.playerFacingName
            GET(instance, "ResourceIcon").visibility = Visibility.FORCE_OFF

            UpdatePanel(instance, id, itemCount)

            instance.y = instance.height * count
            count = count + 1
            table.insert(itemInstancePanels, instance)
        end
    end

    eventHandles["SellButton"] = SELL_BUTTON.clickedEvent:Connect(OnSell)
    UpdateTotalPrice()
    UpdateEmptyNotification()
end

function ToggleUI (uniqueId)
    if uniqueId == "FishStoreUI" then
        ConstructPanel()
    end
end

-- Setup UI
PANEL.visibility = Visibility.FORCE_OFF

function HandleInteracted(trigger, other)
    if other:IsA("Player") then
        local player = other
        if player ~= LOCAL_PLAYER then return end
        Events.Broadcast("ToggleUI","FishStoreUI", true)
	end
end

function HandleStatChanged(player, key, value)
    if player ~= LOCAL_PLAYER then return end
    if PANEL.visibility == Visibility.FORCE_OFF then return end
    if key == "Money" then
        ConstructPanel()
    end
end

-- Connect UI events
Events.Connect("ToggleUI", ToggleUI)
Events.Connect("StatChangedEvent", HandleStatChanged)

TRIGGER.interactedEvent:Connect(HandleInteracted)