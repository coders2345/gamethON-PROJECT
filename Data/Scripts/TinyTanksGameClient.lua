-- local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))
-- local BALLON_ROBOT = script:GetCustomProperty("PetRobotNEW")
local ROOT = script.parent

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- local playersWithBalloons = {}

-- function GetBalloonRoyale()
-- 	return API.GetBalloonRoyale()
-- end

-- function ConnectOnStateChange(listener)
--     return GetBalloonRoyale().networkedPropertyChangedEvent:Connect(listener)
-- end

-- function OnNetworkedPropertyChanged(owner, propertyName)
-- 	if propertyName == "GameState" then
-- 		Events.Broadcast("BalloonRoyale.GameStateChanged", API.GetCurrentState())
-- 	end
-- end

function OnTankPlayerKilled(player, otherPlayer)
	-- Broadcast the pop to the kill feed
	Events.Broadcast("TinyTank.KillFeed", player, otherPlayer)
end

-- -- -- Override the IsPlayerParticipating
-- -- function API.IsPlayerParticipating(player)
-- -- 	print(CoreDebug.GetStackTrace())
-- -- 	return player:GetResource(API.GetResource()) > 0
-- -- end

-- -- Override the GetAllPlayerWithBalloons function in the API
-- function API.GetAllPlayersWithBalloons()
-- 	return playersWithBalloons
-- end

-- function GivePlayerBalloon(player)
-- 	if playersWithBalloons[player] == nil then
-- 		local balloon = World.SpawnAsset(BALLON_ROBOT, {position = player:GetWorldPosition()})
-- 		balloon.clientUserData.owner = player
-- 		playersWithBalloons[player] = balloon
-- 	end
-- end

-- function RemovePlayerBalloon(player)
--     local balloon = playersWithBalloons[player]
--     if balloon then
--         balloon:Destroy()
--     end
-- 	playersWithBalloons[player] = nil
-- end

-- function OnPlayerJoined(player)
--     local balloon = player:GetResource("Balloon")
--     if balloon > 0 then
--         GivePlayerBalloon(player, balloon)
--     end
-- 	player.clientUserData.tinyTanksResourceChangeHandle = player.resourceChangedEvent:Connect(OnPlayerResourceChanged)
-- end

-- function OnPlayerResourceChanged(player, resourceId, newValue)
--     if resourceId == "Balloon" then
--         if newValue > 0 then
--             GivePlayerBalloon(player, newValue)
--         end
--         if newValue == 0 then
--             RemovePlayerBalloon(player)
--         end
--     end
-- end

-- function OnPlayerLeft(player)
-- 	RemovePlayerBalloon(player)
-- end

-- -- Initialize for players already here!
-- for _, player in pairs(Game.GetPlayers()) do
--     OnPlayerJoined(player)
-- end

-- -- on player joined/left functions need to be defined before calling event:Connect()
-- local onJoinedHandle = Game.playerJoinedEvent:Connect(OnPlayerJoined)
-- local onLeftHandle = Game.playerLeftEvent:Connect(OnPlayerLeft)

local tankPlayerKillHandle = Events.Connect("TankBlewUp", OnTankPlayerKilled)
local ttreHandle = Events.Connect("TTRE",function()
	while not LOCAL_PLAYER.occupiedVehicle do Task.Wait() end
	Task.Wait(0.2)
	if Object.IsValid(LOCAL_PLAYER.occupiedVehicle) then
		LOCAL_PLAYER.occupiedVehicle.destroyEvent:Connect(function()
			LOCAL_PLAYER:ClearOverrideCamera()
		end)
		local playersVehicle = LOCAL_PLAYER.occupiedVehicle
		LOCAL_PLAYER:SetOverrideCamera( playersVehicle.camera )
	end
end)
-- local stateChangeHandle = API.ConnectOnStateChange(OnNetworkedPropertyChanged)

ROOT.destroyEvent:Connect(function()
	tankPlayerKillHandle:Disconnect()
 	ttreHandle:Disconnect()
	LOCAL_PLAYER:ClearOverrideCamera()
-- 	stateChangeHandle:Disconnect()
-- 	onJoinedHandle:Disconnect()
-- 	onLeftHandle:Disconnect()

-- 	for _, player in pairs(Game.GetPlayers()) do
-- 		if player.clientUserData.tinyTanksResourceChangeHandle then
-- 			player.clientUserData.tinyTanksResourceChangeHandle:Disconnect()
-- 			player.clientUserData.tinyTanksResourceChangeHandle = nil
-- 		end
-- 	end	
end)


