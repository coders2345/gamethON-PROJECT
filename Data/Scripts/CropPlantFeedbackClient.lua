local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local FARM_LIBRARY = require(script:GetCustomProperty("FarmLibrary"))
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local API_PLOTS = require(script:GetCustomProperty("APIPlots"))
local API_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PLANT_EFFECT = COMPONENT_ROOT:GetCustomProperty("PlantEffect")
local PLANT_UNLOCK_EFFECT = COMPONENT_ROOT:GetCustomProperty("PlantLandUnlockEffect")
local HARVEST_EFFECT = COMPONENT_ROOT:GetCustomProperty("HarvestEffect")
local FAIL_SOUND = COMPONENT_ROOT:GetCustomProperty("FailSound"):WaitForObject()
local NOTIFICATION_DELAY = COMPONENT_ROOT:GetCustomProperty("NotificationDelay")
local NOTIFICATION_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationColor")
local NOTIFICATION_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationTextColor")
local NOTIFICATION_BODY_COLOR = COMPONENT_ROOT:GetCustomProperty("NotificationBodyColor")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local STATES = {
    EMPTY = 0,
    GROWING = 1,
    READY = 2
}

local ability = nil
local notifications = {}
local lastTime = time()

function Tick()
    if not Object.IsValid(ability) then
        for _, value in ipairs(LOCAL_PLAYER:GetAbilities()) do
            if value.name == "Harvest Ability" then
                ability = value
            end
        end
    end

    if lastTime + NOTIFICATION_DELAY < time() then
        for resource, value in pairs(notifications) do
            if value > 0 then
                ShowNotification(resource, value)
            end
            notifications[resource] = 0
            Task.Wait(.3)
        end
        lastTime = time()
    end
end

function GetFlyUpPosition(additionalOffset)
    if not additionalOffset then
        additionalOffset = 0
    end
    return LOCAL_PLAYER:GetWorldPosition() + Vector3.UP * 100 + additionalOffset
end

local function WaitOnDefaultAbility()
	-- revert to default interaction before engaging
    -- as the required ability is bound to the PI_DEFAULT shovel
    local currentInteraction = INTERACTION_LIBRARY.GetCurrentPlayerInteraction(LOCAL_PLAYER)
    if currentInteraction ~= INTERACTION_LIBRARY.DEFAULT then
    	Events.BroadcastToServer("RequestInteraction", LOCAL_PLAYER, INTERACTION_LIBRARY.DEFAULT)
    end
    while not Object.IsValid(ability) do
    	Task.Wait(.1)
    end
end

function OnPlantInteract()
    local currentPlant = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)
    if not Object.IsValid(currentPlant) then return end

    if LOCAL_PLAYER.id ~= currentPlant.clientUserData.plantData.ownerId then return end

    local currentState = currentPlant.clientUserData.currentState
    if currentState == STATES.READY then
        local plantResource = FARM_LIBRARY.GetPlantObjectData(currentPlant).resource
        local barnLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "BarnLevel")
        local storage = API_STORAGE.GetBarnCurrentStorage(LOCAL_PLAYER)
        local maxStorage = API_STORAGE.GetBarnMaxStorage(barnLevel)
        if storage >= maxStorage then
            UI.ShowFlyUpText("MAX BARN STORAGE CAPACITY!", GetFlyUpPosition(), {color = Color.RED})
            FAIL_SOUND:Play()
        else
            WaitOnDefaultAbility()

            if ability:GetCurrentPhase() == AbilityPhase.READY then
                ability:Activate() else return end
            Task.Wait(ability.castPhaseSettings.duration)

            World.SpawnAsset(HARVEST_EFFECT, {position = currentPlant:GetWorldPosition()})

            if storage + 1 == maxStorage then
                API_STORAGE.ShowErrorNotification()
            end

            UI.ShowFlyUpText(string.format("+%d %s", 1, STATS_LIST[plantResource].name), GetFlyUpPosition(), {color = Color.GREEN})

            Events.BroadcastToServer("Harvest", currentPlant.clientUserData.plotIndex, plantResource)
            _G.AnalyticsFacade.TrackFarming(LOCAL_PLAYER, "CollectCrop")
        end
    else
    end
end

function OnPlotPurchase()
    local currentPlant, currentPlot = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)
    if Object.IsValid(currentPlant) then return end
    if not Object.IsValid(currentPlot) then return end

    local state = API_PLOTS.GetPlotState(currentPlot.id)
    if state.plotOwner ~= LOCAL_PLAYER then return end

    local farmerMoney = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
    local plotCost = API_PLOTS.GetPlotCost(state.plotIndex)

    if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
        local discount = CoreMath.Round(plotCost * API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.LAND_DISCOUNT))
        plotCost = plotCost - discount
    end

    if state.isLocked then
        if farmerMoney >= plotCost then
            Events.BroadcastToServer("UnlockPlot", currentPlot.id)
            UI.ShowFlyUpText("+1 Plot Land", GetFlyUpPosition(0), {color = Color.GREEN})
            if plotCost > 0 then
                UI.ShowFlyUpText("- $"..tostring(plotCost), GetFlyUpPosition(-20), {color = Color.RED})
            end
            World.SpawnAsset(PLANT_UNLOCK_EFFECT, {position = currentPlot:GetWorldPosition()})
            _G.AnalyticsFacade.TrackFarming(LOCAL_PLAYER, "BuyPlot")
        else
            UI.ShowFlyUpText("NOT ENOUGH MONEY!", GetFlyUpPosition(), {color = Color.RED})
            FAIL_SOUND:Play()
        end
    end
end

function OnPlotInteract()
    local currentPlant, currentPlot, currentSelectedCropResource = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)
    if Object.IsValid(currentPlant) then return end
    if not Object.IsValid(currentPlot) then return end

    local state = API_PLOTS.GetPlotState(currentPlot.id)
    if state.plotOwner ~= LOCAL_PLAYER then return end
    if not state.isAvailable then return end

    local farmerMoney = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
    if not state.isLocked then
        if not currentSelectedCropResource then return end

        local currentPlantCost = STATS_LIST[currentSelectedCropResource].plantData.cost

        if farmerMoney >= currentPlantCost then
            WaitOnDefaultAbility()

            if ability:GetCurrentPhase() == AbilityPhase.READY then
                ability:Activate() else return end
            Task.Wait(ability.castPhaseSettings.duration)

            if currentPlantCost > 0 then
                UI.ShowFlyUpText("- $"..tostring(currentPlantCost), GetFlyUpPosition(), {color = Color.GREY})
            end
            Events.BroadcastToServer("Plant", currentPlot.id, currentSelectedCropResource)
            World.SpawnAsset(PLANT_EFFECT, {position = currentPlot:GetWorldPosition()})
            _G.AnalyticsFacade.TrackFarming(LOCAL_PLAYER, "PlantCrop")
        else
            UI.ShowFlyUpText("NOT ENOUGH MONEY!", GetFlyUpPosition(), {color = Color.RED})
            FAIL_SOUND:Play()
        end
    end
end

function OnInstaSeed()
    local currentPlant, currentPlot = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)
    if not Object.IsValid(currentPlant) then return end

    local currentState = currentPlant.clientUserData.currentState
    if currentState == STATES.READY then return end

    WaitOnDefaultAbility()

    local famerInstaGrow = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "InstaGrow")
    local plantResource = FARM_LIBRARY.GetPlantObjectData(currentPlant).resource
    local progress = FARM_LIBRARY.GetPlantProgress(currentPlant)
    local remainingTime = FARM_LIBRARY.GetPlantResourceData(plantResource).timeToGrow - progress

    local cost = CoreMath.Round(remainingTime/(15*60))
    if cost <= 0 then
        cost = 1
    end

    if famerInstaGrow >= cost then
        if cost > 0 then
            UI.ShowFlyUpText("-"..tostring(cost).." Insta Grows", GetFlyUpPosition(-20), {color = Color.GREY})
        end
        World.SpawnAsset(PLANT_EFFECT, {position = currentPlot:GetWorldPosition()})
    else
        UI.ShowFlyUpText("NOT ENOUGH INSTA GROWS!", GetFlyUpPosition(), {color = Color.RED})
        FAIL_SOUND:Play()
        Task.Wait(1.2)
        Events.Broadcast("ToggleUI", "InstaGrow", true)
    end

    Events.BroadcastToServer("Insta", currentPlant.clientUserData.plotIndex, plantResource)
end

function ShowNotification(resource, amount)
    local title = ""
    local body = ""
    if amount == 1 then
        title = STATS_LIST[resource].name.." Ready"
        body = "Plant is ready to be harvested back at your farm."
    elseif amount > 1 then
        title = "x"..amount.." "..STATS_LIST[resource].name.." Ready"
        body = "Plants are ready to be harvested back at your farm."
    end

    Events.Broadcast("ShowNotification", title, body,
    NOTIFICATION_COLOR, STATS_LIST[resource].icon, Color.WHITE, NOTIFICATION_TEXT_COLOR, NOTIFICATION_BODY_COLOR)
end

function OnPlantReady(resource)
    if notifications[resource] then
        notifications[resource] = notifications[resource] + 1
    else
        notifications[resource] = 1
    end
end

function OnBindingPressed(whichPlayer, binding)
    local currentPlant, currentPlot = FARM_LIBRARY.GetCurrentPlantPlotInfo(LOCAL_PLAYER)

    if binding == "ability_primary" then
        if Object.IsValid(currentPlant) then
            OnPlantInteract()
        else
            if Object.IsValid(currentPlot) and not Object.IsValid(currentPlant) then
                OnPlotInteract()
            end
        end
	elseif binding == "ability_extra_33" then
        OnPlotPurchase()
    elseif binding == "ability_secondary" then
        OnInstaSeed()
	end
end

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
Events.Connect("PlantReady", OnPlantReady)