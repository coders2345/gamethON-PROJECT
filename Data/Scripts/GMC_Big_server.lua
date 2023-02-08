

function OnExecute(player, makeBig)
  print("Bigging a player!", player, makeBig)
  if makeBig then
    player:SetWorldScale(Vector3.ONE * 2)
    player:SetResource("gmc_size", 2)
  else
    player:SetWorldScale(Vector3.ONE)
    player:SetResource("gmc_size", 0)
  end
end


Events.Connect("GMC_Big", OnExecute)

return {
  commandObject = commandObject
}
