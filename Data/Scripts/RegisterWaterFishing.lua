local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local WATER = script:GetCustomProperty("Water"):WaitForObject()

FISH_SITE_LIBRARY.RegisterWater(WATER)
