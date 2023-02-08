local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))

function OnNetworkedPropertyChanged(owner, propertyName)
	if propertyName == "GameState" then
		Events.Broadcast("BalloonRoyale.GameStateChanged", API.GetCurrentState())
	end
end

function OnPopBalloon(player, otherPlayer)
	-- Broadcast the pop to the kill feed
	Events.Broadcast("BallonRoyale.KillFeed", player, otherPlayer)
end

local popBalloonHandle = Events.Connect("PopBalloon", OnPopBalloon)
local statChangeHandle = API.ConnectOnStateChange(OnNetworkedPropertyChanged)

script.destroyEvent:Connect(function()
	popBalloonHandle:Disconnect()
	statChangeHandle:Disconnect()
end)


