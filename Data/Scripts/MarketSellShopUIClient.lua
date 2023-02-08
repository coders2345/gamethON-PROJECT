local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_MARKET_PRICES = require(script:GetCustomProperty("APIMarketPrices"))
local API_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local API_DAY_CYCLE = require(script:GetCustomProperty("APIDayNightCycle"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))

local PANEL = script:GetCustomProperty("MarketSellPanel"):WaitForObject()
local propItemPanelAsset = script:GetCustomProperty("ItemPanelAsset")
local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local ITEMS_PANEL = GET(PANEL, "ItemsPanel")
local MARKET_TIMER_TEXT = GET(GET(PANEL, "MarketTimerPanel"), "MarketTimerText")
local MARKET_NOTIFICATION_TEXT = GET(PANEL, "MarketNotification")
local TOTAL_PANEL = GET(ITEMS_PANEL, "TotalPanel")
local SELL_BUTTON = GET(PANEL, "SellButton")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local itemInstancePanels = {}
local itemSelected = {}
local remainingTime = .5

-- Get current time market price offset for day cycle
-- Current time sets market price change during midnight - dawn
function GetCurrentTime()
    local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
    return API_DAY_CYCLE.GetCycleState().currentTime + (.5 * dayLengthMinutes * 60)
end

function Tick()
    if not PANEL:IsVisibleInHierarchy() then return end

    local dayState = API_DAY_CYCLE.GetCycleState()
    if not dayState then return end
    local dayCycleFractionTime = API_DAY_CYCLE.GetDayCycleTime()

    if dayState.currentState ~= "Midnight" then
        if not ITEMS_PANEL:IsVisibleInHierarchy() then
            ResetMarketUI()
        end
        if dayCycleFractionTime < 0.75 then
            remainingTime = .5 - dayCycleFractionTime
        else
            remainingTime = 1.5 - dayCycleFractionTime
        end
        local remainingTimeInSeconds = remainingTime * dayState.dayLengthMinutes * 60
        if remainingTimeInSeconds < 90 then
            local color = Color.Lerp(Color.WHITE, Color.RED, math.sin(time() * 5))
            MARKET_TIMER_TEXT:SetColor(color)
        end
        MARKET_TIMER_TEXT.text = "Market Closes in "..UTILITIES_LIBRARY.UpdateTimeRemaining(remainingTimeInSeconds)
    else
        if ITEMS_PANEL:IsVisibleInHierarchy() then
            ResetMarketUI()
        end
        remainingTime = .75 - dayCycleFractionTime
        local remainingTimeInSeconds = remainingTime * dayState.dayLengthMinutes * 60
        if remainingTimeInSeconds < 30 then
            local color = Color.Lerp(Color.WHITE, Color.GREEN, math.sin(time() * 5))
            MARKET_TIMER_TEXT:SetColor(color)
        end
        MARKET_TIMER_TEXT.text = "Market Opens in "..UTILITIES_LIBRARY.UpdateTimeRemaining(remainingTimeInSeconds)
    end
end

function OnSell()
    Events.BroadcastToServer("MarketSellTest")
    itemSelected = {}
    SELL_BUTTON.isInteractable = false
    Task.Wait(1)
    ResetMarketUI()
end

function UpdateTotalPrice()
    local total = 0
    local originalTotal = 0
    local membersCount = 0
    local bonusAmount = 0

    for resource, count in pairs(itemSelected) do
        local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
        local marketResourcePrice, originalPrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime(), dayLengthMinutes)
        total = total + (count * marketResourcePrice)
        originalTotal = originalTotal + (count * originalPrice)
    end

    SELL_BUTTON.isInteractable = total > 0

    if API_MEMBERSHIP.IsRegistered() then
        membersCount = #API_MEMBERSHIP.GetMembers()
        if membersCount >= API_MEMBERSHIP.GetMaxMembersBonus() then
            membersCount = API_MEMBERSHIP.GetMaxMembersBonus()
        end
        bonusAmount = membersCount * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.CROP_SELL_BONUS)
    end

    if membersCount > 0 then
        -- Set comparison price to original
        GET(TOTAL_PANEL, "OriginalTotalPanel").visibility = Visibility.INHERIT
        GET(TOTAL_PANEL, "OriginalTotal").text = "$"..UTILITIES_LIBRARY.FormatMoney(total)

        -- VIP price server boost
        GET(TOTAL_PANEL, "VIPPanel").visibility = Visibility.INHERIT
        GET(TOTAL_PANEL, "VIPLabel").text = string.format("x%d VIP Members Bonus (+%d%s)", membersCount, bonusAmount * 100, "%")

        if total > 0 then
            GET(TOTAL_PANEL, "VIPBonus").text = "+$"..UTILITIES_LIBRARY.FormatMoney(CoreMath.Round(total * bonusAmount))
        else
            GET(TOTAL_PANEL, "VIPBonus").text = "$"..UTILITIES_LIBRARY.FormatMoney(CoreMath.Round(total * bonusAmount))
        end
    else
        GET(TOTAL_PANEL, "VIPPanel").visibility = Visibility.FORCE_OFF
        GET(TOTAL_PANEL, "OriginalTotalPanel").visibility = Visibility.FORCE_OFF
    end

    GET(TOTAL_PANEL, "TotalPrice").text = "$"..UTILITIES_LIBRARY.FormatMoney(CoreMath.Round(total + total * bonusAmount))

end

function OnQuantityButton(button)
    local instance = button.clientUserData.instance
    local resource = instance.clientUserData.resource
    local resourceAmount = STATS_LIBRARY.GetStat(LOCAL_PLAYER, resource)
    local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
    local marketResourcePrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime(), dayLengthMinutes)
    local quantityText = GET(instance, "QuantityText")
    local currentQuantity = tonumber(quantityText.text)

    local addButton = GET(instance, "AddButton")
    local subtractButton = GET(instance, "SubtractButton")
    local maxButton = GET(instance, "MaxButton")

    if addButton == button then
        currentQuantity = currentQuantity + 1
        if currentQuantity > resourceAmount then
            currentQuantity = resourceAmount
        end
    elseif subtractButton == button then
        currentQuantity = currentQuantity - 1
        if currentQuantity < 0 then
            currentQuantity = 0
        end
    elseif maxButton == button then
        currentQuantity = resourceAmount
    end

    if currentQuantity >= resourceAmount then
        addButton.isInteractable = false
        maxButton.isInteractable = false
        subtractButton.isInteractable = true
    elseif currentQuantity < resourceAmount and currentQuantity > 0 then
        addButton.isInteractable = true
        subtractButton.isInteractable = true
        maxButton.isInteractable = true
    elseif currentQuantity == 0 then
        subtractButton.isInteractable = false
        if resourceAmount > 0 then
            addButton.isInteractable = true
            maxButton.isInteractable = true
        else
            addButton.isInteractable = false
            maxButton.isInteractable = false
        end
    end

    quantityText.text = tostring(currentQuantity)
    itemSelected[resource] = currentQuantity
    Events.BroadcastToServer("MarketSellCount", resource, currentQuantity)

    local total = marketResourcePrice * tonumber(currentQuantity)
    GET(instance, "TotalPrice").text = "$"..UTILITIES_LIBRARY.FormatMoney(total)
    UpdateTotalPrice()
end

function ResetMarketUI()
    for _, instance in ipairs(itemInstancePanels) do
        local resource = instance.clientUserData.resource
        local resourceAmount = STATS_LIBRARY.GetStat(LOCAL_PLAYER, resource)
        local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes
        local marketResourcePrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime(), dayLengthMinutes)
        local previousDayPrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime() - (dayLengthMinutes * 60), dayLengthMinutes)
        local priceChange = UTILITIES_LIBRARY.RoundFloat(marketResourcePrice - previousDayPrice)
        local percentageChange = UTILITIES_LIBRARY.RoundFloat((marketResourcePrice - previousDayPrice) / previousDayPrice * 100)

        GET(instance, "ResourceCount").text = "x"..tostring(resourceAmount)

        GET(instance, "QuantityText").text = "0"
        GET(instance, "SubtractButton").isInteractable = false

        if resourceAmount > 0 then
            GET(instance, "AddButton").isInteractable = true
            GET(instance, "MaxButton").isInteractable = true
        else
            GET(instance, "AddButton").isInteractable = false
            GET(instance, "MaxButton").isInteractable = false
        end

        local priceText = GET(instance, "Price")
        local priceChangeText = GET(instance, "PriceChange")
        local priceChangeArrow = GET(instance, "PriceChangeArrow")
        local priceChangePercentageText = GET(instance, "PriceChangePercentage")

        priceText.text = "$"..UTILITIES_LIBRARY.FormatMoney(marketResourcePrice)
        local priceColor = Color.WHITE
        if percentageChange < 0 then
            priceChangeText.text = string.format("-$%.0f", math.abs(priceChange))
            priceChangePercentageText.text = string.format("(%d%s)", percentageChange, "%")
            priceColor = Color.RED
            priceChangeArrow.rotationAngle = 180
            priceChangeArrow.visibility = Visibility.INHERIT
        elseif percentageChange == 0 then
            priceChangeText.text = string.format("$%.0f", math.abs(priceChange))
            priceChangePercentageText.text = string.format("(%d%s)", percentageChange, "%")
            priceChangeArrow.visibility = Visibility.FORCE_OFF
        else
            priceChangeText.text = string.format("+$%.0f", math.abs(priceChange))
            priceChangePercentageText.text = string.format("(+%d%s)", percentageChange, "%")
            priceColor = Color.GREEN
            priceChangeArrow.rotationAngle = 0
            priceChangeArrow.visibility = Visibility.INHERIT
        end

        priceText:SetColor(priceColor)
        priceChangeText:SetColor(priceColor)
        priceChangeArrow:SetColor(priceColor)
        priceChangePercentageText:SetColor(priceColor)

        GET(instance, "TotalPrice").text = "$0"
        GET(instance, "YesterdayPrice").text = "$"..UTILITIES_LIBRARY.FormatMoney(previousDayPrice)
    end

    local dayState = API_DAY_CYCLE.GetCycleState()
    if dayState.currentState ~= "Midnight" then
        MARKET_NOTIFICATION_TEXT.visibility = Visibility.FORCE_OFF
        ITEMS_PANEL.visibility = Visibility.INHERIT
        TOTAL_PANEL.visibility = Visibility.INHERIT
        SELL_BUTTON.visibility = Visibility.INHERIT
    else
        MARKET_NOTIFICATION_TEXT.visibility = Visibility.INHERIT
        ITEMS_PANEL.visibility = Visibility.FORCE_OFF
        TOTAL_PANEL.visibility = Visibility.FORCE_OFF
        SELL_BUTTON.visibility = Visibility.FORCE_OFF
    end
    MARKET_TIMER_TEXT:SetColor(Color.WHITE)

    itemSelected = {}
    UpdateTotalPrice()
    Events.BroadcastToServer("MarketSellReset")
end

function SetupItemsPanel()
    local SCROLL_PANEL = GET(ITEMS_PANEL, "ItemsScrollPanel")
    local validResources = API_STORAGE.GetValidResources()

    for _, child in ipairs(SCROLL_PANEL:GetChildren()) do
        child:Destroy()
    end

    for i, resource in ipairs(validResources) do
        local instance = World.SpawnAsset(propItemPanelAsset, {parent = SCROLL_PANEL})
        instance.clientUserData.resource = resource

        GET(instance, "ResourceName").text = STATS_LIST[resource].name
        GET(instance, "ResourceIcon"):SetImage(STATS_LIST[resource].icon)
        --GET(instance, "ResourceIcon"):SetColor(STATS_LIST[resource].iconColor)

        GET(instance, "AddButton").clientUserData.instance = instance
        GET(instance, "SubtractButton").clientUserData.instance = instance
        GET(instance, "MaxButton").clientUserData.instance = instance

        GET(instance, "AddButton").clickedEvent:Connect(OnQuantityButton)
        GET(instance, "SubtractButton").clickedEvent:Connect(OnQuantityButton)
        GET(instance, "MaxButton").clickedEvent:Connect(OnQuantityButton)

        instance.y = instance.height * (i - 1)

        table.insert(itemInstancePanels, instance)
    end

    UpdateTotalPrice()
    SELL_BUTTON.clickedEvent:Connect(OnSell)
end

function OnDawn()
    local dayState = API_DAY_CYCLE.GetCycleState()
    if not dayState then return end

    if dayState.serverStartOSTime + time() < 10 then return end

    local goodResources = ""
    local goodResourcesTable = {}

    local dayLengthMinutes = API_DAY_CYCLE.GetCycleState().dayLengthMinutes

    for _, resource in ipairs(API_STORAGE.GetValidResources()) do
        local marketResourcePrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime(), dayLengthMinutes)
        local previousDayPrice = API_MARKET_PRICES.GetResourceMarketPrice(resource, GetCurrentTime() - (dayLengthMinutes * 60), dayLengthMinutes)
        local percentageChange = (marketResourcePrice - previousDayPrice) / previousDayPrice * 100
        if percentageChange > 0 then
            table.insert(goodResourcesTable, resource)
        end
    end

    for i, resource in ipairs(goodResourcesTable) do
        if goodResources == "" then
            goodResources = STATS_LIST[resource].name
        elseif i == #goodResourcesTable and goodResources ~= "" then
            goodResources = goodResources.." and "..STATS_LIST[resource].name
        else
            goodResources = goodResources..", "..STATS_LIST[resource].name
        end
    end

    if goodResources ~= "" then
        if #goodResourcesTable > 1 then
            goodResources = goodResources.." are up in prices today!"
        else
            goodResources = goodResources.." is up in price today!"
        end
        Events.Broadcast("ShowNotification", "Market Open", goodResources, Color.EMERALD, nil, Color.New(0,0,0,0), Color.WHITE, Color.WHITE)
    end
end

function ToggleUI (uniqueId)
    if uniqueId == "MarketSellUI" then
        ResetMarketUI()
    end
end

function MembershipUpdates()
    UpdateTotalPrice()
end

-- Connect events
Events.Connect("ToggleUI", ToggleUI)
Events.Connect("Dawn", OnDawn)
Events.Connect("MembershipPurchased", MembershipUpdates)
Events.Connect("MemberJoined", MembershipUpdates)
Events.Connect("MemberLeft", MembershipUpdates)

-- Setup UI
SetupItemsPanel()
PANEL.visibility = Visibility.FORCE_OFF


