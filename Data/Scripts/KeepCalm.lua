local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propTxt_KeepCalm = script:GetCustomProperty("txt_KeepCalm"):WaitForObject()
local propTxt_DoStuff = script:GetCustomProperty("txt_DoStuff"):WaitForObject()

local obj = nil
while obj == nil do
  obj = propRoot:GetCustomProperty("obj"):WaitForObject()
  Task.Wait()
end

local targetPlayerId = propRoot:GetCustomProperty("TargetPlayerId")
local targetPlayer = Game.FindPlayer(targetPlayerId)


local topText = obj:GetCustomProperty("TopText")
local bottomText = obj:GetCustomProperty("BottomText")


propTxt_KeepCalm.text = topText:gsub("%%n", targetPlayer.name:upper())
propTxt_DoStuff.text = bottomText:gsub("%%n", targetPlayer.name:upper())
