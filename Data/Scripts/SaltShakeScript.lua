local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propContext = script:GetCustomProperty("context"):WaitForObject()
local propHeightGroup = script:GetCustomProperty("HeightGroup"):WaitForObject()

local target = nil

local propTargetPlayerId = nil
while propTargetPlayerId == nil or propTargetPlayerId == "" do

  propTargetPlayerId = propContext:GetCustomProperty("TargetPlayerId")
  Task.Wait()
  print(propTargetPlayerId)
end
print("Got a target... [" .. propTargetPlayerId .. "]")

print(propTargetPlayerId)
local target = Game.FindPlayer(propTargetPlayerId)
print("target is", target.name)


local zoomSpeed = 0.95
local startRotation = propRoot:GetRotation()

function Tick()
  if target ~= nil then
  if not Object.IsValid(target) then
    propRoot:Destroy()
    return
  end
    local currentPos = propRoot:GetWorldPosition()
    local targetPos = target:GetWorldPosition() + Vector3.UP * 300

    local newPos = zoomSpeed * currentPos + (1.0 - zoomSpeed) * targetPos
    local heightPos = propHeightGroup:GetPosition()
    heightPos.z = math.sin(time() * 4) * 50 + 50
    propHeightGroup:SetPosition(heightPos)
    propRoot:SetWorldPosition(newPos)
  end
end
