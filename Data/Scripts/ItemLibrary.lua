local ITEMS_CSV = require(script:GetCustomProperty("ItemsCsv"))

local COMMON_COLOR = script:GetCustomProperty("CommonColor")
local UNCOMMON_COLOR = script:GetCustomProperty("UncommonColor")
local RARE_COLOR = script:GetCustomProperty("RareColor")
local LEGENDARY_COLOR = script:GetCustomProperty("LegendaryColor")

-- TODO use custom property once asset ref bug is fixed
local COMMON_ICON = "F41966BED53C3A14:Center Tri 001"
local UNCOMMON_ICON = "0A94F91B7E35ACFF:Center Rect 001"
local RARE_ICON = "00C5E09FC74841B0:Center Hex 001"
local LEGENDARY_ICON = "687DDE753A936BF7:Icon Star"--script:GetCustomProperty("LegendaryIcon")

local library = {}

library.RARITY_COMMON = 1
library.RARITY_UNCOMMON = 2
library.RARITY_RARE = 3
library.RARITY_LEGENDARY = 4

local items = ITEMS_CSV

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
	end
end

library.GetItem = function (itemId)
	return items[itemId]
end

local function predicate(a, b)
	return library.GetItem(a).itemRarity < library.GetItem(b).itemRarity
end

library.GetAllItems = function ()
	return items
end

library.GetAllItemsSorted = function ()
	table.sort(items, predicate)
	return items
end

-- Possible filter properties:
-- size
-- depth
function GetItemsMatchingFilter(filter)
	local filteredItems = {}
	log("Filter items for area[" .. tostring(filter.areaId	) .. "] size[" .. tostring(filter.size) .. "] depth[" .. tostring(filter.depth) .. "]")
	for id, item in pairs(items) do
		local isAcceptable = true

		-- item size
		if filter.size ~= nil and filter.size ~= item.size then
			log("... item " .. id .. " is wrong size " .. tostring(item.size))
			isAcceptable = false
		end

		-- item depth
		if filter.depth ~= nil
		and (filter.depth < item.minDepth or filter.depth > item.maxDepth) then
			log("... item " .. id .. " is wrong depth " .. tostring(item.minDepth) .. " , " .. tostring(item.maxDepth))
			isAcceptable = false
		end

		-- area
		if filter.areaId ~= nil and not string.match(item.area, "ALL") and filter.areaId ~= item.area then
			log(" ... item " .. id .. " is in wrong area " .. tostring(item.area))
			isAcceptable = false
		end

		-- area for fishing
		if filter.areaId ~= nil and item.area == "ALL" and string.match(filter.areaId, "FISHING") then
			log(" ... item " .. id .. " is in fishing area " .. tostring(item.area))
			isAcceptable = false
		end

		if filter.areaId ~= nil and item.area == "FISHINGALL" and not string.match(filter.areaId, "FISHING") then
			log(" ... item " .. id .. " is in not a fish area " .. tostring(item.area))
			isAcceptable = false
		end

		-- exclude all other items if needed
		if filter.excludeAll ~= nil and string.match(item.area, "ALL") and filter.excludeAll then
			log(" ... item " .. id .. " is excluded")
			isAcceptable = false
		end

		if isAcceptable then
			log("... item " .. id .. " accepted!")
			table.insert(filteredItems, item)
		end
	end

	return filteredItems
end

library.GetRandomItemForFilter = function (filter, rng)
	local resultItem = nil

	local filteredItems = GetItemsMatchingFilter(filter)

	if #filteredItems > 0 then
		-- sum up total weight of items
		local totalWeight = 0
		for _, item in ipairs(filteredItems) do
			totalWeight = totalWeight + item.dropWeight
		end

		if rng == nil then
			rng = RandomStream.New()
		end

		-- pick random value within weight range
		local remainingWeight = rng:GetInteger(1, totalWeight)

		-- determine corresponding item
		for _, item in ipairs(filteredItems) do
			if remainingWeight <= item.dropWeight then
				resultItem = item

				break
			end

			remainingWeight = remainingWeight - item.dropWeight
		end
	end

	return resultItem, resultItem.id
end

library.GetRarityColor = function (rarity)
	local rarity = CoreMath.Clamp(rarity or 1, 1, library.RARITY_LEGENDARY)
    local rarityColor = Color.WHITE
    if rarity == library.RARITY_COMMON then
        rarityColor = COMMON_COLOR
    elseif rarity == library.RARITY_UNCOMMON then
        rarityColor = UNCOMMON_COLOR
    elseif rarity == library.RARITY_RARE then
		rarityColor = RARE_COLOR
	elseif rarity == library.RARITY_LEGENDARY then
        rarityColor = LEGENDARY_COLOR
	end
	return Color.New(rarityColor)
end

library.GetRarityText = function (rarity)
	local rarity = CoreMath.Clamp(rarity or 1, 1, library.RARITY_LEGENDARY)
    local rarityText = "Common"
	if rarity == library.RARITY_UNCOMMON then
        rarityText = "Uncommon"
    elseif rarity == library.RARITY_RARE then
		rarityText = "Rare"
	elseif rarity == library.RARITY_LEGENDARY then
        rarityText = "Legendary"
	end
	return rarityText
end

library.GetRarityDescriptor = function (rarity)
	local rarity = CoreMath.Clamp(rarity or 1, 1, library.RARITY_LEGENDARY)
	local rarityText = "a common"
	if rarity == library.RARITY_UNCOMMON then
        rarityText = "an uncommon"
    elseif rarity == library.RARITY_RARE then
		rarityText = "a rare"
	elseif rarity == library.RARITY_LEGENDARY then
        rarityText = "a legendary"
	end
	return rarityText
end

library.GetRarityIcon = function (rarity)
	local rarity = CoreMath.Clamp(rarity or 1, 1, library.RARITY_LEGENDARY)
    local rarityIcon = COMMON_ICON
	if rarity == library.RARITY_UNCOMMON then
        rarityIcon = UNCOMMON_ICON
    elseif rarity == library.RARITY_RARE then
		rarityIcon = RARE_ICON
	elseif rarity == library.RARITY_LEGENDARY then
        rarityIcon = LEGENDARY_ICON
	end
	return rarityIcon
end


--[[ Fishing Functions]]
library.GetFishingEquipment = function(player)
	local equipments = player:GetEquipment()
	for _, equipment in pairs(equipments) do
		if equipment:GetCustomProperty("FishingEquipment") then
			return equipment
		end
	end
end

library.GetRodEquipment = function(player)
	local equipments = player:GetEquipment()
	for _, equipment in pairs(equipments) do
		if equipment:GetCustomProperty("RodEquipment") then
			return equipment
		end
	end
end

library.GetFishAllowanceSize = function(rarity)
    if rarity == 1 then
        return .3
    elseif rarity == 2 then
        return .25
    elseif rarity == 3 then
        return .1
    elseif rarity == 4 then
        return .05
    end
end

library.IsItemFishingCategory = function(itemId)
	if items[itemId] then
		if string.match(items[itemId].area, "FISHING") then
			return true
		end
	end
	return false
end

return library