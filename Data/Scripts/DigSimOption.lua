local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local DIGSITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))

local propDigSim = script:GetCustomProperty("DigSim"):WaitForObject()
local propLabel = script:GetCustomProperty("Label"):WaitForObject()
local propLeft = script:GetCustomProperty("Left"):WaitForObject()
local propContent = script:GetCustomProperty("Content"):WaitForObject()
local propRight = script:GetCustomProperty("Right"):WaitForObject()

local MAX_DEPTH = 10
local MAX_SIZE = 3

local OPTION_AREA = 1
local OPTION_DEPTH = 2
local OPTION_SIZE = 3

local optionIndex = nil

if propLabel.text == "Area" then
	optionIndex = OPTION_AREA
elseif propLabel.text == "Depth" then
	optionIndex = OPTION_DEPTH
elseif propLabel.text == "Size" then
	optionIndex = OPTION_SIZE
end

local currentValueIndex = 1
local maxValueIndex = nil

if optionIndex == OPTION_AREA then
	maxValueIndex = DIGSITE_LIBRARY.GetAreaCount()
elseif optionIndex == OPTION_DEPTH then
	maxValueIndex = MAX_DEPTH
elseif optionIndex == OPTION_SIZE then
	maxValueIndex = MAX_SIZE
end

local function Refresh()
print("Refresh " .. optionIndex .. " " .. currentValueIndex)
	propDigSim.context.updateSimParams(optionIndex, currentValueIndex)
	
	if optionIndex == OPTION_AREA then
		local areaId = DIGSITE_LIBRARY.GetAreaIdForIndex(currentValueIndex)
		
		propContent.text = areaId
	else
		propContent.text = tostring(currentValueIndex)
	end
end

function HandleLeft(button)
	currentValueIndex = currentValueIndex - 1
	if currentValueIndex < 1 then
		currentValueIndex = maxValueIndex
	end
	
	Refresh()
end

function HandleRight(button)
	currentValueIndex = currentValueIndex + 1
	if currentValueIndex > maxValueIndex then
		currentValueIndex = 1
	end
	
	Refresh()
end

propLeft.clickedEvent:Connect(HandleLeft)
propRight.clickedEvent:Connect(HandleRight)

Refresh()