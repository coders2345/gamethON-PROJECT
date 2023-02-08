local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local AS = require(script:GetCustomProperty("APISpectator"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local MAP_CONTAINER = script:GetCustomProperty("MapContainer"):WaitForObject()
local MAP_FARM_INDICATOR = script:GetCustomProperty("MapFarmIndicator")

-- User exposed properties
local SELF_COLOR = COMPONENT_ROOT:GetCustomProperty("SelfColor")
local INDICATOR_COLOR = COMPONENT_ROOT:GetCustomProperty("IndicatorColor")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Variables
local playerIndicators = {}

-- nil UpdatePlayerIndicator(Player, CoreObject)
-- Updates the player icon in the map view
function UpdatePlayerIndicator(player, indicator)

	-- Show player indicator
	playerIndicators[player].visibility = Visibility.INHERIT

	-- Get player screen position
    local farmId = API_FARMS.FindOwnersFarm(player)
    if not farmId then return end

    local farmScreenPos = UI.GetScreenPosition(API_FARMS.GetFarmState(farmId).worldPosition)
	if not farmScreenPos then return end

	indicator.x = farmScreenPos.x
	indicator.y = farmScreenPos.y

	-- Get the custom properties and apply player info
	local farmNameShadow = indicator:GetCustomProperty("FarmNameShadow"):WaitForObject()
	local farmName = indicator:GetCustomProperty("FarmName"):WaitForObject()
	local farmIndicator = indicator:GetCustomProperty("FarmIndicator"):WaitForObject()

	farmIndicator:SetColor(INDICATOR_COLOR)

	if player == LOCAL_PLAYER then
		farmName:SetColor(SELF_COLOR)
		farmName.text = "Your Farm"
		farmIndicator:SetColor(SELF_COLOR)
	else
		farmName.text = player.name.."'s Farm"
	end

	farmNameShadow.text = farmName.text
end

-- nil Tick()
-- Updates map indicators
function Tick()

	-- Display map functionality
	if AS.IsSpectating() then
		for _, player in ipairs(Game.GetPlayers()) do
			if not playerIndicators[player] and Object.IsValid(player) then
				playerIndicators[player] = World.SpawnAsset(MAP_FARM_INDICATOR, {parent = MAP_CONTAINER})
			end

			if playerIndicators[player] and Object.IsValid(player) then
				UpdatePlayerIndicator(player, playerIndicators[player])
			end
		end
	end
end

-- nil OnPlayerJoined(Player)
-- Add new player indicator to the table
function OnPlayerJoined(player)
	if not playerIndicators[player] and Object.IsValid(player) then
		playerIndicators[player] = World.SpawnAsset(MAP_FARM_INDICATOR, {parent = MAP_CONTAINER})
	end
end

-- nil OnPlayerJoined(Player)
-- Remove indicator of the leaving player from the table
function OnPlayerLeft(player)
	if playerIndicators[player] then
		playerIndicators[player]:Destroy()
		playerIndicators[player] = nil
	end
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)