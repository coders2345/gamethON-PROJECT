local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local AREAS_ROOT = script:GetCustomProperty("AreasRoot"):WaitForObject()

Task.Wait(1)

for _, areaRoot in ipairs(AREAS_ROOT:GetChildren()) do
Task.Wait()
	local areaId = areaRoot:GetCustomProperty("AreaID")

	local areaActiveSpawnPoints = FISH_SITE_LIBRARY.GetActiveSpawnPointsPerArea(areaId)

	-- init active fish sites
    for i = 1, areaActiveSpawnPoints, 1 do
        FISH_SITE_LIBRARY.ActivateRandomSpawnPoint(areaId)
        i = i + 1
    end
end