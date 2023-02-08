local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local propButton = script:GetCustomProperty("Button"):WaitForObject()
local propCropIcon = propButton:GetCustomProperty("CropIcon"):WaitForObject()
local propPriceText = propButton:GetCustomProperty("PriceText"):WaitForObject()

local resource = propButton:GetCustomProperty("Resource")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnClicked(whichButton)
    Events.BroadcastToServer("CurrentPlant", resource)
    Events.Broadcast("CurrentPlantPreview", resource)
    Events.Broadcast("ToggleUI", "CropUI", false)
end

function OnHovered(whichButton)
	--print("button hovered: " .. whichButton.name)
end

function OnUnhovered(whichButton)
	--print("button unhovered: " .. whichButton.name)
end

function Refresh()
    local farmerMoney = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
    local resourceCost = STATS_LIST[resource].plantData.cost
    local iconColor = Color.WHITE
    propPriceText.text = tostring(resourceCost)

    if farmerMoney < resourceCost then
        propPriceText:SetColor(Color.RED)
        iconColor.a = 0.2
        propButton.isInteractable = false
    else
        propPriceText:SetColor(Color.EMERALD)
        propButton.isInteractable = true
    end

    propCropIcon:SetImage(STATS_LIST[resource].icon)
    propCropIcon:SetColor(iconColor)
end

propButton.clickedEvent:Connect(OnClicked)
propButton.hoveredEvent:Connect(OnHovered)
propButton.unhoveredEvent:Connect(OnUnhovered)

Events.Connect("CropSelectionToggle", Refresh)
Events.Connect("ToggleUI", Refresh)