local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)
  return player:GetResource("GMC_Resized") > 0
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
  if not IsActive(targetPlayer, obj) then
    targetPlayer:SetResource("GMC_Resized", 1)
    targetPlayer:SetWorldScale(Vector3.ONE * 0.5)
  else
    targetPlayer:SetResource("GMC_Resized", 0)
    targetPlayer:SetWorldScale(Vector3.ONE)
  end
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end



return CMD