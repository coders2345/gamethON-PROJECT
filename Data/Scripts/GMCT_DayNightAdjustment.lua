local CMD = {}
local commandData = {}
local DayCycleControllerServer = script:GetCustomProperty("DayCycleControllerServer"):WaitForObject()
local ServerStartOSTime = DayCycleControllerServer:GetCustomProperty("ServerStartOSTime")

function CMD.Init(obj)
    commandData[obj] = {
        resourceFlagName = "GMC_" .. obj.name,
        dayOffset = obj:GetCustomProperty("DayOffset"),
        
      }
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)      
    return false
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
    --Events.BroadcastToServer("AddFish", targetPlayer, "MD246")
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    local data = commandData[obj]
    ServerStartOSTime = DayCycleControllerServer:GetCustomProperty("ServerStartOSTime")
    DayCycleControllerServer:SetNetworkedCustomProperty("ServerStartOSTime", ServerStartOSTime + data.dayOffset)
    --targetPlayer:AddResource(data.resourceName, data.resourceAmount)
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  for _, targetPlayer in ipairs(Game.GetPlayers()) do
    CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    Task.Wait()    
  end
end



return CMD