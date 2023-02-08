local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propTxt_MainNews = script:GetCustomProperty("txt_MainNews"):WaitForObject()
local propTxt_yellow_news = script:GetCustomProperty("txt_yellow_news"):WaitForObject()
local propTxt_Time = script:GetCustomProperty("txt_Time"):WaitForObject()

local obj = nil
while obj == nil do
  obj = propRoot:GetCustomProperty("obj"):WaitForObject()
  Task.Wait()
end

local targetPlayerId = propRoot:GetCustomProperty("TargetPlayerId")
local targetPlayer = Game.FindPlayer(targetPlayerId)


local propMainNewsText = obj:GetCustomProperty("MainNewsText")
local propSubNewsText = obj:GetCustomProperty("SubNewsText")


--local propObj = script:GetCustomProperty("obj"):WaitForObject()



propTxt_MainNews.text = "A"
local size = nil
local lineHeight = 0

while size == nil do
  size = propTxt_MainNews:ComputeApproximateSize()
  Task.Wait()
end
lineHeight = size.y

propTxt_MainNews.text = propMainNewsText:gsub("%%n", targetPlayer.name:upper())
propTxt_yellow_news.text = propSubNewsText:gsub("%%n", targetPlayer.name:upper())
propTxt_Time.text = os.date("%H:%M", os.time())


size = propTxt_MainNews:ComputeApproximateSize()
while size.y > lineHeight do
  propTxt_MainNews.fontSize = propTxt_MainNews.fontSize - 5
  size = propTxt_MainNews:ComputeApproximateSize()
  --Task.Wait()
end


size = propTxt_MainNews:ComputeApproximateSize()
