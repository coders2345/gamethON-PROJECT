local propCookie = script:GetCustomProperty("Cookie")


function OnExecute(player)
  print("Giving a cookie!", player, reviveInstead)
  local cookie = World.SpawnAsset(propCookie)
  playerEquipment = player:GetEquipment()

  for k,v in pairs(playerEquipment) do
    if v.sourceTemplateId == cookie.sourceTemplateId then
      print("they already have one")
      cookie:Destroy()
      return
    end
  end
  cookie:Equip(player)
end


function OnExecuteAll(sourcePlayer)
  for k,v in pairs(Game.GetPlayers()) do
    OnExecute(v)
  end
end


Events.Connect("GMC_Cookie", OnExecute)
Events.Connect("GMC_Cookie_All", OnExecuteAll)

return {
  commandObject = commandObject
}
