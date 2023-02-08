local propSocket = script:GetCustomProperty("Socket")
script.parent.visibility = Visibility.FORCE_OFF

print("Waiting for player...")
local player = nil

while player == nil do
  local propTargetPlayerId = script.parent:GetCustomProperty("TargetPlayerId") or ""
  player = Game.FindPlayer(propTargetPlayerId)
  Task.Wait()
end

print("Got playerid ", propTargetPlayerId)

print("got player", player)
script.parent:AttachToPlayer(player, propSocket)
script.parent.visibility = Visibility.INHERIT
