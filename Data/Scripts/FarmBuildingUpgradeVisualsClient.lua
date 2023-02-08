local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local TIERS = script:GetCustomProperty("Tiers"):WaitForObject()
local PARENT = script:GetCustomProperty("Parent"):WaitForObject()
local RESOURCE_KEY = script:GetCustomProperty("Resource")

local setup = false
local farmParent = nil
local farmId = nil
local farmOwner = nil

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
            farmOwner = API_FARMS.GetFarmState(farmId).farmOwner
            local serverScript = API_FARMS.GetServerScript(farmId)
            if serverScript then
                if eventHandle == nil then
                    eventHandle = serverScript.networkedPropertyChangedEvent:Connect(OnNetworkedChangedEvent)
                end
                UpdateVisuals()
                setup = true
            end
        end
    end
end

function ResetParent()
    if Object.IsValid(PARENT:GetChildren()[1]) then
        PARENT:GetChildren()[1]:Destroy()
    end
end

function UpdateVisuals ()
    if Object.IsValid(farmOwner) then
        local stat = STATS_LIBRARY.GetStat(farmOwner, RESOURCE_KEY)
        for i, child in ipairs(TIERS:GetChildren()) do
            if i < #TIERS:GetChildren() then
                local currentValue = child:GetCustomProperty("Value")
                local nextValue = TIERS:GetChildren()[i+1]:GetCustomProperty("Value")
                if stat >= currentValue and stat < nextValue then
                    ResetParent()
                    World.SpawnAsset(child:GetCustomProperty("Asset"), {parent = PARENT})
                end
            else
                local currentValue = child:GetCustomProperty("Value")
                if stat == currentValue then
                    ResetParent()
                    World.SpawnAsset(child:GetCustomProperty("Asset"), {parent = PARENT})
                end
            end
        end
    else
        for i, child in ipairs(TIERS:GetChildren()) do
            if i == 1 then
                ResetParent()
                World.SpawnAsset(child:GetCustomProperty("Asset"), {parent = PARENT})
            end
        end
    end
end

function OnNetworkedChangedEvent(object, property)
    if property == "OwnerId" then
        UpdateVisuals()
    end
end

function OnResourceChanged(player, resource)
    if resource ~= RESOURCE_KEY then return end
    UpdateVisuals()
end

Events.Connect("StatChangedEvent", OnResourceChanged)

Game.playerJoinedEvent:Connect(function ()
    setup = false
    UpdateVisuals()
end)

Game.playerLeftEvent:Connect(function ()
    farmOwner = API_FARMS.GetFarmState(farmId).farmOwner
    UpdateVisuals()
end)