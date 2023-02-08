Task.Wait()
Events.Broadcast("GunEquiped")

local equip = script:FindAncestorByType("Equipment")
if equip ~= nil then
  equip.equippedEvent:Connect(function(obj, player)
    Events.Broadcast("GunEquiped")
  end)
end

