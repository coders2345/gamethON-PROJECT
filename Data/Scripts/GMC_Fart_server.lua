local propFartAsset = script:GetCustomProperty("FartAsset")

function OnExecute(sourcePlayer, player)
  print("Player farted!", sourcePlayer, player)

  --local fart = World.SpawnAsset(propFartAsset)
  --fart:SetWorldPosition(player:GetWorldPosition())
  Events.BroadcastToAllPlayers("GMC_SpawnFart", player)
end

function OnExecuteAll(sourcePlayer)
  Events.BroadcastToAllPlayers("GMC_SpawnFartAll")

end





Events.Connect("GMC_Fart", OnExecute)
Events.Connect("GMC_Fart_All", OnExecuteAll)

return {
  commandObject = commandObject
}
