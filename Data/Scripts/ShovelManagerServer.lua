local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))

local equipment = {}

function ShovelUpgrade(player, upgradeId, freeUpgrade)
    if upgradeId ~= "ShovelLevel" then return end

    Events.Broadcast("TryUpgrade", player, upgradeId, freeUpgrade)
    RemovePlayerEquipment(player)
    Task.Wait(.5)
    GivePlayerEquipment(player)
end

function GivePlayerEquipment(player)
    local shovelLevel = STATS_LIBRARY.GetStat(player, "ShovelLevel")
    local equipmentTemplate = UPGRADES_LIST["ShovelLevel"][shovelLevel].shovelData.equipmentAsset

	player.animationStance = "2hand_melee_stance"

	equipment[player] = World.SpawnAsset(equipmentTemplate)
	assert(equipment[player]:IsA("Equipment"))
	equipment[player]:Equip(player)
end

function RemovePlayerEquipment(player)
	if equipment[player] and equipment[player]:IsValid() then
		equipment[player]:Unequip()

		-- Have to check IsValid() again, because unequip may have destroyed this equipment
		if equipment[player]:IsValid() then
			equipment[player]:Destroy()
		end

		equipment[player] = nil
	end
end

-- Initialize
Events.ConnectForPlayer("ShovelUpgrade", ShovelUpgrade)