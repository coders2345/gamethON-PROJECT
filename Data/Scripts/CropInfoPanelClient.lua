local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local FARM_LIBRARY = require(script:GetCustomProperty("FarmLibrary"))
local UTIL_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_PLOTS = require(script:GetCustomProperty("APIPlots"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))

local parentPanel = script.parent

local propPlantInfoPanel = script:GetCustomProperty("PlantInfoPanel"):WaitForObject()
local propPlotInfoPanel = script:GetCustomProperty("PlotInfoPanel"):WaitForObject()
local propHarvestInstructionPanel = script:GetCustomProperty("HarvestInstructionPanel"):WaitForObject()
local propInstaGrowInstructionPanel = script:GetCustomProperty("InstaGrowInstructionPanel"):WaitForObject()
local propPlantInstructionPanel = script:GetCustomProperty("PlantInstructionPanel"):WaitForObject()
local propPlotInstructionPanel = script:GetCustomProperty("PlotInstructionPanel"):WaitForObject()

local propCropName = script:GetCustomProperty("CropName"):WaitForObject()
local propTime = script:GetCustomProperty("Time"):WaitForObject()
local propProgressBar = script:GetCustomProperty("ProgressBar"):WaitForObject()
local propCropIcon = script:GetCustomProperty("CropIcon"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local landIcon = Get(propPlotInfoPanel, "LandIcon")
local landText = Get(propPlotInfoPanel, "LandText")
local landCost = Get(propPlotInfoPanel, "LandCost")
local VIP_LABEL = Get(propPlotInfoPanel, "VIPDiscountText")

local originalLandIcon = landIcon:GetImage()
local originalLandColor = landIcon:GetColor()

local OFFSET = 350

local LOCAL_PLAYER = Game.GetLocalPlayer()

local STATES = {
    EMPTY = 0,
    GROWING = 1,
    READY = 2
}

function UpdatePlantPanel(currentPlant)
    local uiPos = UI.GetScreenPosition(currentPlant:GetWorldPosition() + Vector3.UP * OFFSET)
    parentPanel.x = uiPos.x
    parentPanel.y = uiPos.y

    if uiPos then
        local plantData = FARM_LIBRARY.GetPlantObjectData(currentPlant)
        local resourceData = FARM_LIBRARY.GetPlantResourceData(plantData.resource)

        propCropName.text = STATS_LIST[plantData.resource].name
        local cropColor = STATS_LIST[plantData.resource].iconColor
        propCropName:SetColor(cropColor)

        propCropIcon:SetImage(STATS_LIST[plantData.resource].icon)
        propCropIcon:SetColor(Color.WHITE)

        local currentState = currentPlant.clientUserData.currentState
        if currentState == STATES.GROWING then
            parentPanel.visibility = Visibility.INHERIT
            propInstaGrowInstructionPanel.visibility = Visibility.INHERIT
            propPlantInfoPanel.visibility = Visibility.INHERIT

            local famerInstaGrows = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "InstaGrow")
            local instaGrowCostText = Get(propInstaGrowInstructionPanel, "InstaGrowCost")
            local progress = FARM_LIBRARY.GetPlantProgress(currentPlant)

            propProgressBar.progress = CoreMath.Clamp(progress/resourceData.timeToGrow)
            propProgressBar:SetFillColor(cropColor)

            local remainingTime = resourceData.timeToGrow - progress
            local instaGrowCost = CoreMath.Round(remainingTime/(15*60))

            if instaGrowCost <= 0 then
                instaGrowCost = 1
            end

            if instaGrowCost <= famerInstaGrows then
                instaGrowCostText:SetColor(Color.WHITE)
            else
                instaGrowCostText:SetColor(Color.RED)
            end
            instaGrowCostText.text = string.format("%d", instaGrowCost)

            propTime.text = UTIL_LIBRARY.UpdateTimeRemaining(FARM_LIBRARY.GetPlantTimeRemaining(currentPlant))
            propTime:SetColor(Color.BLACK)

        elseif currentState == STATES.READY then
            parentPanel.visibility = Visibility.INHERIT
            propPlantInfoPanel.visibility = Visibility.INHERIT
            propHarvestInstructionPanel.visibility = Visibility.INHERIT

            propProgressBar.progress = 1
            propProgressBar:SetFillColor(cropColor)

            propTime.text = "READY"
            propTime:SetColor(Color.BLACK)
        end
    else
        parentPanel.visibility = Visibility.FORCE_OFF
    end
end

function UpdatePlotPanel(currentPlot)
    local uiPos = UI.GetScreenPosition(currentPlot:GetWorldPosition() + Vector3.UP * OFFSET)
    parentPanel.x = uiPos.x
    parentPanel.y = uiPos.y

    if uiPos then
        local state = API_PLOTS.GetPlotState(currentPlot.id)
        local farmerMoney = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")

        parentPanel.visibility = Visibility.INHERIT
        propPlotInfoPanel.visibility = Visibility.INHERIT

        if state.isLocked then
            propPlotInstructionPanel.visibility = Visibility.INHERIT

            local plotCost = API_PLOTS.GetPlotCost(state.plotIndex)

            if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
                local discount = API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.LAND_DISCOUNT)
                local totalDiscount = CoreMath.Round(plotCost * discount)
                plotCost = plotCost - totalDiscount
                VIP_LABEL.text = string.format("%.0f%s VIP Discount", discount * 100, "%")
            else
                VIP_LABEL.text = ""
            end

            landCost.text = UTIL_LIBRARY.FormatMoney(plotCost)
            landText.text = string.format("Plot Land %d",state.plotIndex)

            landText:SetColor(Color.ORANGE)

            if farmerMoney >= plotCost then
                landCost:SetColor(Color.WHITE)
            else
                landCost:SetColor(Color.RED)
            end

            landIcon:SetImage(originalLandIcon)
            landIcon:SetColor(originalLandColor)
        else
            propPlantInstructionPanel.visibility = Visibility.INHERIT
            VIP_LABEL.text = ""

            local currentPlantResource = LOCAL_PLAYER.clientUserData.currentPlantResource
            local resourceData = FARM_LIBRARY.GetPlantResourceData(currentPlantResource)

            local cropColor = STATS_LIST[currentPlantResource].iconColor

            landText.text = STATS_LIST[currentPlantResource].name
            landText:SetColor(cropColor)

            landIcon:SetImage(STATS_LIST[currentPlantResource].icon)
            landIcon:SetColor(Color.WHITE)

            landCost.text = tostring(resourceData.cost)
            if farmerMoney >= resourceData.cost then
                landCost:SetColor(Color.WHITE)
            else
                landCost:SetColor(Color.RED)
            end
        end
    else
        parentPanel.visibility = Visibility.FORCE_OFF
    end
end

function Tick()
    local currentPlant, currentPlot = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)

    propPlotInfoPanel.visibility = Visibility.FORCE_OFF
    propPlantInfoPanel.visibility = Visibility.FORCE_OFF
    propHarvestInstructionPanel.visibility = Visibility.FORCE_OFF
    propInstaGrowInstructionPanel.visibility = Visibility.FORCE_OFF
    propPlotInstructionPanel.visibility = Visibility.FORCE_OFF
    propPlantInstructionPanel.visibility = Visibility.FORCE_OFF

    if Object.IsValid(currentPlant) then
        UpdatePlantPanel(currentPlant)
    else
        if Object.IsValid(currentPlot) then
            UpdatePlotPanel(currentPlot)
        else
            parentPanel.visibility = Visibility.FORCE_OFF
        end
    end
end