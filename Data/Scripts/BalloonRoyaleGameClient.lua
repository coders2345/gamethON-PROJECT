local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))
local BALLON_ROBOT = script:GetCustomProperty("PetRobotNEW")
local playersWithBalloons = {}

-- function GetBalloonRoyale()
-- 	return API.GetBalloonRoyale()
-- end

-- function ConnectOnStateChange(listener)
--     return GetBalloonRoyale().networkedPropertyChangedEvent:Connect(listener)
-- end

function OnNetworkedPropertyChanged(owner, propertyName)
	if propertyName == "GameState" then
		Events.Broadcast("BalloonRoyale.GameStateChanged", API.GetCurrentState())
	end
end

function OnPopBalloon(player, otherPlayer)
	-- Broadcast the pop to the kill feed
	Events.Broadcast("BallonRoyale.KillFeed", player, otherPlayer)

	-- Tell the balloon to pop
	local balloon = playersWithBalloons[otherPlayer]
	if Object.IsValid(balloon) then
		balloon.clientUserData.PopBalloon()
	end
	playersWithBalloons[otherPlayer] = nil
end

-- Override the IsPlayerParticipating
local ORIGINAL_API_FUNCTION = API.IsPlayerParticipating
function API.IsPlayerParticipating(player)
	if playersWithBalloons[player] == nil then
		return false
	else
		return true
	end
end

-- Override the GetAllPlayerWithBalloons function in the API
function API.GetAllPlayersWithBalloons()
	return playersWithBalloons
end

function GivePlayerBalloon(player)
	if playersWithBalloons[player] == nil then
		local balloon = World.SpawnAsset(BALLON_ROBOT, {position = player:GetWorldPosition()})
		balloon.clientUserData.owner = player
		playersWithBalloons[player] = balloon
	end
end

function RemovePlayerBalloon(player)
    local balloon = playersWithBalloons[player]
    if balloon then
        balloon:Destroy()
    end
	playersWithBalloons[player] = nil
end

function OnPlayerJoined(player)
    local balloon = player:GetResource("Balloon")
    if balloon > 0 then
        GivePlayerBalloon(player, balloon)
    end
	player.clientUserData[script] = player.resourceChangedEvent:Connect(OnPlayerResourceChanged)
end

function OnPlayerResourceChanged(player, resourceId, newValue)
    if resourceId == "Balloon" then
        if newValue > 0 then
            GivePlayerBalloon(player, newValue)
        end
        if newValue == 0 then
            RemovePlayerBalloon(player)
        end
    end
end

function OnPlayerLeft(player)
	RemovePlayerBalloon(player)
end

-- Initialize for players already here!
for _, player in pairs(Game.GetPlayers()) do
    OnPlayerJoined(player)
end

-- on player joined/left functions need to be defined before calling event:Connect()
local playerJoinedHandle = Game.playerJoinedEvent:Connect(OnPlayerJoined)
local playerLeftHandle = Game.playerLeftEvent:Connect(OnPlayerLeft)

local popBalloonHandle = Events.Connect("PopBalloon", OnPopBalloon)
local statChangeHandle = API.ConnectOnStateChange(OnNetworkedPropertyChanged)

-- Todo. Probably invoke OnNetworkedPropertyChanged manually here?
script.destroyEvent:Connect(function()

	API.IsPlayerParticipating = ORIGINAL_API_FUNCTION
	playerJoinedHandle:Disconnect()
	playerLeftHandle:Disconnect()
	popBalloonHandle:Disconnect()
	statChangeHandle:Disconnect()

	-- Remove visual balloon for everyone.
	local players = Game.GetPlayers()
	for _, player in pairs(players) do
		player.clientUserData[script]:Disconnect()
		player.clientUserData[script] = nil
		RemovePlayerBalloon(player)
	end
end)


