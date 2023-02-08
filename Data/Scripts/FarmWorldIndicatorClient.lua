local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local INDICATOR_COMPONENT = script:GetCustomProperty("IndicatorComponent")

local INDICATOR_HEIGHT = COMPONENT_ROOT:GetCustomProperty("IndicatorHeight")
local MAX_DISTANCE = COMPONENT_ROOT:GetCustomProperty("MaxDistance")
local MIN_DISTANCE = COMPONENT_ROOT:GetCustomProperty("MinDistance")
local SNAP_TO_SCREEN = COMPONENT_ROOT:GetCustomProperty("SnapToScreenEdge")
local SNAP_OFFSET = COMPONENT_ROOT:GetCustomProperty("SnapOffset")

-- Variables
local LOCAL_PLAYER = Game.GetLocalPlayer()
local indicators = {}

-- Return the distance between 2 vectors in cm
function GetDistance(pos1, pos2)
    return (pos2 - pos1).size
end

function Tick()
    -- Add world indicators for new points
	local farmIds = API_FARMS.GetFarms()
	for _, id in pairs(farmIds) do
		if not indicators[id] then
            indicators[id] = World.SpawnAsset(INDICATOR_COMPONENT, {position = Vector3.ZERO, parent = CONTAINER})
            indicators[id].visibility = Visibility.FORCE_OFF
		end
    end

    -- Get states
	local farmStates = {}
	for _, id in pairs(farmIds) do
		table.insert(farmStates, API_FARMS.GetFarmState(id))
    end

    -- Update indicators
    for _, farmState in ipairs(farmStates) do
        -- Getting necessarry info for the indicator
        local indicator = indicators[farmState.id]
        local trackedObjectPosition = farmState.worldPosition + Vector3.New(0,0, INDICATOR_HEIGHT)
        local screenPosition = UI.GetScreenPosition(trackedObjectPosition)
        local screenSize = UI.GetScreenSize()

        -- Only assign the world position when it is valid
        if screenPosition then
            if farmState.farmOwner == LOCAL_PLAYER then

                indicator.visibility = Visibility.INHERIT
                indicator.x = screenPosition.x
                indicator.y = screenPosition.y

                -- Clamp the indicator position if clamp is enabled
                if SNAP_TO_SCREEN then
                    indicator.x = CoreMath.Clamp(indicator.x, 0 + SNAP_OFFSET, screenSize.x - SNAP_OFFSET)
                    indicator.y = CoreMath.Clamp(indicator.y, 0 + SNAP_OFFSET, screenSize.y - SNAP_OFFSET)
                end

            else
                indicator.visibility = Visibility.FORCE_OFF
            end

        else
            indicator.visibility = Visibility.FORCE_OFF
        end

        -- Getting references from the indicator template
        local iconImage = indicator:GetCustomProperty("Icon"):WaitForObject()
        local background = indicator:GetCustomProperty("Background"):WaitForObject()
        local backgroundFrame = indicator:GetCustomProperty("BackgroundFrame"):WaitForObject()

        -- Calculating the distance from local player to farm
        local distance = GetDistance(LOCAL_PLAYER:GetWorldPosition(), farmState.worldPosition)
        local distancePercentage = (distance - MIN_DISTANCE) / MAX_DISTANCE
        if distancePercentage > 1 then
            distancePercentage = 1
        end

        -- Setting alpha value of the highlight image based on distance
        local currentBGColor = background:GetColor()
        currentBGColor.a = CoreMath.Clamp(CoreMath.Lerp(0, 1, distancePercentage), 0, .5)
        background:SetColor(currentBGColor)

        local currentBackgroundColor = backgroundFrame:GetColor()
        currentBackgroundColor.a = CoreMath.Clamp(CoreMath.Lerp(0, 1, distancePercentage), 0, .5)
        backgroundFrame:SetColor(currentBackgroundColor)

        local currentIconColor = iconImage:GetColor()
        currentIconColor.a = CoreMath.Lerp(0, 1, distancePercentage)
        iconImage:SetColor(currentIconColor)
    end
end