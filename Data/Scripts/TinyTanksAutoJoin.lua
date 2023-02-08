local TinyTankAPI = require(script:GetCustomProperty("TinyTankAPI"))

-- Wait for downstream.
while not TinyTankAPI.DoesGameExist() do Task.Wait() end

Task.Wait(2)

local players = Game.GetPlayers()
for _, player in pairs(players) do
    Events.Broadcast("JoinBalloonRoyale",player)
end

TinyTankAPI.SetCurrentState(TinyTankAPI.STATE.COUNTDOWN)