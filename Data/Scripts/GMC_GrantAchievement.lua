local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end

while not _G.META_ACHIEVEMENTS do
    Task.Wait()
end
local ACHIEVEMENT_API = _G.META_ACHIEVEMENTS

-- Client stuff
---------------------------------------

function IsActive(player, obj)
  --return player:GetResource(commandData[obj].resourceFlagName) > 0
  return player.isDead
end


-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  return obj:GetCustomProperty("ButtonText1"), 1
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
  local achievementId = obj:GetCustomProperty("AchievementId") .. "METAA"
  ACHIEVEMENT_API.ResetAchievement(targetPlayer, achievementId)
  ACHIEVEMENT_API.UnlockAchievement(targetPlayer, achievementId)
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  for _, targetPlayer in ipairs(Game.GetPlayers()) do
    CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    Task.Wait()    
  end
end



return CMD