rodUpgrades = {
    -- Fishing Rod 1 - Wood
    {
        notificationDescription = "Upgraded Fishing Rod Level 1.",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 0
        },

        -- additional data for Fishing Rod
        rodData = {
            material = "Wood",
            castSpeed = 900,
            baitRange = 600,
            waitTime = 7,
            pullTime = 2,
            pullSpeed = 4.6,
            equipmentAsset = script:GetCustomProperty("Level1RodEquipment")
        }
    },
    -- Fishing Rod 2 - Stone
    {
        notificationDescription = "Upgraded Fishing Rod Level 2!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 1500
        },

        -- additional data for Fishing Rod
        rodData = {
            material = "Stone",
            castSpeed = 1000,
            baitRange = 700,
            waitTime = 6,
            pullTime = 2.8,
            pullSpeed = 4.2,
            equipmentAsset = script:GetCustomProperty("Level2RodEquipment"),
            perk = script:GetCustomProperty("Level2Perk")
        }
    },
    -- Fishing Rod 3 - Iron
    {
        notificationDescription = "Upgraded Fishing Rod Level 3!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 15000
        },

        -- additional data for Fishing Rod
        rodData = {
            material = "Iron",
            castSpeed = 1150,
            baitRange = 800,
            waitTime = 5,
            pullTime = 3.2,
            pullSpeed = 4,
            equipmentAsset = script:GetCustomProperty("Level3RodEquipment"),
            perk = script:GetCustomProperty("Level3Perk")
        }
    },
    -- Fishing Rod 4 - Gold
    {
        notificationDescription = "Upgraded Fishing Rod Level 4!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 150000
        },

        -- additional data for Fishing Rod
        rodData = {
            material = "Gold",
            castSpeed = 1250,
            baitRange = 950,
            waitTime = 4,
            pullTime = 3.8,
            pullSpeed = 3.5,
            equipmentAsset = script:GetCustomProperty("Level4RodEquipment"),
            perk = script:GetCustomProperty("Level4Perk")
        }
    },
    -- Fishing Rod 5 - Diamond
    {
        notificationDescription = "Upgraded Fishing Rod Level 5!",

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = 250000
        },

        -- additional data for Fishing Rod
        rodData = {
            material = "Diamond",
            castSpeed = 1500,
            baitRange = 1100,
            waitTime = 3,
            pullTime = 4.2,
            pullSpeed = 3,
            equipmentAsset = script:GetCustomProperty("Level5RodEquipment"),
            perk = script:GetCustomProperty("Level5Perk")
        }
    }
}

for i, table in ipairs(rodUpgrades) do
    table.notificationTitle = "Fishing Rod Level " .. tostring(i)
end

rodUpgrades[1].metaData = {
    disableNotification = true
}

return rodUpgrades