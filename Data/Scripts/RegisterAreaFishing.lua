local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

FISH_SITE_LIBRARY.RegisterFishingArea(ROOT)