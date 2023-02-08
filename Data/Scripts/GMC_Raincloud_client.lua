CMD = {}
CMD.enabledForAll = false
CMD.enabledForSingleTarget = true
CMD.commandObject = nil

local listeners = {}

function HasCloud(player)
  return player:GetResource("gmc_raincloud") > 0
end


-- Returns button name, color, and boolean if the button is enabled.
CMD.GetButtonStatus = function(player)
  if HasCloud(player) then
    return "Uncloud", 2
  else
    return "Raincloud", 1
  end
end


CMD.Execute = function(sourcePlayer, player)
  Events.BroadcastToServer("GMC", sourcePlayer, CMD.commandObject:GetReference(), "GMC_Raincloud", player)
end


-- Stuff for making sure the screen updates:

function OnResourceChanged(player, rsc)
  if rsc == "gmc_raincloud" then
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

