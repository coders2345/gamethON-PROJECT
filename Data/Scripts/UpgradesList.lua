--[[
    upgradesList[UpgradeStatID] = 
    {
        -- level 1
        {
            notificationTitle = " Level 1",
            notificationDescription = "Upgraded to level 1",

            -- consume stat values gets deducted from their current value
            consumeStat =
            {
               
            },

            -- minimum stat values requied to do the upgrade
            requiredStats =
            {
                
            },

            -- results of the upgrade
            upgradeResultStats =
            {

            },

            metaData = {
                disableNotification = true
            }
        },
    }
]]
local BarnLevelUpgrades = require(script:GetCustomProperty("BarnUpgrades"))
local ShovelUpgrades = require(script:GetCustomProperty("ShovelUpgrades"))
local StableUpgrades = require(script:GetCustomProperty("StableUpgrades"))
local MetalDetectorUpgradesList = require(script:GetCustomProperty("MetalDetectorUpgradesList"))
local BackpackUpgradesList = require(script:GetCustomProperty("BackpackUpgradesList"))
local FishingRodUpgradesList = require(script:GetCustomProperty("FishingRodUpgradesList"))

upgradesList = {}

upgradesList["BarnLevel"] = BarnLevelUpgrades
upgradesList["ShovelLevel"] = ShovelUpgrades
upgradesList["StableLevel"] = StableUpgrades
upgradesList["MetalDetectorLevel"] = MetalDetectorUpgradesList
upgradesList["BackpackLevel"] = BackpackUpgradesList
upgradesList["FishingRodLevel"] = FishingRodUpgradesList

return upgradesList