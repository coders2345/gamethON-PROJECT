
local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))
local INVENTORY = require(script:GetCustomProperty("Inventory"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local PI_DIG = require(script:GetCustomProperty("PI_Dig"))

local rng = RandomStream.New(1234)

function HandleSimOne(player, areaIndex, inDepth, inSize)
	local filter = {
    	areaId = DIG_SITE_LIBRARY.GetAreaIdForIndex(areaIndex),
    	size = inSize,
    	depth = inDepth,
	}
	
print("Spawn specific:" .. filter.areaId .. " Size:" .. filter.size .. " Depth:" .. filter.depth)

	local item = ITEM_LIBRARY.GetRandomItemForFilter(filter, rng)
	if item ~= nil then

print("Item: " .. item.id .. " r;" .. item.itemRarity)

		PI_DIG.SpawnShowcase(player, item.id)
				
        INVENTORY.AddItem(player, item.id)
        STATS_LIBRARY.IncrementStat(player, "CurMetalStorage")
	end
end

function HandleSimArea(player, areaIndex, inDepth)
	local filter = {
		areaId = DIG_SITE_LIBRARY.GetAreaIdForIndex(areaIndex),
		size = rng:GetInteger(1, 3),
		depth = rng:GetInteger(1, inDepth)
	}
print("Spawn for Area:" .. filter.areaId .. " MaxDepth:" .. filter.depth)
	
	local item = ITEM_LIBRARY.GetRandomItemForFilter(filter, rng)
	if item ~= nil then

print("Item: " .. item.id .. " r;" .. item.itemRarity)

		PI_DIG.SpawnShowcase(player, item.id)
				
        INVENTORY.AddItem(player, item.id)
        STATS_LIBRARY.IncrementStat(player, "CurMetalStorage")
	end
end

Events.Connect("S1", HandleSimOne)
Events.Connect("SA", HandleSimArea)