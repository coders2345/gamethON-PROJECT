local propCommandFolder = script:GetCustomProperty("CommandFolder"):WaitForObject()
local adminData = require(script:GetCustomProperty("_AdminData"))
local propMoreCommandFolders = script:GetCustomProperty("MoreCommandFolders")


local tabList = {}  -- list of {tabObj, commands={obj, code}}
local objCodeMap = {} -- Map of short obj IDs -> code
local lastActivation = {}

function GenerateCommandList()
  GenerateCommandListWithTabs()
end

function GenerateCommandListOriginal()
  for k,v in ipairs(propCommandFolder:GetChildren()) do
    local code = {}
    for kk, vv in ipairs(v:GetChildren()) do
      local cmd = require(vv:GetCustomProperty("CommandScript"))
      cmd.Init(vv)
      table.insert(code, {obj = vv, code = cmd})
      objCodeMap[vv:GetReference().id] = cmd
    end
    table.insert(tabList, {tabObj=v, commands=code})
  end
end

function split(s, delimiter)
  result = {};
  for match in (s..delimiter):gmatch("(.-)"..delimiter) do
      table.insert(result, match);
  end
  return result;
end

function GenerateCommandListWithTabs()
  local allCommandFolders = {}
  local allTabs = {}

  --get commands from the main folder
  for _, commandType in ipairs(propCommandFolder:GetChildren()) do
    if allCommandFolders[commandType.name] == nil then
      allCommandFolders[commandType.name] = {}
    end
    for __, commandScript in ipairs(commandType:GetChildren()) do      
      table.insert(allCommandFolders[commandType.name], commandScript)
    end
    if allTabs[commandType.name] == nil then
      allTabs[commandType.name] = commandType
    end
  end

  --get commands from the extra folders
  local strfolders = split(propMoreCommandFolders, ",")
  local moreCommandFolders = {}
  for _, folder in ipairs(strfolders) do
    moreCommandFolders[folder] = true
  end

  local GodModeParent = script.parent.parent
  local AllChildFolders = GodModeParent:FindDescendantsByType("Folder")

  for _, userFolder in ipairs(AllChildFolders) do
    if moreCommandFolders[userFolder.name] then
      local thisCommandFolder = userFolder:FindDescendantByName("Commands")
      if thisCommandFolder ~= nil then
        for _, commandType in ipairs(thisCommandFolder:GetChildren()) do
          if allCommandFolders[commandType.name] == nil then
            allCommandFolders[commandType.name] = {}
          end
          for __, commandScript in ipairs(commandType:GetChildren()) do      
            table.insert(allCommandFolders[commandType.name], commandScript)
          end
          if allTabs[commandType.name] == nil then
            allTabs[commandType.name] = commandType
          end
        end
      end
    end
  end

  for commandType, commandScripts in pairs(allCommandFolders) do
    for _, commandScript in ipairs(commandScripts) do
      --print(commandType, commandScript.name)
    end
  end

  --setup the tabList  
  for tab, tabContents in pairs(allCommandFolders) do
    --print("tab", tab.name);
    local code = {}
    for kk, vv in ipairs(tabContents) do
      local cmd = require(vv:GetCustomProperty("CommandScript"))
      cmd.Init(vv)
      table.insert(code, {obj = vv, code = cmd})
      --print("save", vv:GetReference().id, vv.name)
      objCodeMap[vv:GetReference().id] = cmd
    end
    table.insert(tabList, {tabObj=allTabs[tab], commands=code})
  end
end

--[[
function GenerateCommandList()
  commandList = {}
  for k,v in ipairs(propCommandFolder:GetChildren()) do
    table.insert(commandList, require(v:GetCustomProperty("serverCode")))
  end
end
]]

--    Events.BroadcastToServer("GMC", data.obj:GetReference(), targetPlayer)


function CanActivateButton(sourcePlayer, commandObjRef)
  local obj = commandObjRef:GetObject()
  if obj == nil then
    error("Tried to call function", eventName, "but obj was nil")
    return false
  end
  local cmdProperties = obj:GetCustomProperties()

  if lastActivation[obj] ~= nil and
      lastActivation[obj] + cmdProperties.Cooldown > time() then
    --print("Pressing too fast!")
    return false
  end
  lastActivation[obj] = time()

  if cmdProperties.ResourceCost > 0 and cmdProperties.Resource ~= "" then
    if sourcePlayer:GetResource(cmdProperties.Resource) >= cmdProperties.ResourceCost then
      sourcePlayer:RemoveResource(cmdProperties.Resource, cmdProperties.ResourceCost)
    else
      error("Tried to call function", eventName, "with insufficient resources")
      return false
    end
  end

  local partyCoins = sourcePlayer:GetResource("PartyCoins")
  if adminData.GetRank(sourcePlayer) <= 0 and partyCoins <= 0 then    
    error("Tried to call function", eventName, "with insufficient admin rank")
    return false
  end
  return true
end


function OnButtonPressed(sourcePlayer, targetPlayer, commandObjRef)
  --print("stuff:", sourcePlayer, targetPlayer, commandObjRef)
  --print("Got data!", sourcePlayer, commandObjRef)
  if not CanActivateButton(sourcePlayer, commandObjRef) then return end
  --print("call", commandObjRef.id)
  print("1", commandObjRef.id)
  print("2", objCodeMap[commandObjRef.id])
  
  objCodeMap[commandObjRef.id].Execute_Server(sourcePlayer, targetPlayer, commandObjRef:GetObject())
  --Events.Broadcast(eventName, table.unpack(args))
end


function OnButtonPressedAll(sourcePlayer, commandObjRef)
  --print("stuff:", sourcePlayer, targetPlayer, commandObjRef)
  --print("Got data!", sourcePlayer, commandObjRef)
  if not CanActivateButton(sourcePlayer, commandObjRef) then return end
  objCodeMap[commandObjRef.id].Execute_ServerAll(sourcePlayer, commandObjRef:GetObject())
end


Events.ConnectForPlayer("GMC", OnButtonPressed)
Events.ConnectForPlayer("GMCA", OnButtonPressedAll)

--[[
Game.playerJoinedEvent:Connect(function(player)
  player:SetResource("gold", 20)

end)
]]

GenerateCommandList()