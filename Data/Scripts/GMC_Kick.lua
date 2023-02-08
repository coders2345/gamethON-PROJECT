local CMD = {}
local commandData = {}
local BanSphereTemplate = script:GetCustomProperty("Prop")

function CMD.Init(obj)
  commandData[obj] = {
    
  }
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)
  --return player:GetResource(commandData[obj].resourceFlagName) > 0
  return player.isDead
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
  targetPlayer:SetWorldScale(Vector3.New(0.01, 0.01, 0.01))
  targetPlayer.maxWalkSpeed = 0
  targetPlayer.maxJumpCount = 0
  targetPlayer.canMount = false
  Task.Spawn(function()
    if Object.IsValid(targetPlayer) then
      targetPlayer:TransferToGame("e23e99/spellshock")
      Task.Wait(1)
    end
  end).repeatCount = -1
  
  --local prop = World.SpawnAsset(BanSphereTemplate)
  --targetPlayer:SetWorldPosition(prop:GetWorldPosition())
  
  --targetPlayer:TransferToGame("e23e99/spellshock")  
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end



return CMD