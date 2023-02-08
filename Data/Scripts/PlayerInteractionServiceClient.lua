
-- Assumes client actions will only need to be handled by the owning player
-- (Things like camera changes, local UIs, etc)
-- In general, effects that should be apparent to all players should be handled
-- by server actions and replicated to handle late joiners

local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))

function HandleBeginPlayerInteraction(prevInteractionId, newInteractionId, metaData)
	local localPlayer = Game.GetLocalPlayer()
	
	if localPlayer == nil then error("Failed to find local player!") return end
	
	-- validate
	
	-- stop previous interaction
	if prevInteractionId > 0 then
		local prevInteraction = require(INTERACTION_LIBRARY[prevInteractionId])
		
		prevInteraction.ClientStopInteraction(localPlayer)
	end
	
	-- start new interaction
	local newInteraction = require(INTERACTION_LIBRARY[newInteractionId])
	
	newInteraction.ClientStartInteraction(localPlayer, metaData)
end

Events.Connect("BPI", HandleBeginPlayerInteraction)