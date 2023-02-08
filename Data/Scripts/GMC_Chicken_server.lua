local propChicken1 = script:GetCustomProperty("chicken")
local propChicken2 = script:GetCustomProperty("chicken2")


local chicken1 = World.SpawnAsset(propChicken1)
local chicken2 = World.SpawnAsset(propChicken2)


local chickenId1 = chicken1.sourceTemplateId
local chickenId2 = chicken2.sourceTemplateId

chicken1:Destroy()
chicken2:Destroy()

local chickenTasks = {}

local CHICKEN_DURATION = 30


function OnExecute(player)
  --local chicken = World.SpawnAsset(propChicken)
  playerEquipment = player:GetEquipment()
  if chickenTasks[player.id] ~= nil then
    chickenTasks[player.id]:Cancel()
  end

  for k,v in pairs(playerEquipment) do
    if v.sourceTemplateId == chickenId1 or v.sourceTemplateId == chickenId2 then
      --chicken:Destroy()
      v:Destroy()
      player:SetResource("gmc_chicken", 0)
      player.isVisible = true
      return
    end
  end
  local chicken = nil
  if math.random(1,2) == 1 then
    chicken = World.SpawnAsset(propChicken1)
  else
    chicken = World.SpawnAsset(propChicken2)
  end
  chicken:Equip(player)
  player:SetResource("gmc_chicken", 1)
  chicken.visibility = Visibility.FORCE_ON
  player.isVisible = false
  
  chickenTasks[player.id] = Task.Spawn(function()
    Task.Wait(CHICKEN_DURATION)
    if player:GetResource("gmc_chicken") > 0 then
      OnExecute(player)
    end
  end)
end




Events.Connect("GMC_Chicken", OnExecute)


return {
  commandObject = commandObject
}
