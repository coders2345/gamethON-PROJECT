local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local API = {}

local csv = [[
12
15
25
40
35
30
45
30
75
25
22
20
28
38
30
32
18
32
48
60
100
60
29
30
0
15
20
10
30
20
21
23
25
40
35
46
50
40
85
65
55
60
62
50
45
40
55
60
65
60
90
70
35
20
0
20
20
30
33
35
37
39
35
40
35
30
45
47
75
40
30
20
22
38
29
30
37
40
48
60
100
60
55
50
70
45
30
35
40
28
]]

-- Converting market data from csv file
local fieldProperties = {}
table.insert(fieldProperties, {name = "priceChange"})

function ProcessLine(line)
    local fieldArray = UTILITIES_LIBRARY.ConvertCSVLineToTable(line)
    return fieldArray[1]
end

local marketFluctuation = {}

local startlinePos = 1
local endlinePos = string.find(csv,'\n')
while endlinePos ~= nil do
	local line = string.sub(csv,startlinePos,endlinePos-1)

    local processedField = ProcessLine(line)
    table.insert(marketFluctuation, processedField)

	startlinePos = endlinePos + 1
	endlinePos = string.find(csv,'\n',startlinePos)
end

-- Creating min max prices for plants
local costData = {}

local function NewData(resource, originalPrice, minPrice, maxPrice, offset)
    costData[resource] = {}
    costData[resource].originalPrice = originalPrice
    costData[resource].maxPrice = maxPrice
    costData[resource].minPrice = minPrice
    costData[resource].offset = offset
end

NewData("ResourceStrawberry", 3, 2, 6, 0)
NewData("ResourceTomato", 15, 6, 30, 3)
NewData("ResourceGrape", 45, 10, 90, 11)
NewData("ResourceCarrot", 100, 20, 200, 7)
NewData("ResourceWheat", 250, 50, 500, 15)
NewData("ResourceWatermelon", 300, 100, 600, 24)
NewData("ResourcePumpkin", 500, 200, 1000, 10)

function API.GetMarketPrice(currentTime, dayOffset, dayLengthMinutes)
    if not dayOffset then
        dayOffset = 0
    end

    if not dayLengthMinutes then
        dayLengthMinutes = 1
    end
    local marketDay = math.floor((currentTime / 60.0 / dayLengthMinutes) % (#marketFluctuation - 1)) + 1
    if marketDay + dayOffset < 0 then
        marketDay = #marketFluctuation - dayOffset
    elseif marketDay + dayOffset > #marketFluctuation then
        marketDay = (#marketFluctuation - marketDay) + dayOffset
    else
        marketDay = marketDay + dayOffset
    end
    --print(marketDay)
    return marketFluctuation[marketDay]
end

function API.GetResourceMarketPrice(resource, currentTime, dayLengthMinutes)
    local data = costData[resource]
    local resourcePrice = data.minPrice + ((data.maxPrice -  data.minPrice) *
    (API.GetMarketPrice(currentTime, data.offset, dayLengthMinutes)/100))

    return UTILITIES_LIBRARY.RoundFloat(resourcePrice), data.originalPrice
end

return API