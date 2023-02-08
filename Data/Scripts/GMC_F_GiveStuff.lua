 -- Custom 
local propStatsLibrary = script:GetCustomProperty("StatsLibrary")
local sl = require(propStatsLibrary)




local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)

  --return player:GetResource(commandData[obj].resourceFlagName) > 0
  return true
end


-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  if not IsActive(player, obj) then
    return obj:GetCustomProperty("ButtonText1"), 1
  else
    return obj:GetCustomProperty("ButtonText2"), 2
  end
end

function CMD.Execute_Client(sourcePlayer, targetPlayer, obj)
--  print("execute client")
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
  sl.IncrementStat(targetPlayer, "Money", 100)
  Events.BroadcastToPlayer(targetPlayer, "BannerMessage", "100 free money!", 2, 1)
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  for _, targetPlayer in ipairs(Game.GetPlayers()) do
    CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    Task.Wait()    
  end
end



return CMD