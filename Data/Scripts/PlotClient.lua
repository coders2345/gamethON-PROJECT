local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local API_PLOTS = require(script:GetCustomProperty("APIPlots"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UTIL_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local TRIGGER = script:GetCustomProperty("PlotTrigger"):WaitForObject()
local PLANT_PARENT = script:GetCustomProperty("CropParent"):WaitForObject()
local PLANT_PREVIEW_PARENT = script:GetCustomProperty("PreviewParent"):WaitForObject()
local PLOT_HIGHLIGHT = script:GetCustomProperty("Highlight"):WaitForObject()
local OWNED_GEO = script:GetCustomProperty("OwnedGeo"):WaitForObject()
local NOT_OWNED_GEO = script:GetCustomProperty("NotOwnedGeo"):WaitForObject()

local setup = false
local isLocked = true
local farmParent = nil
local farmId = nil
local plotIndex = 1
local plotOwner = nil
local plantPreviewInstance = nil
local currentPlantResource = ""

local LOCAL_PLAYER = Game.GetLocalPlayer()
local eventHandle = nil

function Tick()
    if not setup then
        local existingParent = script.parent
        farmParent = nil
        while existingParent and farmParent == nil do
            if API_FARMS.GetFarmState(existingParent.id) then
                farmParent = existingParent
            end
            existingParent = existingParent.parent
        end
        if Object.IsValid(farmParent) then
            farmId = farmParent.id
            plotOwner = API_FARMS.GetFarmState(farmId).farmOwner
            local serverScript = API_FARMS.GetServerScript(farmId)
            if serverScript then
                if eventHandle == nil then
                    eventHandle = serverScript.networkedPropertyChangedEvent:Connect(OnNetworkedChangedEvent)
                end
                UpdatePlotPlant()
                UpdateLockState()
                setup = true
            end
        end
    end

    if farmId then
        if plotOwner ~= API_FARMS.GetFarmState(farmId).farmOwner then
            plotOwner = API_FARMS.GetFarmState(farmId).farmOwner
            UpdatePlotPlant()
            UpdateLockState()
        end
    end
end

function GetState()
    local result = {}

    result.id = COMPONENT_ROOT.id
    result.farmId = farmId
    result.isLocked = isLocked
    result.isAvailable = #PLANT_PARENT:GetChildren() == 0
    result.plotIndex = plotIndex
    result.plotOwner = plotOwner

    return result
end

function UpdatePlantPreview()
    if LOCAL_PLAYER ~= plotOwner then return end

    currentPlantResource = LOCAL_PLAYER.clientUserData.currentPlantResource
    if not currentPlantResource then return end

    local plantPreview = STATS_LIST[currentPlantResource].plantData.plantPreviewAsset
    if not plantPreview then return end

    if plantPreviewInstance and plantPreviewInstance.sourceTemplateId ~= plantPreview then
        plantPreviewInstance:Destroy()
        plantPreviewInstance = World.SpawnAsset(plantPreview, {parent = PLANT_PREVIEW_PARENT})
    elseif not plantPreviewInstance then
        plantPreviewInstance = World.SpawnAsset(plantPreview, {parent = PLANT_PREVIEW_PARENT})
    end
end

function OnBeginOverlap(whichTrigger, other)
    if other:IsA("Player") and other == plotOwner then
        PLOT_HIGHLIGHT.visibility = Visibility.INHERIT
        other.clientUserData.currentPlot = COMPONENT_ROOT

        if not isLocked then
            if #PLANT_PARENT:GetChildren() == 0 then
                UpdatePlantPreview()
                PLANT_PREVIEW_PARENT.visibility = Visibility.INHERIT
            else
                PLANT_PREVIEW_PARENT.visibility = Visibility.FORCE_OFF
            end
        end
    end
end

function OnEndOverlap(whichTrigger, other)
    if other:IsA("Player") and other == plotOwner then
        if other.clientUserData.currentPlot == COMPONENT_ROOT then
            other.clientUserData.currentPlot = nil
        end
        PLOT_HIGHLIGHT.visibility = Visibility.FORCE_OFF
        PLANT_PREVIEW_PARENT.visibility = Visibility.FORCE_OFF
    end
end

function UpdateLockState()
    if not Object.IsValid(plotOwner) then
        OWNED_GEO.visibility = Visibility.FORCE_OFF
        NOT_OWNED_GEO.visibility = Visibility.FORCE_OFF
        TRIGGER.collision = Collision.FORCE_OFF
        return
    end

    local plotsUnlocked = STATS_LIBRARY.GetStat(plotOwner, "PlotsUnlocked")

    if plotsUnlocked >= plotIndex then
        isLocked = false
    else
        isLocked = true
    end

    if LOCAL_PLAYER == plotOwner then
        if isLocked then
            if plotsUnlocked + 1 == plotIndex then
                TRIGGER.collision = Collision.INHERIT
                NOT_OWNED_GEO.visibility = Visibility.INHERIT
            else
                TRIGGER.collision = Collision.FORCE_OFF
                NOT_OWNED_GEO.visibility = Visibility.FORCE_OFF
            end
            OWNED_GEO.visibility = Visibility.FORCE_OFF
        else
            TRIGGER.collision = Collision.INHERIT
            OWNED_GEO.visibility = Visibility.INHERIT
            NOT_OWNED_GEO.visibility = Visibility.FORCE_OFF
        end
    else
        TRIGGER.collision = Collision.FORCE_OFF
        OWNED_GEO.visibility = Visibility.FORCE_OFF
        NOT_OWNED_GEO.visibility = Visibility.FORCE_OFF
    end

end

function UpdatePlotPlant()
    if not farmId then return end
    local plotInfo = UTIL_LIBRARY.SplitString(API_FARMS.GetServerCustomProperty(farmId, "PlotLand"..tostring(plotIndex), "-"))
    if plotInfo and Object.IsValid(plotOwner) then
        local instance = PLANT_PARENT:GetChildren()[1]

        if not Object.IsValid(instance) then
            instance = World.SpawnAsset(STATS_LIST[plotInfo[1]].plantData.plantAsset, {parent = PLANT_PARENT})
        end

        instance.clientUserData.currentState = 0
        instance.clientUserData.plotIndex = plotIndex
        instance.clientUserData.plantData = {
            ownerId = plotOwner.id,
            resource = plotInfo[1],
            lastOsTime = plotInfo[2],
            startGrowingTime = plotInfo[3],
            lastTime = plotInfo[4],
            instaGrow= plotInfo[5]
        }
    else
        local instance = PLANT_PARENT:GetChildren()[1]
        if Object.IsValid(instance) then
            instance:Destroy()
        end
    end
end

function OnNetworkedChangedEvent(object, property)
    if string.match(property, "PlotLand") then
        UpdatePlotPlant()
        UpdateLockState()
    end
end

function OnResourceChanged(player, resource)
    if resource ~= "PlotsUnlocked" then return end
    UpdateLockState()
end

-- Initialize
TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)

PLOT_HIGHLIGHT.visibility = Visibility.FORCE_OFF
OWNED_GEO.visibility = Visibility.FORCE_OFF
NOT_OWNED_GEO.visibility = Visibility.FORCE_OFF
PLANT_PREVIEW_PARENT.visibility = Visibility.FORCE_OFF

local functionTable = {}
functionTable.GetState = GetState

API_PLOTS.RegisterPlot(COMPONENT_ROOT.id, functionTable)

Events.Connect("CurrentPlantPreview", UpdatePlantPreview)
Events.Connect("StatChangedEvent", OnResourceChanged)

for index, value in ipairs(COMPONENT_ROOT.parent:GetChildren()) do
    if value == COMPONENT_ROOT then
        plotIndex = index
    end
end

PLANT_PARENT.childAddedEvent:Connect(function ()
    PLANT_PREVIEW_PARENT.visibility = Visibility.FORCE_OFF
end)

Task.Wait()
UpdateLockState()
UpdatePlotPlant()