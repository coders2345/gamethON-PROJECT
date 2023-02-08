local propSharkGibs = script:GetCustomProperty("SharkGibs")
local propKillTrigger = script:GetCustomProperty("KillTrigger"):WaitForObject()

local sharknado = script.parent

function OnHitSomething(trigger, other)
  if other:IsA("Player") then
    local player = other
    if not player.isDead then
      player:Die()
      World.SpawnAsset(propSharkGibs, {position = player:GetWorldPosition() })
      --Task.Wait(0.5)
      --player.isVisible = false
    end

  end
end


local TORNADO_SPEED = 100
local firstTime = true
function Tick()
  if firstTime then
    sharknado:MoveTo(sharknado:GetWorldPosition() + Vector3.UP * 1000, 3)
   Task.Wait(3)
   firstTime = false
  end
  local target = Game.FindNearestPlayer(sharknado:GetWorldPosition(), {
    ignoreDead = true,
    ignoreDespawned = true,
  })
  if target ~= nil then
    local dist = (sharknado:GetWorldPosition() - target:GetWorldPosition()).size
    sharknado:MoveTo(target:GetWorldPosition() + Vector3.UP * -100, dist / TORNADO_SPEED)
  end
  Task.Wait(1)
end



propKillTrigger.beginOverlapEvent:Connect(OnHitSomething)