
local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))

local ROOT = script:GetCustomProperty("AreaRoot"):WaitForObject()

DIG_SITE_LIBRARY.RegisterDigArea(ROOT)