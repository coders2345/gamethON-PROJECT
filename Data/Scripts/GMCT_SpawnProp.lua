local commandData = {}
local CMD = {}
storedEquipment = {}

local scriptObj = nil
local adminData = require(script:GetCustomProperty("_AdminData"))


function CMD.Init(obj)
  commandData[obj] = {
    resourceFlagName = "GMC_" .. obj.name,
    spawnedProps = {},
    propId = obj:GetCustomProperty("Prop"),
    propList = nil,
    offset = obj:GetCustomProperty("Offset") or Vector3.ZERO,
    isEquipment = obj:GetCustomProperty("IsEquipment"),
    isBuff = obj:GetCustomProperty("IsBuff"),
    hidePlayer = obj:GetCustomProperty("HidePlayer"),
    resourceCost = obj:GetCustomProperty("ResourceCost"),
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
  local r = player:GetResource(commandData[obj].resourceFlagName)
  print(player.name, "resource", r)
  if r == nil then r = 0 end
  return r > 0
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
  
  --scriptObj = script:GetCustomProperty("obj"):WaitForObject()
--  print("execute client")
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------
function CMD.SaveProp(propId, playerId, spawnedProp)
  print(propId, playerId, spawnedProp)
  if _G.props[playerId] == nil then
    _G.props[playerId] = {}
  end
  _G.props[playerId][propId] = spawnedProp
end

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)

  local data = commandData[obj]
  
  if data.spawnedProps[targetPlayer.id] ~= nil then
    data.spawnedProps[targetPlayer.id]:Destroy()
    data.spawnedProps[targetPlayer.id] = nil
    targetPlayer:SetResource(data.resourceFlagName, 0)
    if data.isEquipment then
      RestoreEquipment(targetPlayer)
    end
    --[[
    if data.isEquipment then
      for _, equipment in ipairs(targetPlayer:GetEquipment()) do
        if Object.IsValid(equipment) then
          print("equipment name:", equipment.name)
          equipment:Unequip()
          equipment:Destroy()
        end
      end
    end
    ]]



    if data.hidePlayer then
      targetPlayer.isVisible = true
    end
  else

    local rank = adminData.GetRank(sourcePlayer)
    if rank <= 0 then
      print("here not admin")
      local resourceLeft = sourcePlayer:GetResource("PartyCoins")
      if data.resourceCost > resourceLeft then
        --broadcast error
        return
      else
        resourceLeft = resourceLeft - data.resourceCost
        sourcePlayer:SetResource("PartyCoins", resourceLeft)
      end

    end

    if data.isEquipment then
      Events.Broadcast("GMC_ClearSimilarProps", data.resourceFlagName, targetPlayer.id)
      SaveEquipment(targetPlayer)
    end

    

    local propId = data.propId
    if data.propList ~= nil then
      propId = data.propList.GetRandomProp()
    end

    data.spawnedProps[targetPlayer.id] = World.SpawnAsset(propId, {position = targetPlayer:GetWorldPosition()
        + targetPlayer:GetLookWorldRotation() * data.offset})
    
    local spawnedProp = data.spawnedProps[targetPlayer.id]
    
    CMD.SaveProp(propId, targetPlayer.id, spawnedProp)

    local _, objExists = spawnedProp:GetCustomProperty("obj")
    if objExists then
      spawnedProp:SetNetworkedCustomProperty("obj", obj)
    end

    local _, pidExists = spawnedProp:GetCustomProperty("TargetPlayerId")
    if pidExists then
      spawnedProp:SetNetworkedCustomProperty("TargetPlayerId", targetPlayer.id)
    end

    if data.isEquipment or data.isBuff then
      spawnedProp:Equip(targetPlayer)
    end
    if data.hidePlayer then
      targetPlayer.isVisible = false
      spawnedProp.visibility = Visibility.FORCE_ON
    end
    if obj:GetCustomProperty("AttachToPlayerSocket") ~= nil then
      spawnedProp:AttachToPlayer(targetPlayer, obj:GetCustomProperty("AttachToPlayerSocket"))
    end
    targetPlayer:SetResource(data.resourceFlagName, 1)
  end
end



function SaveEquipment(player)
  if storedEquipment[player.id] ~= nil then
    warn("Already have saved equipment...?")
  else
    storedEquipment[player.id] = {}
  end

  for _, equipment in ipairs(player:GetEquipment()) do
    if Object.IsValid(equipment) then
      print("equipment name:", equipment.name)
      equipment:Unequip()
      if Object.IsValid(equipment) then
        equipment:SetWorldPosition(Vector3.UP * -99999)
        table.insert(storedEquipment[player.id], equipment)
      end
    end
  end
end

function RestoreEquipment(player)
  if storedEquipment[player.id] == nil then
    warn("No equipment to restore...")
    return
  end

  for _, equipment in ipairs(storedEquipment[player.id]) do
    if Object.IsValid(equipment) then
      print("equipment name:", equipment.name)
      equipment:Equip(player)
    end
  end

  storedEquipment[player.id] = nil
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


function OnPlayerLeft(player)
  for obj, data in pairs(commandData) do
    if Object.IsValid(data.spawnedProps[player.id]) then
      data.spawnedProps[player.id]:Destroy()
      data.spawnedProps[player.id] = nil
    end
  end
end

Game.playerLeftEvent:Connect(OnPlayerLeft)

return CMD