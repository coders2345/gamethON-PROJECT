
local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))

local AREAS_ROOT = script:GetCustomProperty("AreasRoot"):WaitForObject()

function ActivateRandomDigSite(areaId, depth)
	DIG_SITE_LIBRARY.ActivateRandomDigSite(areaId, depth)
end

Task.Wait(.1)

for _, areaRoot in ipairs(AREAS_ROOT:GetChildren()) do
Task.Wait()

	local areaId = areaRoot:GetCustomProperty("AreaID")
	
	local areaActiveSitesPerDepth = DIG_SITE_LIBRARY.GetActiveSitesPerDepthForArea(areaId)
	local availableDepths = DIG_SITE_LIBRARY.GetDepthsForArea(areaId)

	-- init active dig sites
	for _, depth in ipairs(availableDepths) do
		for count = 1, areaActiveSitesPerDepth, 1 do
			ActivateRandomDigSite(areaId, depth)
			
			count = count + 1
		end
	end
end