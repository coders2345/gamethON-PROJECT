metalDectUpgrades = {
    --  1 - Wood
    {
        notificationDescription = "Upgraded to Wood Metal Detector",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = 0
        },

        -- results of the upgrade
        upgradeResultStats =
        {
            DetectionMaxDepth = 5,
            DetectionRadius = 1200,
        },

        -- additional data for 
        metaData = {
            disableNotification = true,
            type = "Wood",
            equipmentAsset = script:GetCustomProperty("Level1"),
            playerSettings = script:GetCustomProperty("Level1Settings"):WaitForObject()
        }
    },
    --  2 - Stone
    {
        notificationDescription = "Upgraded Wood Metal Detector to Stone Metal Detector",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = 2500
        },

        -- results of the upgrade
        upgradeResultStats =
        {
            DetectionMaxDepth = 6,
            DetectionRadius = 1500,
        },

        -- additional data for 
        metaData = {
            type = "Stone",
            equipmentAsset = script:GetCustomProperty("Level2"),
            playerSettings = script:GetCustomProperty("Level2Settings"):WaitForObject(),
            perk = script:GetCustomProperty("Level2Perk")
        }
    },
    --  3 - Iron
    {
        notificationDescription = "Upgraded Stone Metal Detector to Iron Metal Detector",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = 20000
        },

        -- results of the upgrade
        upgradeResultStats =
        {
            DetectionMaxDepth = 8,
            DetectionRadius = 1800,
        },

        -- additional data for 
        metaData = {
            type = "Iron",
            equipmentAsset = script:GetCustomProperty("Level3"),
            playerSettings = script:GetCustomProperty("Level3Settings"):WaitForObject(),
            perk = script:GetCustomProperty("Level3Perk")
        }
    },
    --  4 - Gold
    {
        notificationDescription = "Upgraded Iron Metal Detector to Gold Metal Detector!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = 125000
        },

        -- results of the upgrade
        upgradeResultStats =
        {
            DetectionMaxDepth = 9,
            DetectionRadius = 2000,
        },

        -- additional data for 
        metaData = {
            type = "Gold",
            equipmentAsset = script:GetCustomProperty("Level4"),
            playerSettings = script:GetCustomProperty("Level4Settings"):WaitForObject(),
            perk = script:GetCustomProperty("Level4Perk")
        }
    },
    --  5 - Diamond
    {
        notificationDescription = "Upgraded Gold Metal Detector to Diamond Metal Detector!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = 500000
        },

        -- results of the upgrade
        upgradeResultStats =
        {
            DetectionMaxDepth = 10,
            DetectionRadius = 2500,
        },

        -- additional data for 
        metaData = {
            type = "Diamond",
            equipmentAsset = script:GetCustomProperty("Level5"),
            playerSettings = script:GetCustomProperty("Level5Settings"):WaitForObject(),
            perk = script:GetCustomProperty("Level5Perk")
        }
    }
}

for i, table in ipairs(metalDectUpgrades) do
    table.notificationTitle = "Metal detector Level " .. tostring(i)
end

return metalDectUpgrades