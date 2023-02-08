local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local csv = [[
1,ResourceCarrot,5
2,ResourceWheat,8
3,InstaGrow,10
4,ResourceWatermelon,3
5,ResourcePumpkin,5
6,Money,1000
7,InstaGrow,15
8,ResourceCarrot,8
9,ResourceWheat,12
10,InstaGrow,15
11,ResourceWatermelon,4
12,ResourcePumpkin,8
13,Money,1500
14,InstaGrow,20
15,ResourceCarrot,10
16,ResourceWheat,15
17,InstaGrow,25
18,ResourceWatermelon,5
19,ResourcePumpkin,10
20,Money,2000
21,InstaGrow,30
22,ResourceCarrot,10
23,ResourceWheat,15
24,InstaGrow,35
25,ResourceWatermelon,5
26,ResourcePumpkin,10
27,Money,2500
28,InstaGrow,40
]]

local fieldProperties = {}
table.insert(fieldProperties, { name = "day", type = "number" })
table.insert(fieldProperties, { name = "rewardStatName", type = "string" })
table.insert(fieldProperties, { name = "rewardStatValue", type = "number" })

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

local list = {}

local startlinePos = 1
local endlinePos = string.find(csv,'\n')
while endlinePos ~= nil do
    local line = string.sub(csv,startlinePos,endlinePos-1)

    local processedFields = ProcessLine(line)
    table.insert(list, {
        day = processedFields.day,
        rewardStatName = processedFields.rewardStatName,
        rewardStatValue = processedFields.rewardStatValue
    })

    startlinePos = endlinePos + 1
    endlinePos = string.find(csv,'\n',startlinePos)
end

return list