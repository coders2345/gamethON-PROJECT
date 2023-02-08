local propRaincloud = script:GetCustomProperty("Raincloud")
local commandObject = nil
local clouds = {}


function OnExecute(player)
  --local chicken = World.SpawnAsset(propChicken)
  if clouds[player.id] ~= nil then
    clouds[player.id]:Destroy()
    clouds[player.id] = nil
    player:SetResource("gmc_raincloud", 0)
  else
    clouds[player.id] = World.SpawnAsset(propRaincloud, {position = player:GetWorldPosition() + Vector3.UP * 1000})
    clouds[player.id]:SetNetworkedCustomProperty("TargetPlayerId", player.id)
    player:SetResource("gmc_raincloud", 1)
  end
end




Events.Connect("GMC_Raincloud", OnExecute)

return {
  commandObject = commandObject
}
