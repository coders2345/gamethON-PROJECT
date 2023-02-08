local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local API_PLOTS = require(script:GetCustomProperty("APIPlots"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local FARM_LIBRARY = require(script:GetCustomProperty("FarmLibrary"))

local FARM = COMPONENT_ROOT:GetCustomProperty("Farm"):WaitForObject()
local PLOTS = COMPONENT_ROOT:GetCustomProperty("Plots"):WaitForObject()
local FARM_SPAWN_POINT = COMPONENT_ROOT:GetCustomProperty("SpawnPoint"):WaitForObject()

local FARM_SPAWN_RADIUS = 12000.0

local isAvailable = true
local farmOwner = nil

function GetState()
    local result = {}

    result.id = FARM.id
    result.isAvailable = isAvailable
    result.farmOwner = farmOwner
    result.worldPosition = COMPONENT_ROOT:GetWorldPosition()

    return result
end

function GetPlotInfo(stringInfo)
    local result = nil
    if stringInfo ~= "" then
        result = {CoreString.Split(stringInfo,"-")}
    end
    return result
end

-- Only connected for this farm's owner
function OnPlayerLeft(player)
    local position = player:GetWorldPosition()
    local rotationZ = player:GetWorldRotation().z
    local farmLocal = false

    if (position - FARM:GetWorldPosition()).size < FARM_SPAWN_RADIUS then
        position = FARM:GetWorldTransform():GetInverse():TransformPosition(position)
        rotationZ = rotationZ - FARM:GetWorldRotation().z
        farmLocal = true
    end

    local logoutData = {}
    logoutData.position = position
    logoutData.rotationZ = rotationZ
    logoutData.farmLocal = farmLocal

    if position.z < -10000.0 then     -- Did we fall off the map?
        logoutData = nil
    end

    local data = Storage.GetPlayerData(player)
    data.logoutData = logoutData
    Storage.SetPlayerData(player, data)
end

function SetFarmOwner(player)
    ResetPlots()

    for i, child in ipairs(PLOTS:GetChildren()) do
        API_PLOTS.SetPlotInfo(child.id, FARM.id, i, player)
    end

    isAvailable = false
    farmOwner = player

    script:SetNetworkedCustomProperty("OwnerId", farmOwner.id)

    local data = Storage.GetPlayerData(player)
    if data.plotsData then
        for i, plotsTable in pairs(data.plotsData) do
            if plotsTable.plantResource then

                if type(plotsTable.instaGrow) ~= "number" then
                    plotsTable.instaGrow = 0
                end

                local plotString = string.format("%s-%s-%s-%s-%s",
                                    plotsTable.plantResource,
                                    os.time(),
                                    plotsTable.startTime,
                                    time(),
                                    plotsTable.instaGrow)
                script:SetNetworkedCustomProperty("PlotLand"..tostring(i), plotString)
            end
        end
    end
    local _, message = Storage.SetPlayerData(player, data)
    --print(message.." "..tostring(startTime))

    player:Spawn({position = FARM_SPAWN_POINT:GetWorldPosition(), rotation = FARM_SPAWN_POINT:GetWorldRotation()})

    Game.playerLeftEvent:Connect(OnPlayerLeft)
end

function OnPlanted(player, id, plantResource)
    if player ~= farmOwner then return end

    -- Checks if player has enough money to plant the crop (server side)
    local ownerMoney = STATS_LIBRARY.GetStat(player, "Money")
    local ownerMoneyAcum = STATS_LIBRARY.GetStat(player, "MoneyAccumulated")
    local plantCost = STATS_LIST[plantResource].plantData.cost

    if ownerMoney < plantCost then
        return
    end

    if ownerMoneyAcum < plantCost then
        return
    end

    local startTime = os.time()
    local plotIndex = 1
    for i, child in ipairs(PLOTS:GetChildren()) do
        if child.id == id then
            plotIndex = i
            break
        end
    end

    local plotString = string.format("%s-%s-%s-%s-%s",
                        plantResource,
                        os.time(),
                        startTime,
                        time(),
                        0)
    script:SetNetworkedCustomProperty("PlotLand"..tostring(plotIndex), plotString)

    -- Saves the plant information
    local data = Storage.GetPlayerData(player)
    local insta = 0

    if data.plotsData then
        data.plotsData[plotIndex] = {
            plantResource = plantResource,
            startTime = startTime,
            instaGrow = 0
        }
        local _, message = Storage.SetPlayerData(player, data)
        --print(message.." "..tostring(startTime))
        STATS_LIBRARY.IncrementStat(player, "Money", -plantCost)
        --STATS_LIBRARY.IncrementStat(player, "MoneyAccumulated", -plantCost)
        STATS_LIBRARY.IncrementStat(player, plantResource.."Planted", 1)
    end
end

function OnHarvest(player, plantPlotIndex, plantResource)
    if player ~= farmOwner then return end

    -- Checks if player has enough money to plant the crop (server side)
    local barnLevel = STATS_LIBRARY.GetStat(player, "BarnLevel")
    local storage = API_BARN_STORAGE.GetBarnCurrentStorage(player)
    local maxStorage = API_BARN_STORAGE.GetBarnMaxStorage(barnLevel)

    if storage >= maxStorage then
        return
    end

    local data = Storage.GetPlayerData(player)
    if data.plotsData and data.plotsData[plantPlotIndex] then
        script:SetNetworkedCustomProperty("PlotLand"..tostring(plantPlotIndex), "")
        data.plotsData[plantPlotIndex] = nil
        local _, message = Storage.SetPlayerData(player, data)
        --print(script.name.." - "..message)
        STATS_LIBRARY.IncrementStat(player, plantResource, 1)
        STATS_LIBRARY.IncrementStat(player, plantResource.."Harvested", 1)
    end
end

function OnInstaGrow(player, plantPlotIndex, plantResource)
    if player ~= farmOwner then return end

    local data = Storage.GetPlayerData(player)
    if not data.plotsData or not data.plotsData[plantPlotIndex] then
        return
    end

    local plotLandName = "PlotLand"..tostring(plantPlotIndex)
    local plotInfo = GetPlotInfo(script:GetCustomProperty(plotLandName))

    -- Checks if player has enough money to instantly grow the crop (server side)
    local instaGrows = STATS_LIBRARY.GetStat(player, "InstaGrow")
    local progress = FARM_LIBRARY.GetPlantProgressFromData(plotInfo[2], plotInfo[3], plotInfo[4])
    local remainingTime = FARM_LIBRARY.GetPlantResourceData(plantResource).timeToGrow - progress

    local cost = CoreMath.Round(remainingTime/(15*60))

    if cost <= 0 then
        cost = 1
    end

    if instaGrows < cost then
        return
    end

    if tonumber(plotInfo[5]) > 0 then
        return
    end

    local plotString = string.format("%s-%s-%s-%s-%s",
    plantResource,
    plotInfo[2],
    plotInfo[3],
    plotInfo[4],
    1)

    script:SetNetworkedCustomProperty(plotLandName, plotString)
    data.plotsData[plantPlotIndex].instaGrow = 1
    local _, message = Storage.SetPlayerData(player, data)
    --print(script.name.." - "..message)

    STATS_LIBRARY.IncrementStat(player, "InstaGrow", -cost)
end

function ResetPlots()
    for i = 1, 50, 1 do
        script:SetNetworkedCustomProperty("PlotLand"..tostring(i), "")
    end
end

function Reset()
    isAvailable = true
    farmOwner = nil

    script:SetNetworkedCustomProperty("OwnerId", "")

    for _, child in ipairs(PLOTS:GetChildren()) do
        API_PLOTS.ResetPlot(child.id)
    end
    ResetPlots()
end

local functionTable = {}
functionTable.GetState = GetState
functionTable.SetFarmOwner = SetFarmOwner
functionTable.Reset = Reset

API_FARMS.RegisterFarm(FARM.id, functionTable)
Events.ConnectForPlayer("Plant", OnPlanted)
Events.ConnectForPlayer("Harvest", OnHarvest)
Events.ConnectForPlayer("Insta", OnInstaGrow)