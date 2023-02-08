local propRoot = script:GetCustomProperty("root"):WaitForObject()

 -- Custom 
local propTargetPlayerId = propRoot:GetCustomProperty("TargetPlayerId")
local propBuffApplyText = propRoot:GetCustomProperty("BuffApplyText")
local propBuffEndText = propRoot:GetCustomProperty("BuffEndText")
local propPopupTextColor = propRoot:GetCustomProperty("PopupTextColor")

local player = Game.GetLocalPlayer()




-- When the buff is received:

UI.ShowFlyUpText(propBuffApplyText, player:GetWorldPosition() + Vector3.UP * 100, {color = propPopupTextColor, duration = 2})
