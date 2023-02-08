local CMD = {}
local commandData = {}

function CMD.Init(obj)
    commandData[obj] = {
        resourceFlagName = "GMC_" .. obj.name,        
      }
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)
    local SpectatorCamera = script:GetCustomProperty("SpectatorCamera"):WaitForObject()
    --return player:GetResource(commandData[obj].resourceFlagName) > 0
    if SpectatorCamera.clientUserData.player == nil then
        return false
    else
        return SpectatorCamera.clientUserData.player.id == player.id
    end    
    --return player.isDead
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
    local DefaultCamera = script:GetCustomProperty("DefaultCamera"):WaitForObject()
    local SpectatorCamera = script:GetCustomProperty("SpectatorCamera"):WaitForObject()
    
    if SpectatorCamera.clientUserData.player == nil then
        print("attach camera")        
        if targetPlayer == Game.GetLocalPlayer() then
            --do nothing
            SpectatorCamera.clientUserData.player = targetPlayer
        else
            Game.GetLocalPlayer():SetOverrideCamera(SpectatorCamera, 1)
            SpectatorCamera.followPlayer = nil
            SpectatorCamera:AttachToPlayer(targetPlayer, "root")
            SpectatorCamera:SetPosition(Vector3.New(0,0,200))
            SpectatorCamera.clientUserData.player = targetPlayer
        end
    elseif SpectatorCamera.clientUserData.player == targetPlayer then
        print("detach camera")
        Game.GetLocalPlayer():ClearOverrideCamera()
        SpectatorCamera.clientUserData.player = nil
    elseif SpectatorCamera.clientUserData.player ~= targetPlayer then
        SpectatorCamera.followPlayer = nil
        SpectatorCamera:AttachToPlayer(targetPlayer, "root")
        SpectatorCamera:SetPosition(Vector3.New(0,0,200))
        SpectatorCamera.clientUserData.player = targetPlayer
    else        
        print("detach camera")
        Game.GetLocalPlayer():ClearOverrideCamera()
        SpectatorCamera.clientUserData.player = nil
    end

    

--  print("execute client")
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
  if targetPlayer.isDead then
    --targetPlayer:Spawn()
  else
    --targetPlayer:Die()
  end
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end



return CMD