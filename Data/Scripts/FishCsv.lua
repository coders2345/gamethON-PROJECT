local OrderedTable = require(script:GetCustomProperty("OrderedTable"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))

local csv = [[
Fish Small Test,100,Middle Lake,4EE7A16C90C8B169:Fish Prop Test Small
Fish Medium Test,100,Middle Lake,BE2D44A536B9FEFD:Fish Prop Test Medium
Fish Big Test,100,Middle Lake,DCF93A797311E8CB:Fish Prop Test Big
Koi,100,Upper Lake,4EE7A16C90C8B169:Fish Prop Test Small
Salmon,100,Upper Lake,BE2D44A536B9FEFD:Fish Prop Test Medium
Shark,100,Upper Lake,DCF93A797311E8CB:Fish Prop Test Big
Pebble,100,All,4EE7A16C90C8B169:Fish Prop Test Small
]]

local fieldProperties = {}
table.insert(fieldProperties, { name = "fishName", type = "string" })
table.insert(fieldProperties, { name = "dropWeight", type = "number" })
table.insert(fieldProperties, { name = "area", type = "string" })
table.insert(fieldProperties, { name = "assetId", type = "string" })

function ProcessField(outFields, fieldPropertyTable, fieldStringValue)
    if fieldPropertyTable.type == "string" then
        outFields[fieldPropertyTable.name] = tostring(fieldStringValue)
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

local fishes = OrderedTable.new()

local startlinePos = 1
local endlinePos = string.find(csv,'\n')
local fishIndex = 1
while endlinePos ~= nil do
	local line = string.sub(csv,startlinePos,endlinePos-1)

    local processedFields = ProcessLine(line)
    processedFields.id = "F" .. fishIndex
    fishes[processedFields.id] = processedFields

	startlinePos = endlinePos + 1
    endlinePos = string.find(csv,'\n',startlinePos)
    fishIndex = fishIndex + 1
end

return fishes