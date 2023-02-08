CMD = {}
CMD.enabledForAll = true
CMD.enabledForSingleTarget = true
CMD.commandObject = nil

-- Returns button name, color, and boolean if the button is enabled.
CMD.GetButtonStatus = function(sourcePlayer, player)
  return "Cookie", 1
end


CMD.Execute = function(sourcePlayer, player)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Cookie", player)
end


CMD.ExecuteAll = function(sourcePlayer)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Cookie_All", sourcePlayer)
end


return CMD
