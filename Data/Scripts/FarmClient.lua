local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

local FARM = COMPONENT_ROOT:GetCustomProperty("Farm"):WaitForObject()

local farmOwner = nil

function GetState()
    local result = {}

    result.id = FARM.id
    result.farmOwner = farmOwner
    result.worldPosition = COMPONENT_ROOT:GetWorldPosition()

    return result
end

function GetServerCustomProperty(property)
    return SERVER_SCRIPT:GetCustomProperty(property)
end

function GetServerScript()
    return SERVER_SCRIPT
end

function UpdateFarmOwner(object, property)
    local ownerId = SERVER_SCRIPT:GetCustomProperty("OwnerId")
    if ownerId ~= "" then
        for _, player in ipairs(Game.GetPlayers()) do
            if player.id == ownerId then
                farmOwner = player
            end
        end
    elseif ownerId == "" then
        farmOwner = nil
    end
end

local functionTable = {}
functionTable.GetState = GetState
functionTable.GetServerScript = GetServerScript
functionTable.GetServerCustomProperty = GetServerCustomProperty

API_FARMS.RegisterFarm(FARM.id, functionTable)

SERVER_SCRIPT.networkedPropertyChangedEvent:Connect(UpdateFarmOwner)

Game.playerJoinedEvent:Connect(function ()
    UpdateFarmOwner()
end)

Game.playerLeftEvent:Connect(function ()
    UpdateFarmOwner()
end)

UpdateFarmOwner()