local propPopupTemplate = script:GetCustomProperty("PopupTemplate")

local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
  if Environment.IsClient() then
    Events.Connect("GMC_GR_Popup", DisplayPopup)

  end
end


-- Client stuff
---------------------------------------
local popup = nil
function DisplayPopup(objRef)
  local obj = objRef:WaitForObject()
  print("Got into DisplayPopup!", propPopupTemplate)
  local propGrantedResource = obj:GetCustomProperty("GrantedResource")
  local propResourceAmount = obj:GetCustomProperty("ResourceAmount")
  local propResourceIcon = obj:GetCustomProperty("ResourceIcon")
  if popup ~= nil and Object.IsValid(popup) then
    popup:Destroy()
  end

  popup = World.SpawnAsset(propPopupTemplate)
  local propRscImage = popup:GetCustomProperty("RscImage"):WaitForObject()
  local propRscText = popup:GetCustomProperty("RscText"):WaitForObject()
  propRscImage:SetImage(propResourceIcon)
  propRscText.text = string.format("You get +%d %s!", propResourceAmount, propGrantedResource)
end

-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  return obj:GetCustomProperty("ButtonText1"), 1
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
  local propGrantedResource = obj:GetCustomProperty("GrantedResource")
  local propResourceAmount = obj:GetCustomProperty("ResourceAmount")
  targetPlayer:AddResource(propGrantedResource, propResourceAmount)

  Events.BroadcastToPlayer(targetPlayer, "GMC_GR_Popup", obj:GetReference())
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end



return CMD