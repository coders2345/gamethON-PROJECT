--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ARI = require(script:GetCustomProperty("API"))
local RESOURCE_LIST = script:GetCustomProperty("Resources"):WaitForObject()

local resources = {}

function GetResourceInfo(resource)
    return resources[resource]
end

function ClearResources(player)
    for resource, _ in pairs(table) do
        player:SetResource(resource, 0)
    end
end

function ResourceChanged(player, resource, value)
    print(resource)
    if not resources[resource] then return end
    if value > resources[resource].capacity then
        player:SetResource(resource, resources[resource].capacity)
    elseif value < 0 then
        player:SetResource(resource, 0)
    end
end

function OnPlayerJoined(player)
    player.resourceChangedEvent:Connect(ResourceChanged)
    Task.Wait(1)
    if Object.IsValid(player) then
        print("here")
        for resource, _ in pairs(resources) do
            ResourceChanged(player, resource, player:GetResource(resource))
        end
    end
end

for _, child in ipairs(RESOURCE_LIST:GetChildren()) do
    local resource = child:GetCustomProperty("Resource")
    if resource then
        resources[resource] = {
            capacity = child:GetCustomProperty("MaxCapacity"),
            icon = child:GetCustomProperty("Icon"),
            color = child:GetCustomProperty("IconColor")
        }
    end
end

local functionTable = {}
functionTable.GetResourceInfo = GetResourceInfo
functionTable.ClearResources = ClearResources

ARI.RegisterResourceManager(functionTable)
Game.playerJoinedEvent:Connect(OnPlayerJoined)