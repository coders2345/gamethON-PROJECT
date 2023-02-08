local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end

-- Client stuff
---------------------------------------


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

local markedForDeath = {}

local deathCheckTask = nil
local MIN_TIME = 1


function DeathChecker()
  print("Starting deathcheck task...")
  while true do
    for k,p in pairs(Game.GetPlayers()) do
      if markedForDeath[p.id] ~= nil and markedForDeath[p.id] < time() and p.isWalking then
        markedForDeath[p.id] = nil
        p:Die()
      end
    end

    -- Bookkeeping upkeep:  Clear out unneeded values.
    local canCancel = true
    for pid, value in pairs(markedForDeath) do
      local p = Game.FindPlayer(pid)
      if p == nil or p.isDead then
        markedForDeath[p.id] = nil
      elseif markedForDeath[p.id] ~= nil then
        canCancel = false
      end
    end

    if canCancel then
      markedForDeath = {}
      deathCheckTask = nil
      return
    end

    Task.Wait()
  end
end

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
  print("Yeeting a player!", targetPlayer)
  targetPlayer:SetVelocity(Vector3.New(math.random(-100, 100), math.random(-100, 100), 5000))
  markedForDeath[targetPlayer.id] = time() + MIN_TIME
  if deathCheckTask == nil then
    deathCheckTask = Task.Spawn(DeathChecker)
  end
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end



return CMD

