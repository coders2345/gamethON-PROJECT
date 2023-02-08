local propFlingTrigger = script:GetCustomProperty("FlingTrigger"):WaitForObject()

local tornado = script.parent
local lastHit = nil

local hitPlayers = {}
local IGNORE_TIME = 5

function OnHitSomething(trigger, other)
  if other:IsA("Player") then
    local player = other
    if not player.isDead then
      player:SetVelocity(Vector3.UP * 3000)
    end
    hitPlayers[player] = time() + IGNORE_TIME
  end
end




local TORNADO_SPEED = 100
local firstTime = true
function Tick()
  if firstTime then
    tornado:MoveTo(tornado:GetWorldPosition() + Vector3.UP * 1000, 3)
   Task.Wait(3)
   firstTime = false
  end

  local ignoredPlayers = {}
  for k,v in pairs(hitPlayers) do
    if v > time() then table.insert(ignoredPlayers, k) end
  end


  local target = Game.FindNearestPlayer(tornado:GetWorldPosition(), {
    ignoreDead = true,
    ignoreDespawned = true,
    ignorePlayers = ignoredPlayers
  })


  if target ~= nil then
    local dist = (tornado:GetWorldPosition() - target:GetWorldPosition()).size
    tornado:MoveTo(target:GetWorldPosition() + Vector3.UP * -100, dist / TORNADO_SPEED)
  end
  Task.Wait(1)
end


propFlingTrigger.beginOverlapEvent:Connect(OnHitSomething)