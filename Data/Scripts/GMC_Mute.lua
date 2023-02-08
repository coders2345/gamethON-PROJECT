local CMD = {}
local commandData = {}
local resourceFlagName = "GMC_Mute"

function CMD.Init(obj)
  commandData[obj] = {
    resourceFlagName = resourceFlagName -- "GMC_" .. obj.name,
  }
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)
  --return player:GetResource(commandData[obj].resourceFlagName) > 0
  return player:GetResource(resourceFlagName) > 0
end


-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  if not IsActive(player, obj) then
    return obj:GetCustomProperty("ButtonText" .. "1"), 1
  else
    return obj:GetCustomProperty("ButtonText" .. "2"), 2
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
    targetPlayer:SetResource(commandData[obj].resourceFlagName, 1)
  else
    targetPlayer:SetResource(commandData[obj].resourceFlagName, 0)
  end

end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  for _, targetPlayer in ipairs(Game.GetPlayers()) do
    CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    Task.Wait()    
  end
end


if Environment.IsServer() then
  function OnReceiveMessage(player, params)
    if IsActive(player) then
      -- Branch based on resource value here to apply silly effects.
      params.message = ""
    end
  end


  local hook = Chat.receiveMessageHook:Connect(OnReceiveMessage)
end

return CMD