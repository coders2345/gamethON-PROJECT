local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))

function HandleStatChanged(player, key, value)
    if not UPGRADES_LIST[key] then return end
    Events.Broadcast("UpgradeComplete", player, statId, value)
end

function CheckRequiredStats(player, upgradeParams, key)
    if upgradeParams[key] then
        for statId, value in pairs(upgradeParams[key]) do
            local currentStatVal = STATS_LIBRARY.GetStat(player, statId)

            if currentStatVal < value then
                return false
            end
        end
    end
    return true
end

function UpdateConsumeStat(player, resource, currentCost)
    local cost = currentCost
    local isValidResource, discountType = API_MEMBERSHIP.IsResourceValidForDiscount(resource)

    if isValidResource and API_MEMBERSHIP.IsPlayerMember(player) then
        local discount = CoreMath.Round(cost * API_MEMBERSHIP.GetSellBonus(discountType))
        return cost - discount
    end
    return cost
end

function DoUpdate(player, upgradeParams, freeUpgrade)
    -- Consume stats for upgrade
    if upgradeParams["consumeStat"] and not freeUpgrade then
        for statId, value in pairs(upgradeParams["consumeStat"]) do
            local currentStatVal = STATS_LIBRARY.GetStat(player, statId)
            STATS_LIBRARY.UpdateStat(player, statId, currentStatVal - value)
        end
    end
    -- Set upgraded results
    if upgradeParams["upgradeResultStats"] then
        for statId, value in pairs(upgradeParams["upgradeResultStats"]) do
            STATS_LIBRARY.UpdateStat(player, statId, value)
        end
    end
end

function TryUpgrade(player, upgradeId, freeUpgrade)
    -- upgrades should be a stat
    if not STATS_LIST[upgradeId] then error("No stat with id " .. tostring(upgradeId) .. " exists") end
    if not UPGRADES_LIST[upgradeId] then warn("No upgrade with id " .. tostring(upgradeId) .. " exists") return end

    -- check requirements
    local currentValue =  STATS_LIBRARY.GetStat(player, upgradeId)
    local nextValue = currentValue + 1
    local upgrades = UPGRADES_LIST[upgradeId]

    if upgrades[nextValue] then
        -- Check if there is VIP membership discount cost for upgrades
        local currentCost = upgrades[nextValue].consumeStat.Money
        if currentCost > 0 then
            upgrades[nextValue].consumeStat.Money = UpdateConsumeStat(player, upgradeId, currentCost)
        end

        -- Consumable stats are also required
        if (CheckRequiredStats(player, upgrades[nextValue], "requiredStats") and CheckRequiredStats(player, upgrades[nextValue], "consumeStat")) 
            or freeUpgrade then
            DoUpdate(player, upgrades[nextValue], freeUpgrade)
            STATS_LIBRARY.UpdateStat(player, upgradeId, nextValue)
            _G.AnalyticsFacade.UpgradeAcquired(player, upgradeId, currentValue)
        end
    end
end

function UpgradeTo(player, upgradeId, level)
     -- upgrades should be a stat
     if not STATS_LIST[upgradeId] then error("No stat with id " .. tostring(upgradeId) .. " exists") end
     if not UPGRADES_LIST[upgradeId] then warn("No upgrade with id " .. tostring(upgradeId) .. " exists") return end
 
     -- check requirements
     local currentValue =  STATS_LIBRARY.GetStat(player, upgradeId)
     if currentValue <= level then
        TryUpgrade(player, upgradeId)
        currentValue =  STATS_LIBRARY.GetStat(player, upgradeId)
     end
end

Events.Connect("StatChangedEvent", HandleStatChanged)
Events.Connect("TryUpgrade", TryUpgrade)
Events.Connect("TryUpgradeTo", UpgradeTo)