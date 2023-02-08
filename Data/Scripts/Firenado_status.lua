local propRoot = script:GetCustomProperty("root"):WaitForObject()

function Tick()
  if propRoot.serverUserData ~= nil and propRoot.serverUserData.targetPlayer ~= nil then
    propRoot.serverUserData.targetPlayer:ApplyDamage(Damage.New(5))
    Task.Wait(1)
  end
end