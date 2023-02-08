local propCoolSign = script:GetCustomProperty("CoolSign")

local signMap = {}

function OnExecute(player)

  if signMap[player.id] ~= nil then
    signMap[player.id]:Destroy()
    signMap[player.id] = nil
    player:SetResource("gmc_sign", 0)
  else
    local sign =  World.SpawnAsset(propCoolSign)
    sign:AttachToPlayer(player, "root")
    player:SetResource("gmc_sign", 1)
    signMap[player.id] = sign
  end

end




Events.Connect("GMC_CoolSign", OnExecute)
return {
  commandObject = commandObject
}
