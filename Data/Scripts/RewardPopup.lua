local propPanel = script:GetCustomProperty("panel"):WaitForObject()
local propRoot = script:GetCustomProperty("root"):WaitForObject()

propPanel.y = 500


local done = false
local dy = 0
local actualY = -1000

while not done do
  actualY = actualY + dy
  dy = dy + 1.0
  if actualY > 0 then
    dy = dy * -0.3
    actualY = dy
    if math.abs(dy) < 1 then
      done = true
    end
  end
  propPanel.y = math.floor(actualY)
  Task.Wait()

end

Task.Wait(1)

for i = 1, 20 do
  propPanel.opacity = (20 - i) / 20
  Task.Wait()
end

propRoot:Destroy()



