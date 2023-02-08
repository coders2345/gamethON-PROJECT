local adminData = require(script:GetCustomProperty("_AdminData"))
local UIDefaultTemplate = script:GetCustomProperty("UIDefaultTemplate")
local UIClient = script.parent

function OnPlayerJoined(player)
    local localPlayer = Game.GetLocalPlayer()
    if adminData.GetRank(player) > 0 and player.id == localPlayer.id then
        player.clientUserData.GodModeUI = World.SpawnAsset(UIDefaultTemplate, {parent = UIClient})        
    end
end

function OnPlayerLeft(player)
	--print("player left: " .. player.name)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

