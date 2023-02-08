local API_PLOTS = require(script:GetCustomProperty("APIPlots"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local farmId = nil
local plotIndex = 0
local plotOwner = nil

function GetState()
    local result = {}

    result.id = COMPONENT_ROOT.id
    result.farmId = farmId
    result.plotIndex = plotIndex
    result.plotOwner = plotOwner

    return result
end

function SetPlotInfo(id, index, owner)
    farmId = id
    plotIndex = index
    plotOwner = owner
end

function OnUnlock(player, rootId)
    if player ~= plotOwner then return end
    if COMPONENT_ROOT.id ~= rootId then return end

    -- Checks if the player has money to unlock this plot
    local plotCost = API_PLOTS.GetPlotCost(plotIndex)
    local ownerMoney = STATS_LIBRARY.GetStat(player, "Money")

    if API_MEMBERSHIP.IsPlayerMember(player) then
        local discount = CoreMath.Round(plotCost * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.LAND_DISCOUNT))
        plotCost = plotCost - discount
    end

    if ownerMoney < plotCost then return end

    -- Unlocking the plot of land
    STATS_LIBRARY.UpdateStat(player, "PlotsUnlocked", plotIndex)
    STATS_LIBRARY.IncrementStat(player, "Money", -plotCost)
end

function Reset()
    plotOwner = nil
end

Events.ConnectForPlayer("UnlockPlot", OnUnlock)

local functionTable = {}
functionTable.GetState = GetState
functionTable.SetPlotInfo = SetPlotInfo
functionTable.Reset = Reset

API_PLOTS.RegisterPlot(COMPONENT_ROOT.id, functionTable)