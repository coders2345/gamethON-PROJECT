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
--  print("execute client")
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)

  local data = commandData[obj]
  if data.spawnedProps[targetPlayer.id] ~= nil then
    data.spawnedProps[targetPlayer.id]:Destroy()
    data.spawnedProps[targetPlayer.id] = nil
    targetPlayer:SetResource(data.resourceFlagName, 0)
    if data.hidePlayer then
      targetPlayer.isVisible = true
    end
  else
    Events.Broadcast("GMC_ClearSimilarProps", data.resourceFlagName, targetPlayer.id)

    local propId = data.propId
    if data.propList ~= nil then
      propId = data.propList.GetRandomProp()
    end

    --data.spawnedProps[targetPlayer.id] = World.SpawnAsset(propId, {position = targetPlayer:GetWorldPosition() + targetPlayer:GetLookWorldRotation() * data.offset})
    data.spawnedProps[targetPlayer.id] = World.SpawnAsset(propId, {position = Vector3.ZERO})

    data.spawnedProps[targetPlayer.id].isSpatializationEnabled = false
    data.spawnedProps[targetPlayer.id].isAttenuationEnabled = false
    data.spawnedProps[targetPlayer.id].isOcclusionEnabled = false
    if data.spawnedProps[targetPlayer.id].isPlaying then

    else
        data.spawnedProps[targetPlayer.id]:Play()
    end

    if data.hidePlayer then
      targetPlayer.isVisible = false
      data.spawnedProps[targetPlayer.id].visibility = Visibility.FORCE_ON
    end
    if obj:GetCustomProperty("SetNCP") then
      data.spawnedProps[targetPlayer.id]:SetNetworkedCustomProperty("TargetPlayerId", targetPlayer.id)
    end
    if obj:GetCustomProperty("AttachToPlayerSocket") ~= nil then
      data.spawnedProps[targetPlayer.id]:AttachToPlayer(targetPlayer, obj:GetCustomProperty("AttachToPlayerSocket"))
    end
	  targetPlayer:SetResource(data.resourceFlagName, 1)
  end
end


function CMD.ClearSimilarProps(rscName, playerId)
  for obj, data in pairs(commandData) do
    if data.resourceFlagName == rscName then
      for pid, spawnedObj in pairs(data.spawnedProps) do
        if pid == playerId then
          spawnedObj:Destroy()
          data.spawnedProps[pid] = nil
        end
      end
    end
  end
end

Events.Connect("GMC_ClearSimilarProps", CMD.ClearSimilarProps)

function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
  for _, targetPlayer in ipairs(Game.GetPlayers()) do
    CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
    Task.Wait()    
  end
end

return CMD