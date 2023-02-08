CMD = {}
CMD.enabledForAll = false
CMD.enabledForSingleTarget = true
CMD.commandObject = nil
local listeners = {}

function IsSmall(player)
  return player:GetResource("gmc_size") ~= 0
end


-- Returns button name, color, and boolean if the button is enabled.
CMD.GetButtonStatus = function(player)
  if IsSmall(player) then
    return "Normalize", 2
  else
    return "Tiny", 1
  end
end


CMD.Execute = function(sourcePlayer, player)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Small", player, not IsSmall(player))
end



-- Stuff for making sure the screen updates:

function OnResourceChanged(player, rsc)
  if rsc == "gmc_size" then
    Events.Broadcast("GMC_RedrawPanel")
  end
end


function OnPlayerJoined(player)
  listeners[player.id] = player.resourceChangedEvent:Connect(OnResourceChanged)
end

function OnPlayerLeft(player)
  listeners[player.id]:Disconnect()
  listeners[player.id] = nil
end


Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)


return CMD


