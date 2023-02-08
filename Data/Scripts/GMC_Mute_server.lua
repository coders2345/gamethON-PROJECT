function IsMuted(player)
  return player:GetResource("gmc_mute") > 0
end

function OnExecute(player)
  print("Muting a player!", player, isMuted)
  if IsMuted(player) then
    player:SetResource("gmc_mute", 0)
  else
    player:SetResource("gmc_mute", 1)
  end
end



function OnReceiveMessage(player, params)
  if IsMuted(player) then
    params.message = ""
  end
end


local hook = Chat.receiveMessageHook:Connect(OnReceiveMessage)


Events.Connect("GMC_Mute", OnExecute)
return {
  commandObject = commandObject
}
