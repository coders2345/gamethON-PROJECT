local commandData = {}
local CMD = {}


function CMD.Init(obj)
  commandData[obj] = {
    resourceFlagName = "GMC_" .. obj.name,
    spawnedProps = {},
    propId = obj:GetCustomProperty("Prop"),
    propList = nil,
    offset = obj:GetCustomProperty("Offset") or Vector3.ZERO,
    isEquipment = obj:GetCustomProperty("IsEquipment"),
    hidePlayer = obj:GetCustomProperty("HidePlayer")
  }
  if obj:GetCustomProperty("PropCollection") ~= nil then
    commandData[obj].propList = require(obj:GetCustomProperty("PropCollection"))
  end
  local rscNameOverride = obj:GetCustomProperty("ResourceFlagName")
  if rscNameOverride ~= nil then
    --print("got a resource name!")
    commandData[obj].resourceFlagName = "GMC_"..rscNameOverride
  end
end


-- Client stuff
---------------------------------------

function IsObjSpawned(player, obj)
  return player:GetResource(commandData[obj].resourceFlagName) > 0
end


-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  if not IsObjSpawned(player, obj) then
    return obj:GetCustomProperty("ButtonText1"), 1
  else
    return obj:GetCustomProperty("ButtonText2"), 2
  end
end

function CMD.Execute_Client(sourcePlayer, targetPlayer, obj)
    sourcePlayer = Game.GetLocalPlayer()
    local currentUI = sourcePlayer.clientUserData.GodModeUI
    
    currentUI:Destroy()
    sourcePlayer.clientUserData.GodModeUI = nil

    local adminData = require(script:GetCustomProperty("_AdminData"))
    if adminData.GetRank(sourcePlayer) > 0 then
        local UIClient = script:GetCustomProperty("UIClient"):WaitForObject()
        sourcePlayer.clientUserData.GodModeUI = World.SpawnAsset(obj:GetCustomProperty("Prop"), {parent = UIClient})        
    end
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)    
  --local data = commandData[obj]
  --targetPlayer:SetResource(data.resourceFlagName, 0)  
end

function CMD.Execute_ServerAll(sourcePlayer, obj)
  
end

return CMD