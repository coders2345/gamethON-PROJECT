local API_MARKET_PRICES = require(script:GetCustomProperty("APIMarketPrices"))
local API_DAY_CYCLE = require(script:GetCustomProperty("APIDayNightCycle"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local itemSelected = {}

-- Get current time market price offset for day cycle
-- Current time sets market price change during midnight - dawn
function GetCurrentTime()
    local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
    return API_DAY_CYCLE.GetCycleState().currentTime + (.5 * dayLengthMinutes * 60)
end

function MarketSell(player)
    local total = 0
    local bonusAmount = 0

    if API_MEMBERSHIP.IsRegistered() then
        local membersCount = #API_MEMBERSHIP.GetMembers()
        if membersCount >= API_MEMBERSHIP.GetMaxMembersBonus() then
            membersCount = API_MEMBERSHIP.GetMaxMembersBonus()
        end
        bonusAmount = membersCount * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.CROP_SELL_BONUS)
    end

    for resource, count in pairs(itemSelected[player]) do
        local currentResource = STATS_LIBRARY.GetStat(player, resource)
        local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
        local marketResourcePrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime(), dayLengthMinutes)
        -- Preventing barn to go below 0
        if currentResource - count < 0 then
            count = currentResource
        end


        -- CJC
        --[[
        if player:GetResource("GMC_buff_gold") then
            marketResourcePrice = marketResourcePrice * 2
            print("Doubling price to", marketResourcePrice)
        end
        ]]

        total = total + (count * marketResourcePrice)
        STATS_LIBRARY.UpdateStat(player, resource, currentResource - count)
        STATS_LIBRARY.IncrementStat(player, resource.."Sold", 1)
    end

    STATS_LIBRARY.IncrementStat(player, "Money", total + CoreMath.Round(total * bonusAmount))
    STATS_LIBRARY.IncrementStat(player, "MoneyAccumulated", total + CoreMath.Round(total * bonusAmount))
    _G.AnalyticsFacade.TrackSoldItems(player, "SoldCrops")
end

function SellCount(player, resource, count)
    if not itemSelected[player] then
        itemSelected[player] = {}
    end
    itemSelected[player][resource] = count
end

function SellReset(player)
    itemSelected[player] = {}
end

Events.ConnectForPlayer("MarketSellTest", MarketSell)
Events.ConnectForPlayer("MarketSellCount", SellCount)
Events.ConnectForPlayer("MarketSellReset", SellReset)