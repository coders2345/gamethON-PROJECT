local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end


-- Client stuff
---------------------------------------

-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  return obj:GetCustomProperty("ButtonText" .. "1"), 1
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
  targetPlayer:SetWorldPosition(sourcePlayer:GetWorldPosition())
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  for k,p in pairs(Game.GetPlayers()) do
    if p ~= sourcePlayer then
      p:SetWorldPosition(sourcePlayer:GetWorldPosition())
    end
  end
  --print("execute server all")
end



return CMD