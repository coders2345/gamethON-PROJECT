local propGMC_Hat_assetList = script:GetCustomProperty("GMC_Hat_assetList")
local hatList = require(propGMC_Hat_assetList)

--local propHat = script:GetCustomProperty("hat")
local hatMap = {}

function OnExecute(player)

  if hatMap[player.id] ~= nil then
    hatMap[player.id]:Destroy()
    hatMap[player.id] = nil
    player:SetResource("gmc_hat", 0)
  else
    local hatId = hatList.GetRandomHat()
    local hat =  World.SpawnAsset(hatId)
    hat:Equip(player)
    player:SetResource("gmc_hat", 1)
    hatMap[player.id] = hat
  end

end




Events.Connect("GMC_Hat", OnExecute)
return {
  commandObject = commandObject
}
