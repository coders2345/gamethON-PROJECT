local OrderedTable = require(script:GetCustomProperty("OrderedTable"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local csv = [[
A_BarnStorage1,Need Extra Storage,Upgrade Barn to Level 2,BarnLevel,2,ResourceTomato,1,,TRUE
A_BarnStorage2,Medium Storage,Upgrade Barn to Level 5,BarnLevel,5,ResourceTomato,2,A_BarnStorage1,FALSE
A_BarnStorage3,Large Storage I,Upgrade Barn to Level 10,BarnLevel,10,ResourceTomato,4,A_BarnStorage2,FALSE
A_BarnStorage4,Large Storage II,Upgrade Barn to Level 15,BarnLevel,15,ResourceTomato,8,A_BarnStorage3,FALSE
A_BarnStorage5,Extra Large Storage,Upgrade Barn to Level 20,BarnLevel,20,ResourceTomato,16,A_BarnStorage4,FALSE
A_Backpack1,Start of Adventure,Upgrade Backpack to Level 2,BackpackLevel,2,ResourceCarrot,1,,TRUE
A_Backpack2,Explorer Backpack,Upgrade Backpack to Level 8,BackpackLevel,8,ResourceCarrot,2,A_Backpack1,FALSE
A_Backpack3,Need More Space,Upgrade Backpack to Level 12,BackpackLevel,12,ResourceCarrot,4,A_Backpack2,FALSE
A_Backpack4,Traveler Backpack,Upgrade Backpack to Level 15,BackpackLevel,15,ResourceCarrot,8,A_Backpack3,FALSE
A_Backpack5,Collector Backpack,Upgrade Backpack to Level 21,BackpackLevel,21,ResourceCarrot,10,A_Backpack4,FALSE
A_Shovel1,I Dig It,Upgrade Shovel to Level 2,ShovelLevel,2,ResourceWheat,1,,TRUE
A_Shovel2,Faster Digging,Upgrade Shovel to Level 3,ShovelLevel,3,ResourceWheat,3,A_Shovel1,FALSE
A_Shovel3,Less Effort,Upgrade Shovel to Level 4,ShovelLevel,4,ResourceWheat,6,A_Shovel2,FALSE
A_Shovel4,A Groundbreaking Invention,Upgrade Shovel to Level 5,ShovelLevel,5,ResourceWheat,12,A_Shovel3,FALSE
A_Plots1,Expanding the Farm,Unlock 6 Plots of Land,PlotsUnlocked,6,ResourceWatermelon,1,,TRUE
A_Plots2,Expanding the Farm II,Unlock 12 Plots of Land,PlotsUnlocked,12,ResourceWatermelon,2,A_Plots1,FALSE
A_Plots3,Master of the Plots,Unlock 20 Plots of Land,PlotsUnlocked,20,ResourceWatermelon,4,A_Plots2,FALSE
A_Plots4,The More the Merrier,Unlock 36 Plots of Land,PlotsUnlocked,36,ResourceWatermelon,8,A_Plots3,FALSE
A_Plots5,Professional Farmer,Unlock 44 Plots of Land,PlotsUnlocked,44,ResourceWatermelon,16,A_Plots4,FALSE
A_Plots6,Let's Get This Bread,Unlock 50 Plots of Land,PlotsUnlocked,50,ResourceWatermelon,25,A_Plots5,FALSE
A_NetWorth1,Path to Great Wealth I,Reach $100 Net Worth,MoneyAccumulated,100,ResourceGrape,1,,TRUE
A_NetWorth2,Path to Great Wealth II,"Reach $1,000 Net Worth",MoneyAccumulated,1000,ResourceWheat,1,A_NetWorth1,FALSE
A_NetWorth3,Path to Great Wealth III,"Reach $5,000 Net Worth",MoneyAccumulated,5000,ResourceWatermelon,1,A_NetWorth2,FALSE
A_NetWorth4,Wealthy Farmer Path I,"Reach $10,000 Net Worth",MoneyAccumulated,10000,ResourcePumpkin,1,A_NetWorth3,FALSE
A_NetWorth5,Wealthy Farmer Path II,"Reach $50,000 Net Worth",MoneyAccumulated,50000,ResourcePumpkin,2,A_NetWorth4,FALSE
A_NetWorth6,Wealthy Farmer Path III,"Reach $100,000 Net Worth",MoneyAccumulated,100000,ResourcePumpkin,3,A_NetWorth5,FALSE
A_NetWorth7,Wealthy Farmer Path IV,"Reach $250,000 Net Worth",MoneyAccumulated,250000,ResourcePumpkin,4,A_NetWorth6,FALSE
A_NetWorth8,Wealthy Farmer Path V,"Reach $500,000 Net Worth",MoneyAccumulated,500000,ResourcePumpkin,5,A_NetWorth7,FALSE
A_NetWorth9,Millionaire Path I,"Reach $1,000,000 Net Worth",MoneyAccumulated,1000000,ResourcePumpkin,6,A_NetWorth8,FALSE
A_NetWorth10,Millionaire Path II,"Reach $2,000,000 Net Worth",MoneyAccumulated,2000000,ResourcePumpkin,7,A_NetWorth9,FALSE
A_NetWorth11,Millionaire Path III,"Reach $5,000,000 Net Worth",MoneyAccumulated,5000000,ResourcePumpkin,8,A_NetWorth10,FALSE
A_NetWorth12,Millionaire Path IV,"Reach $10,000,000 Net Worth",MoneyAccumulated,10000000,ResourcePumpkin,9,A_NetWorth11,FALSE
A_NetWorth13,Millionaire Path VI,"Reach $50,000,000 Net Worth",MoneyAccumulated,50000000,ResourcePumpkin,10,A_NetWorth12,FALSE
A_Detector1,A New Metal Fan,Upgrade Metal Detector to Level 2,MetalDetectorLevel,2,ResourceWheat,1,,TRUE
A_Detector2,Items Hunter I,Upgrade Metal Detector to Level 3,MetalDetectorLevel,3,ResourceWheat,3,A_Detector1,FALSE
A_Detector3,Items Hunter II,Upgrade Metal Detector to Level 4,MetalDetectorLevel,4,ResourceWheat,6,A_Detector2,FALSE
A_Detector4,"Sweep, Beep, Dig, Repeat",Upgrade Metal Detector to Level 5,MetalDetectorLevel,5,ResourceWheat,12,A_Detector3,FALSE
A_Stable1,Speed Upgrade,Upgrade Mount to Level 3,StableLevel,3,ResourceGrape,1,,TRUE
A_Stable2,I have a Stable Connection,Upgrade Mount to Level 6,StableLevel,6,ResourceGrape,4,A_Stable1,FALSE
A_Stable3,Riding the Wind,Upgrade Mount to Level 8,StableLevel,8,ResourceGrape,8,A_Stable2,FALSE
A_Stable4,Maximum Speed,Upgrade Mount to Level 10,StableLevel,10,ResourceGrape,14,A_Stable3,FALSE
A_Rod1,Initial Bait,Upgrade Fishing Rod to Level 2,FishingRodLevel,2,ResourceWheat,1,,TRUE
A_Rod2,Attractive Lure,Upgrade Fishing Rod to Level 3,FishingRodLevel,3,ResourceWheat,2,A_Rod1,FALSE
A_Rod3,Easier Catch,Upgrade Fishing Rod to Level 4,FishingRodLevel,4,ResourceWheat,4,A_Rod2,FALSE
A_Rod4,Ultimate Fishing,Upgrade Fishing Rod to Level 5,FishingRodLevel,5,ResourceWheat,8,A_Rod3,FALSE
]]

local fieldProperties = {}
table.insert(fieldProperties, { name = "id", type = "string" })
table.insert(fieldProperties, { name = "name", type = "string" })
table.insert(fieldProperties, { name = "description", type = "string" })
table.insert(fieldProperties, { name = "requiredStatName", type = "string" })
table.insert(fieldProperties, { name = "requiredStatValue", type = "number" })
table.insert(fieldProperties, { name = "rewardStatName", type = "string" })
table.insert(fieldProperties, { name = "rewardStatValue", type = "number" })
table.insert(fieldProperties, { name = "requiredAchievement", type = "string" })
table.insert(fieldProperties, { name = "isDefaultTask", type = "bool" })

function ProcessField(outFields, fieldPropertyTable, fieldStringValue)
        if fieldPropertyTable.type == "string" then
            outFields[fieldPropertyTable.name] = tostring(fieldStringValue)
        elseif fieldPropertyTable.type == "bool" then
            if fieldStringValue == "TRUE" then
                outFields[fieldPropertyTable.name] = true
            else
                outFields[fieldPropertyTable.name] = false
            end
        elseif fieldPropertyTable.type == "number" then
            outFields[fieldPropertyTable.name] = tonumber(fieldStringValue)
        end
    end

function ProcessLine(line)
	local fields = {}
	local fieldArray = UTILITIES_LIBRARY.ConvertCSVLineToTable(line)
    for index, _ in ipairs(fieldArray) do
		ProcessField(fields, fieldProperties[index], fieldArray[index])
	end
	return fields
end

local achievements = OrderedTable.new()

local startlinePos = 1
local endlinePos = string.find(csv,'\n')
while endlinePos ~= nil do
	local line = string.sub(csv,startlinePos,endlinePos-1)

    local processedFields = ProcessLine(line)
    achievements[processedFields.id] = {
        name = processedFields.name,
        description = processedFields.description,
        requiredStats = {
            [processedFields.requiredStatName] = processedFields.requiredStatValue
        },
        rewardStats =
        {
            [processedFields.rewardStatName] = processedFields.rewardStatValue
        },
        requiredAchievements = {},
        autoUnlock = true, -- all auto unlock since we need this for claim reward feature
        isDefaultTask = processedFields.isDefaultTask
    }

    if processedFields.requiredAchievement ~= nil and processedFields.requiredAchievement ~= "" then
        table.insert(achievements[processedFields.id].requiredAchievements, processedFields.requiredAchievement)
    end

	startlinePos = endlinePos + 1
	endlinePos = string.find(csv,'\n',startlinePos)
end

return achievements