
local library = {}

local areas = {}

local areaIdToIndex = {}
local areaIndexToId = {}

local DEBUG = false
local function log(msg)
	if DEBUG then
		print(msg)
	end
end

library.RegisterDigArea = function (areaRoot)
	local area = {}
	
	area.id = areaRoot:GetCustomProperty("AreaID")
	area.controlObject = areaRoot:GetCustomProperty("ControlObject"):WaitForObject()
	area.digSitesRoot = areaRoot:GetCustomProperty("DigSitesRoot"):WaitForObject()
	area.depthCount = #area.digSitesRoot:GetChildren()
	area.activeSitesPerDepth = areaRoot:GetCustomProperty("ActiveSitesPerDepth")
	
	area.depths = {}
	for _, depthRoot in ipairs(area.digSitesRoot:GetChildren()) do
		local depth = {}
		
		depth.root = depthRoot
		depth.depth = depthRoot:GetCustomProperty("Depth")
		depth.digSiteCount = #depthRoot:GetChildren()
		
		table.insert(area.depths, depth)
	end
		
	areas[area.id] = area
	
	table.insert(areaIndexToId, area.id)
	areaIdToIndex[area.id] = #areaIndexToId
	
	log("Area registered! " .. area.id .. "[" .. #areaIndexToId .. "]")
end

library.GetActiveSitesPerDepthForArea = function (areaId)
	if areas[areaId] ~= nil then
		return areas[areaId].activeSitesPerDepth
	end
	
	return 0
end

library.GetDepthsForArea = function (areaId)
	if areas[areaId] ~= nil then
		local depths = {}

		for _, depth in ipairs(areas[areaId].depths) do
			table.insert(depths, depth.depth)
		end
		
		return depths
	end
	
	return {}
end

library.GetAreaIdForIndex = function (areaIndex)
	return areaIndexToId[areaIndex]
end

library.GetAreaCount = function ()
	return #areaIndexToId
end

--[[
The active state of dig sites within an area is stored in a series of networked
int custom properties called "Registers". Each bit in a register corresponds
to a specific dig site, indexed by a site's order in the hierarchy.

Site Indices start at 1 and increase
Registers start at index 1 and increase.
Bit indices start at the 0th bit and increase. 

Examples:
Dig Site #1
0-based Site Index == 1 - 1 -> 0
Register == (0 // 32) + 1 -> "Register1"
Bit Index == (0 % 32) -> 0

Dig Site #35
0-based Site Index == 35 - 1 -> 34
Register == (34 // 32) + 1 -> "Register2"
Bit Index == (34 % 32) -> 2
--]]

function GetRegisterIndexForSiteIndex(siteIndex)
	-- siteIndex starts at 1, so decrement to be 0-based
	return ((siteIndex - 1) // 32) + 1
end

function GetRegisterName(siteIndex)
	local registerIndex = GetRegisterIndexForSiteIndex(siteIndex)
	
	return "Register" .. tostring(registerIndex)
end

function GetBitIndexForSiteIndex(siteIndex)
	-- siteIndex starts at 1, so decrement to be 0-based
	return ((siteIndex - 1) % 32)
end

function GetRegisterValue(controlObject, siteIndex)
	local registerIndex = GetRegisterIndexForSiteIndex(siteIndex)
	local bitIndex = GetBitIndexForSiteIndex(siteIndex)
	
	local propertyName = GetRegisterName(siteIndex)
	
	local registerValue = controlObject:GetCustomProperty(propertyName)
	
	return registerValue
end

function GetAreaSiteIndex(areaId, siteDepth, depthRelativeIndex)
	local area = areas[areaId]

	-- get siteIndex relative to specified depth
	local totalSiteIndex = 0
	for _, depth in ipairs(area.depths) do
		if depth.depth == siteDepth then
			totalSiteIndex = totalSiteIndex + depthRelativeIndex
			
			break
		end
		
		totalSiteIndex = totalSiteIndex + depth.digSiteCount
	end
	
	return totalSiteIndex
end

function IsDigSiteActive(areaId, siteDepth, depthRelativeIndex)
	assert(areas[areaId] ~= nil)

--	log("IsDigSiteActive " .. areaId .. " " .. tostring(siteDepth) .. " " .. tostring(depthRelativeIndex))	
	
	local area = areas[areaId]

	-- get siteIndex relative to specified depth
	local totalSiteIndex = GetAreaSiteIndex(areaId, siteDepth, depthRelativeIndex)
	
	local registerValue = GetRegisterValue(area.controlObject, totalSiteIndex)
	local bitIndex = GetBitIndexForSiteIndex(totalSiteIndex)

	return (registerValue & (1 << bitIndex)) ~= 0
end

function GetDigSite(areaId, siteDepth, depthRelativeIndex)
	assert(areas[areaId] ~= nil)
	
	local area = areas[areaId]
	
	for _, depth in ipairs(area.depths) do
		if depth.depth == siteDepth then
			local digSite = depth.root:GetChildren()[depthRelativeIndex]
			
			assert(Object.IsValid(digSite))
			
			return digSite
		end		
	end

	return nil
end

function GetDigSiteCount(areaId, siteDepth)
	assert(areas[areaId] ~= nil)
	
	local area = areas[areaId]
	for _, depth in ipairs(area.depths) do
		if depth.depth == siteDepth then
			return depth.digSiteCount
		end
	end
	
	return 0
end

function SetDigSiteActive(areaId, siteDepth, depthRelativeIndex, isActive)
	local area = areas[areaId]

	-- get siteIndex relative to specified depth
	local totalSiteIndex = GetAreaSiteIndex(areaId, siteDepth, depthRelativeIndex)
	local bitIndex = GetBitIndexForSiteIndex(totalSiteIndex)
	
	local registerValue = GetRegisterValue(area.controlObject, totalSiteIndex)
	
	local newRegisterValue = nil
	
	if isActive then
		newRegisterValue = registerValue | (1 << bitIndex)
	else
		newRegisterValue = registerValue & ~(1 << bitIndex)
	end

	log("SetDigSiteActive " .. tostring(totalSiteIndex) .. " : update " .. area.controlObject.name .. " : " .. tostring(registerValue) .. " -> " .. tostring(newRegisterValue))

	area.controlObject:SetNetworkedCustomProperty(GetRegisterName(totalSiteIndex), newRegisterValue)
end

function ActivateDigSite(areaId, siteDepth, depthRelativeIndex)
	log("ActivateDigSite " .. areaId .. " " .. tostring(siteDepth) .. " " .. tostring(depthRelativeIndex))	
	
	SetDigSiteActive(areaId, siteDepth, depthRelativeIndex, true)
end

function DeactivateDigSite(areaId, siteDepth, depthRelativeIndex)
	log("DeactivateDigSite " .. areaId .. " " .. tostring(siteDepth) .. " " .. tostring(depthRelativeIndex))

	SetDigSiteActive(areaId, siteDepth, depthRelativeIndex, false)	
end

function GetDigSiteSize(obj)
	assert(Object.IsValid(obj))
	
	return obj:GetCustomProperty("Size")
end

library.ActivateRandomDigSite = function (areaId, depth, excludeIndex)
	log("ActivateRandomDigSite for " .. areaId .. " - " .. tostring(depth))
	
	if areas[areaId] ~= nil then
		-- get control object
		local area = areas[areaId]
		
		-- find a random inactive site
		local rng = RandomStream.New()
		while true do 
			local depthSiteCount = GetDigSiteCount(areaId, depth)
			local siteIndex = rng:GetInteger(1, depthSiteCount)
			
			if siteIndex ~= excludeIndex
			and not IsDigSiteActive(areaId, depth, siteIndex) then
				log("Activate " .. areaId .. ":" .. tostring(depth) .. ":" .. tostring(siteIndex))
				
				ActivateDigSite(areaId, depth, siteIndex)
				
				break
			end
		end
	end
end

library.GetActiveDigSitesNearPosition = function (areaId, position, filters)
	assert(areas[areaId] ~= nil)
	
	local sites = {}
	
	local sqRadius = filters.radius * filters.radius

	for _, depth in ipairs(areas[areaId].depths) do
		if filters.maxDepth == nil or filters.maxDepth >= depth.depth then
			for i = 1, depth.digSiteCount, 1 do
				if IsDigSiteActive(areaId, depth.depth, i) then
					local digSiteObject = GetDigSite(areaId, depth.depth, i)
					
					local passesFilters = true
					
					if filters.radius ~= nil then
						local sqDistanceToSite = (position - digSiteObject:GetWorldPosition()).sizeSquared
						if sqDistanceToSite > sqRadius then
							passesFilters = false
						end
					end

					if passesFilters then
						local site = {}					
	
						site.areaIndex = areaIdToIndex[areaId]
						site.depthRelativeIndex = i
						site.position = digSiteObject:GetWorldPosition()
						site.depth = depth.depth
						site.size = GetDigSiteSize(digSiteObject)
						
						table.insert(sites, site)
					end
				end
			end
		end
	end
	
	return sites
end

library.GetNearestDigSite = function (areaId, position, filters)	
	local nearestSite = nil
	local nearestSqDistance = math.huge
	
	local sqRadius = filters.radius * filters.radius
	
	if areas[areaId] ~= nil then
		for _, depth in ipairs(areas[areaId].depths) do
			if filters.maxDepth == nil or filters.maxDepth >= depth.depth then
				for i = 1, depth.digSiteCount, 1 do
					if IsDigSiteActive(areaId, depth.depth, i) then
						local digSiteObject = GetDigSite(areaId, depth.depth, i)
						local digSitePosition = digSiteObject:GetWorldPosition()
					
						-- is it nearer than our current nearest site
						local sqDistanceToSite = (position - digSitePosition).sizeSquared
						if sqDistanceToSite < nearestSqDistance then
							local passesFilters = true
							
							-- check radius filter
							if filters.radius ~= nil and sqDistanceToSite > sqRadius then
								passesFilters = false
							end
							
							if passesFilters then
								nearestSite = { area = areaId, depthRelativeIndex = i, depth = depth.depth }
								nearestSqDistance = sqDistanceToSite
							end
						end
					end
				end
			end
		end
	end
	
	if nearestSite ~= nil then
		-- package up for consumption
		local bestSiteObject = GetDigSite(nearestSite.area, nearestSite.depth, nearestSite.depthRelativeIndex)
		local resultSite = {
			areaIndex = areaIdToIndex[nearestSite.area],
			depthRelativeIndex = nearestSite.depthRelativeIndex,
			position = bestSiteObject:GetWorldPosition(),
			depth = nearestSite.depth,
			size = GetDigSiteSize(bestSiteObject)
		}
		return resultSite, math.sqrt(nearestSqDistance)
	else
		return nil, math.huge
	end
end

library.ClaimDigSite = function (digSiteProps)
	if digSiteProps ~= nil then
		local areaId = areaIndexToId[digSiteProps.areaIndex]
		if IsDigSiteActive(areaId, digSiteProps.depth, digSiteProps.depthRelativeIndex) then
			DeactivateDigSite(areaId, digSiteProps.depth, digSiteProps.depthRelativeIndex)

			local excludeIndex = digSiteProps.depthRelativeIndex
			library.ActivateRandomDigSite(areaId, digSiteProps.depth, excludeIndex)
			
			return true
		end
	end
	
	return false
end

return library