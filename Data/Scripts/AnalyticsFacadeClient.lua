------------------------------------------------------------------------------------------------------------------------
-- AnalyticFacade Client
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
-- Local Functions
------------------------------------------------------------------------------------------------------------------------
local function CheckIsActive(value)
    return value ~= nil and value >= 1 and value <= 24
end

--UIToggleBindingEventClient.lua
local function BindingToggle(Player, str)
    if str == "TutorialUI" and CheckIsActive(FUNNEL_DATA.TUTORIAL_UI_TOGGLE) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.TUTORIAL_UI_TOGGLE)
    elseif str == "BarnUI" and CheckIsActive(FUNNEL_DATA.VIEW_BARN_UI) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.VIEW_BARN_UI)
    elseif str == "CropUI" and CheckIsActive(FUNNEL_DATA.SWITCH_CROP_UI) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.SWITCH_CROP_UI)
    elseif str == "PlayerAchievementsUI" and CheckIsActive(FUNNEL_DATA.PLAYER_ACHIEVEMENTS_UI) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.PLAYER_ACHIEVEMENTS_UI)
    elseif str == "ShovelUI" and CheckIsActive(FUNNEL_DATA.VIEW_SHOVEL_UPGRADE) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.VIEW_SHOVEL_UPGRADE)
    end
end

--CropPlantFeedBackClient.lua
local function TrackFarming(Player, str)
    if str == "CollectCrop" and CheckIsActive(FUNNEL_DATA.COLLECT_CROP) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.COLLECT_CROP)
    elseif str == "BuyPlot" and CheckIsActive(FUNNEL_DATA.BUY_PLOT) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.BUY_PLOT)
    elseif str == "PlantCrop" and CheckIsActive(FUNNEL_DATA.PLANT_CROP) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.PLANT_CROP)
    end
end

--FishPromptPullClient.lua
local function TrackFishing(Player, str)
    if str == "MiniGame" and CheckIsActive(FUNNEL_DATA.FISHING_MINI_GAME) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.FISHING_MINI_GAME)
    elseif str == "Failed" and CheckIsActive(FUNNEL_DATA.FAILED_TO_CATCH_FISH) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.FAILED_TO_CATCH_FISH)
    elseif str == "Success" and CheckIsActive(FUNNEL_DATA.CATCH_FISH) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.CATCH_FISH)
    end
end

local function TrackAchievments(Player, str, id)
    if str == "TrackAchievement" and CheckIsActive(FUNNEL_DATA.COLLECT_ACHIEVEMENT) then
        _G.Funnel.SetPlayerStepComplete(Player, FUNNEL_DATA.COLLECT_ACHIEVEMENT)
    end
end

------------------------------------------------------------------------------------------------------------------------
-- Public Functions
------------------------------------------------------------------------------------------------------------------------
function _G.AnalyticsFacade.BindingToggle(Player, str)
    BindingToggle(Player, str)
end

function _G.AnalyticsFacade.TrackFarming(Player, str)
    TrackFarming(Player, str)
end

function _G.AnalyticsFacade.TrackFishing(Player, str)
    TrackFishing(Player, str)
end

function _G.AnalyticsFacade.TrackAchivements(Player, str, id)
    TrackAchievments(Player, str, id)
end
