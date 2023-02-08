local propBody01_pivot = script:GetCustomProperty("body01_pivot"):WaitForObject()
local propBody02_pivot = script:GetCustomProperty("body02_pivot"):WaitForObject()
local propTail_pivot = script:GetCustomProperty("tail_pivot"):WaitForObject()
local propSharkRoot = script:GetCustomProperty("SharkRoot"):WaitForObject()

local pivots = {
  propBody01_pivot,
  propBody02_pivot,
  propTail_pivot,
}

local wriggleScale = math.random() + 0.5
local osciliationScale = math.random() + 0.5
local tOffset = math.random(0, 1000)

function Tick(deltaTime)
  local t = tOffset + time()
  local wriggle = math.sin(t * 10 * wriggleScale) * 30
  local currentZ = math.sin(t * 1 * osciliationScale) * 200 + 200
  propSharkRoot:SetPosition(Vector3.New(0, 0, currentZ))

  for k,v in pairs(pivots) do
    v:SetRotation(Rotation.New(20 + currentZ/30, 0, wriggle))
  end
end

--print(script.parent)
--propSharkRoot:SetPosition(Vector3.New(20 + z/30, 0, z))
propSharkRoot:SetRotation(Rotation.New(0, 0, math.random(360)))
propSharkRoot:RotateContinuous(Rotation.New(math.random(50, 100), math.random(50, 100), math.random(50, 100)))
script.parent:RotateContinuous(Rotation.New(0, 0, math.random(50, 300)))


