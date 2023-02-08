local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local RESOURCE = script:GetCustomProperty("Resource")
local RESOURCE_TEXT = script:GetCustomProperty("ResourceText"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function UpdateResource()
	RESOURCE_TEXT.text = UTILITIES_LIBRARY.FormatMoney(STATS_LIBRARY.GetStat(LOCAL_PLAYER, RESOURCE))
end

function OnResourceChanged(player, resource)
	if player ~= LOCAL_PLAYER then return end
	if resource ~= RESOURCE then return end
    UpdateResource()
end

Events.Connect("StatChangedEvent", OnResourceChanged)
UpdateResource()