shovelUpgrades = {
    -- Shovel 1 - Wood
    {
        notificationDescription = "Upgraded to Wood Shovel",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 0
        },

        -- additional data for shovel
        shovelData = {
            material = "Wood",
            castTime = 1.25,
            equipmentAsset = script:GetCustomProperty("Level1ShovelEquipment"),
            detectorDigMultiplier = 1.0
        }
    },
    -- Shovel 2 - Stone
    {
        notificationDescription = "Upgraded Wood Shovel to Stone Shovel",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 100
        },

        -- additional data for shovel
        shovelData = {
            material = "Stone",
            castTime = 1,
            detectorDigMultiplier = 0.8,
            equipmentAsset = script:GetCustomProperty("Level2ShovelEquipment"),
            perk = script:GetCustomProperty("Level2Perk")
        }
    },
    -- Shovel 3 - Iron
    {
        notificationDescription = "Upgraded Stone Shovel to Iron Shovel",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 1000
        },

        -- additional data for shovel
        shovelData = {
            material = "Iron",
            castTime = .75,
            detectorDigMultiplier = 0.6,
            equipmentAsset = script:GetCustomProperty("Level3ShovelEquipment"),
            perk = script:GetCustomProperty("Level3Perk")
        }
    },
    -- Shovel 4 - Gold
    {
        notificationDescription = "Upgraded Iron Shovel to Gold Shovel!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 10000
        },

        -- additional data for shovel
        shovelData = {
            material = "Gold",
            castTime = .5,
            detectorDigMultiplier = 0.4,
            equipmentAsset = script:GetCustomProperty("Level4ShovelEquipment"),
            perk = script:GetCustomProperty("Level4Perk")
        }
    },
    -- Shovel 5 - Diamond
    {
        notificationDescription = "Upgraded Gold Shovel to Diamond Shovel!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 100000
        },

        -- additional data for shovel
        shovelData = {
            material = "Diamond",
            castTime = .25,
            detectorDigMultiplier = 0.2,
            equipmentAsset = script:GetCustomProperty("Level5ShovelEquipment"),
            perk = script:GetCustomProperty("Level5Perk")
        }
    }
}

for i, table in ipairs(shovelUpgrades) do
    table.notificationTitle = "Shovel Level " .. tostring(i)
end

shovelUpgrades[1].metaData = {
    disableNotification = true
}

return shovelUpgrades