local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local INVENTORY = require(script:GetCustomProperty("Inventory"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local EventAPI = require(script:GetCustomProperty("META_EventsAPI"))

function InventorySellAll(player)
    local total = 0
    local totalCount = 0
    local bonusAmount = 0

    if API_MEMBERSHIP.IsRegistered() then
        local membersCount = #API_MEMBERSHIP.GetMembers()
        if membersCount >= API_MEMBERSHIP.GetMaxMembersBonus() then
            membersCount = API_MEMBERSHIP.GetMaxMembersBonus()
        end
        bonusAmount = membersCount * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.FISH_SELL_BONUS)
    end

    for itemId, count in pairs(INVENTORY.GetAllItems(player)) do
        if string.match(ITEM_LIBRARY.GetItem(itemId).area, "FISHING") then
            local sellValue = ITEM_LIBRARY.GetItem(itemId).sellValue
            total = total + (count * sellValue)
            totalCount = totalCount + count
            INVENTORY.RemoveItem(player, itemId, count)
        end
    end

    if EventAPI.IsEventKeyActive("2XFISH") then
        total = total * 2
    end

    -- Sold everything, current storage is empty
    --local currentStorage = STATS_LIBRARY.GetStat(player, "CurMetalStorage")
    STATS_LIBRARY.UpdateStat(player, "CurMetalStorage", INVENTORY.GetItemsCount(player))

    STATS_LIBRARY.IncrementStat(player, "Money", total + CoreMath.Round(total * bonusAmount))
    STATS_LIBRARY.IncrementStat(player, "MoneyAccumulated", total + CoreMath.Round(total * bonusAmount))
    _G.AnalyticsFacade.TrackSoldItems(player, "SoldFish")
end

Events.ConnectForPlayer("FSell", InventorySellAll)