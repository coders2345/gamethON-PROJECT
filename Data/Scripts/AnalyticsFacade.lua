------------------------------------------------------------------------------------------------------------------------
-- AnalyticFacade Server
-- Author Morticai - Team Meta (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 10/19/2020
-- Version 1.0
------------------------------------------------------------------------------------------------------------------------
-- Component that registers itself to the _G table and can be accessed by: _G.AnalyticsFacade
------------------------------------------------------------------------------------------------------------------------
_G.AnalyticsFacade = {}
------------------------------------------------------------------------------------------------------------------------
-- Requires
------------------------------------------------------------------------------------------------------------------------
local FUNNEL_DATA = require(script:GetCustomProperty("FunnelStepsData"))
------------------------------------------------------------------------------------------------------------------------
-- Constants
------------------------------------------------------------------------------------------------------------------------
local DEFAULT = 1
local DETECT = 2
local DIG = 3
local INVENTORY = 4
local FISHING = 5
local FISHING_CAST = 6
local FISHING_PULL = 7
------------------------------------------------------------------------------------------------------------------------
-- Local Functions
------------------------------------------------------------------------------------------------------------------------
local function CheckIsActive(value)
    return value ~= nil and value >= 1 and value <= 24
end

--UpgradesManagerServer.lua
local function UpgradeAcquired(Player, upgradeId)
    if upgradeId == "BarnLevel" and CheckIsActive(FUNNEL_DATA.EXPAND_STORAGE) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.EXPAND_STORAGE)
    elseif upgradeId == "ShovelLevel" and CheckIsActive(FUNNEL_DATA.UPGRADE_SHOVEL) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.UPGRADE_SHOVEL)
    elseif upgradeId == "MetalDetectorLevel" and CheckIsActive(FUNNEL_DATA.UPGRADE_METAL_DETECTOR) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.UPGRADE_METAL_DETECTOR)
    elseif upgradeId == "FishingRodLevel" and CheckIsActive(FUNNEL_DATA.UPGRADE_FISHING_ROD) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.UPGRADE_FISHING_ROD)
    end
end

local function TrackSoldItems(Player, str)
    if str == "SoldCrops" and CheckIsActive(FUNNEL_DATA.SELL_CROPS) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.SELL_CROPS)
    elseif str == "SoldFish" and CheckIsActive(FUNNEL_DATA.SELL_FISH) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.SELL_FISH)
    elseif str == "SoldCollectables" and CheckIsActive(FUNNEL_DATA.SELL_JUNK) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.SELL_JUNK)
    end
end

local function InteractionTracking(Player, int)
    if int == DETECT and CheckIsActive(FUNNEL_DATA.EQUIP_METAL_DETECTOR) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.EQUIP_METAL_DETECTOR)
    elseif int == DIG and CheckIsActive(FUNNEL_DATA.FIND_JUNK) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.FIND_JUNK)
        Events.Broadcast("AddRewardPointsProgress", Player, 3, 1)
    elseif int == FISHING and CheckIsActive(FUNNEL_DATA.EQUIP_FISHING_ROD) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.EQUIP_FISHING_ROD)
    elseif int == FISHING_CAST and CheckIsActive(FUNNEL_DATA.USE_FISHING_ROD) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.USE_FISHING_ROD)
        Events.Broadcast("AddRewardPointsProgress", Player, 4, 1)
    elseif int == INVENTORY and CheckIsActive(FUNNEL_DATA.VIEW_COLLECTIBLES_UI) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.VIEW_COLLECTIBLES_UI)
    end
end

------------------------------------------------------------------------------------------------------------------------
-- Public Functions
------------------------------------------------------------------------------------------------------------------------
function _G.AnalyticsFacade.UpgradeAcquired(Player, upgradeId, currentValue)
    if currentValue > 0 then
        UpgradeAcquired(Player, upgradeId)
    end
end

function _G.AnalyticsFacade.TrackSoldItems(Player, str)
    TrackSoldItems(Player, str)
end

function _G.AnalyticsFacade.InteractionTracking(Player, int)
    InteractionTracking(Player, int)
end
