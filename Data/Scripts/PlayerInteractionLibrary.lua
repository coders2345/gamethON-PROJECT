
local library = {}

library.RESOURCE_ID = "CurrentInteractionId"

library.DEFAULT = 1
library.DETECT = 2
library.DIG = 3
library.INVENTORY = 4
library.FISHING = 5
library.FISHING_CAST = 6
library.FISHING_PULL = 7

library[library.DEFAULT] = "873807B429279F83:PI_Default"
library[library.DETECT] = "325D5D56ACA3C295:PI_Detect"
library[library.DIG] = "08290CCD598B69CC:PI_Dig"
library[library.INVENTORY] = "4FB6498EDBE3A2DE:PI_Inventory"
library[library.FISHING] = "7B5174285638D10A:PI_Fishing"
library[library.FISHING_CAST] = "4FEACF883FD5887F:PI_Fishing_Cast"
library[library.FISHING_PULL] = "BB552232078E2D0E:PI_Fishing_Pull"

library.GetCurrentPlayerInteraction = function (player)
	if Object.IsValid(player) then
		return player:GetResource(library.RESOURCE_ID)
	end

	return library.DEFAULT
end

return library