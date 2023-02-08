local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local FISH_CONTROLLER = script:GetCustomProperty("FishControllerAsset")

local library = {}

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
	end
end

local waters = {}
local fishes = {}
local areas = {}
local areaIndexToId = {}

library.RegisterWater = function(water)
	table.insert(waters, water)
end

library.RegisterFishingArea = function (areaRoot)
	local area = {}

	area.id = areaRoot:GetCustomProperty("AreaID")
	area.activeSpawnPointsPerArea = areaRoot:GetCustomProperty("ActiveSpawnPointsPerArea")
	area.spawnPointsRoot = areaRoot:GetCustomProperty("SpawnPointsRoot"):WaitForObject()

	area.spawnPoints = {}
	for _, spawnRoot in ipairs(area.spawnPointsRoot:GetChildren()) do
		local spawnPoint = {}

		spawnPoint.areaId = area.id
		spawnPoint.root = spawnRoot
		spawnPoint.isActive = false

		table.insert(area.spawnPoints, spawnPoint)
	end

	areas[area.id] = area

	table.insert(areaIndexToId, area.id)
end

function SetSpawnPointActive (areaId, spawnPointIndex, isActive)
	local area = areas[areaId]

	local spawnPoint = area.spawnPoints[spawnPointIndex]
	spawnPoint.isActive = isActive
	if isActive then
		if Object.IsValid(spawnPoint.currentFish) then
			spawnPoint.currentFish:Destroy()
			spawnPoint.currentFish = nil
		end
		local filter = {
			areaId = areaId
		}
		local rng = RandomStream.New(math.random(0,100))
		spawnPoint.currentFish = World.SpawnAsset(FISH_CONTROLLER, {parent = spawnPoint.root})
		spawnPoint.currentFish.clientUserData.areaId = areaId
		spawnPoint.currentFish.clientUserData.spawnPointIndex = spawnPointIndex
		_, spawnPoint.currentFish.clientUserData.fishId = ITEM_LIBRARY.GetRandomItemForFilter(filter, rng)
		table.insert(fishes, spawnPoint.currentFish)
	else
		if Object.IsValid(spawnPoint.currentFish) then
			for index, fish in ipairs(fishes) do
				if fish == spawnPoint.currentFish then
					table.remove(fishes, index)
					break
				end
			end
			spawnPoint.currentFish:Destroy()
			spawnPoint.currentFish = nil
		end
	end
end

function ActivateSpawnPoint(areaId, spawnPointIndex)
	log("ActivateSpawnPoint " .. areaId .. " " .. tostring(spawnPointIndex))
	SetSpawnPointActive (areaId, spawnPointIndex, true)
end

function DeactivateSpawnPoint(areaId, spawnPointIndex)
	log("DeactivateSpawnPoint " .. areaId .. " " .. tostring(spawnPointIndex))
	SetSpawnPointActive (areaId, spawnPointIndex, false)
end

function GetSpawnPointsCount(areaId)
	if areas[areaId] ~= nil then
		return #areas[areaId].spawnPoints
	end
	return 0
end

function IsSpawnPointActive(areaId, spawnPointIndex)
	if areas[areaId] ~= nil then
		local area = areas[areaId]
		if area.spawnPoints[spawnPointIndex] then
			return area.spawnPoints[spawnPointIndex].isActive
		end
	end
	return false
end

library.ActivateRandomSpawnPoint = function (areaId, excludeIndex)
	log("ActivateRandomSpawnPoint for " .. areaId)

	if areas[areaId] ~= nil then

		-- find a random inactive site
		while true do
			local areaPointsCount = GetSpawnPointsCount(areaId)
			local spawnPointIndex = math.random(1, areaPointsCount)

			if spawnPointIndex ~= excludeIndex
			and not IsSpawnPointActive(areaId, spawnPointIndex) then
				log("Activate " .. areaId .. ":" .. tostring(spawnPointIndex))

				ActivateSpawnPoint(areaId, spawnPointIndex)
				break
			end
		end
	end
end

library.GetActiveSpawnPointsPerArea = function (areaId)
	if areas[areaId] ~= nil then
		return areas[areaId].activeSpawnPointsPerArea
	end

	return 0
end

library.ClaimFish = function (fishProps)
	if fishProps ~= nil then
		local areaId = fishProps.areaId
		if IsSpawnPointActive(areaId, fishProps.spawnPointIndex) then
			DeactivateSpawnPoint(areaId, fishProps.spawnPointIndex)

			local excludeIndex = fishProps.depthRelativeIndex
			library.ActivateRandomSpawnPoint(areaId, fishProps.depth, excludeIndex)

			return true
		end
	end

	return false
end

-- This assumes every water registered is an "Underwater Post Process". Fish can be any object with a position.
-- This assumes we hit the top of the water, and returns nil if the point passed in is not inside water
library.GetCollisionPointWithWater = function(point)
	for _, water in pairs(waters) do
		local waterTransform = water:GetWorldTransform()
		local localSpacePoint = waterTransform:GetInverse():TransformPosition(point)
		local scale = water:GetWorldScale()

		if localSpacePoint.x <= 50.0 and localSpacePoint.x >= -50.0 then
			if localSpacePoint.y <= 50.0 and localSpacePoint.y >= -50.0 then
				if localSpacePoint.z <= 0.0 and localSpacePoint.z >= -100.0 then
					local result = localSpacePoint
					result.z = 0.0
					return waterTransform:TransformPosition(result)
				end
			end
		end
	end
end

library.GetClosestFish = function(position, filters)
	local result = nil
	local closestDistance = math.huge
	for _, fish in ipairs(fishes) do
		if Object.IsValid(fish) then
			local distance = (position - fish:GetWorldPosition()).size
			if distance < filters.radius and distance < closestDistance then
				closestDistance = distance
				result = fish
			end
		end
	end
	return result
end

return library