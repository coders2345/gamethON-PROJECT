local propFartAsset = script:GetCustomProperty("FartAsset")


CMD = {}
CMD.enabledForAll = true
CMD.enabledForSingleTarget = true
CMD.commandObject = nil

-- Returns button name, color, and boolean if the button is enabled.
CMD.GetButtonStatus = function(player)
  return "Fart", 1
end


CMD.Execute = function(sourcePlayer, player)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Fart", sourcePlayer, player)
end

CMD.ExecuteAll = function(sourcePlayer)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Fart_All", sourcePlayer)
end


function OnFartSpawned(targetPlayer)
  local fart = World.SpawnAsset(propFartAsset)
  fart:SetWorldPosition(targetPlayer:GetWorldPosition())
end

function OnFartSpawnedAll()
  for k, p in pairs(Game.GetPlayers()) do
    Task.Spawn(function()
      Task.Wait(math.random() * 3)
      local fart = World.SpawnAsset(propFartAsset)
      fart:SetWorldPosition(p:GetWorldPosition())
    end)
  end
end

Events.Connect("GMC_SpawnFart", OnFartSpawned)
Events.Connect("GMC_SpawnFartAll", OnFartSpawnedAll)

return CMD

