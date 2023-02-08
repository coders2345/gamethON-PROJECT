local propAPIResources = require(script:GetCustomProperty("APIResources"))
local propRoot = script:GetCustomProperty("Root"):WaitForObject()
local propResourceText = script:GetCustomProperty("ResourceText"):WaitForObject()
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local propResourceName = propRoot:GetCustomProperty("ResourceName")
local propResourceMaxName = propRoot:GetCustomProperty("ResourceMaxName")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function UpdateResource()
    local resource = STATS_LIBRARY.GetStat(LOCAL_PLAYER, propResourceName)
    local max = 10
    local color = Color.WHITE
    if resource >= max then
        color = Color.PINK
    end
    propResourceText:SetColor(color)
    propResourceText.text = string.format("%d/%d", resource, max)
end

function OnResourceChanged(player, resource)
	if player ~= LOCAL_PLAYER then return end
	if resource ~= propResourceName then return end
    UpdateResource()
end

Events.Connect("StatChangedEvent", OnResourceChanged)
UpdateResource()
