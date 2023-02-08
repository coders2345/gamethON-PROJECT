

function OnExecute(player, makeSmall)
  print("smalling a player!", player, makeBig)
  if makeSmall then
    player:SetWorldScale(Vector3.ONE * 0.4)
    player:SetResource("gmc_size", 1)
  else
    player:SetWorldScale(Vector3.ONE)
    player:SetResource("gmc_size", 0)
  end
end


Events.Connect("GMC_Small", OnExecute)
return {
  commandObject = commandObject
}
