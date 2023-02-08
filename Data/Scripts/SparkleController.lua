local ANL = require(script:GetCustomProperty("APINamedLocation"))

local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))
local STATS = require(script:GetCustomProperty("StatsLibrary"))

local SPARKLE_REF = script:GetCustomProperty("Sparkle")
local DRAW_DEBUG_SPARKLES = script:GetCustomProperty("DrawDebugSparkles")

local playerData = {}

function GetAreaForPlayer(player)
	local locationProps = ANL.GetPlayerLocation(player)
	if locationProps ~= nil then
		return locationProps.id
	end
	
	return "TEST"
end

local DEBUG = false
local function log(msg)
	if DEBUG then
		print(msg)
	end
end

local function CreateSparkle(sparkleTable, spawnPosition)
	local sparkle = World.SpawnAsset(SPARKLE_REF, { position = spawnPosition, parent = script })
	
	sparkleTable[spawnPosition] = sparkle
end

local function StopVfxInHierarchy(root)
	if Object.IsValid(root) then
		if root:IsA('Vfx') then
			root:Stop()
		end
		
		for _, child in ipairs(root:GetChildren()) do
			StopVfxInHierarchy(child)
		end
	end
end

local function DestroySparkle(sparkleTable, position)
log("Destroy at " .. tostring(position))
	local sparkle = sparkleTable[position]
	
	sparkleTable[position] = nil
	
	if Object.IsValid(sparkle) then
		StopVfxInHierarchy(sparkle)
		
		Task.Spawn(function() sparkle:Destroy() end, 1)
	end
end

local function RefreshSparkles(player)
	if Object.IsValid(player) then
		local areaId = GetAreaForPlayer(player)
print("Refresh area " .. areaId)
		local radius = 99999--STATS.GetStat(player, "DetectionRadius")
		local maxDepth = 10--STATS.GetStat(player, "DetectionMaxDepth")
		local playerPosition = player:GetWorldPosition()

		local digSites = DIG_SITE_LIBRARY.GetActiveDigSitesNearPosition(areaId, playerPosition, { radius = radius, maxDepth = maxDepth })

		local toKill = {}
		for position, sparkle in pairs(playerData[player].sparkles) do
			local found = false
			for _, digSite in ipairs(digSites) do
				if position == digSite.position then
					found = true
					break
				end
			end
			
			if not found then
				log("Add to kill list " .. tostring(position))
				table.insert(toKill, position)
			end
		end
		
		local toCreate = {}
		for _, digSite in ipairs(digSites) do
			local found = false
			for position, sparkle in pairs(playerData[player].sparkles) do
				if digSite.position == position then
					found = true
					break
				end
			end
			
			if not found then
				log("Add to create list " .. tostring(digSite.position))
				table.insert(toCreate, digSite.position)
			end
		end
		
		for _, killPosition in ipairs(toKill) do
			DestroySparkle(playerData[player].sparkles, killPosition)
		end
		for _, createPosition in ipairs(toCreate) do
			CreateSparkle(playerData[player].sparkles, createPosition)
		end
		
--[[	log("Current sparkle table:")
		for pos,sparkle in pairs(playerData[player].sparkles) do
			log("   " .. tostring(pos) .. " -> " .. tostring(playerData[player].sparkles[pos]))
		end--]]
	end
end

function DisplaySparklesForPlayer(player)
	playerData[player] = {}

	playerData[player].sparkles = {}
	playerData[player].refreshSparkleTask = Task.Spawn(function () RefreshSparkles(player) end)
	playerData[player].refreshSparkleTask.repeatCount = -1
	playerData[player].refreshSparkleTask.repeatInterval = .5
end

function HideSparklesForPlayer(player)
	playerData[player].refreshSparkleTask:Cancel()
	
	for position, sparkle in pairs(playerData[player].sparkles) do
		DestroySparkle(playerData[player].sparkles, position)
	end

	playerData[player] = nil
end

function HandleStartMetalDetection()
	DisplaySparklesForPlayer(Game.GetLocalPlayer())
end

function HandleStopMetalDetection()
	HideSparklesForPlayer(Game.GetLocalPlayer())
end

if DRAW_DEBUG_SPARKLES then
	Events.Connect("StartMetalDetection", HandleStartMetalDetection)
	Events.Connect("StopMetalDetection", HandleStopMetalDetection)
end
