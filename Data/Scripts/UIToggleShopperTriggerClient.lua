local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))

local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()
local propUniqueID = script:GetCustomProperty("UniqueID")
local propShopperCamera = script:GetCustomProperty("ShopperCamera"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnInteracted(_, other)
	if other:IsA("Player") and other == LOCAL_PLAYER then
		Events.BroadcastToServer("RequestInteraction", other, INTERACTION_LIBRARY.DEFAULT)
		Events.Broadcast("ToggleUI", propUniqueID, true)
	end
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
		if toggle then
			propTrigger.isInteractable = false
			LOCAL_PLAYER:SetOverrideCamera(propShopperCamera, .35)
		else
			if LOCAL_PLAYER:GetActiveCamera() == propShopperCamera then
				LOCAL_PLAYER:ClearOverrideCamera()
			end
			propTrigger.isInteractable = true
		end
	else
		if LOCAL_PLAYER:GetActiveCamera() == propShopperCamera then
			LOCAL_PLAYER:ClearOverrideCamera()
		end
		if toggle then
			propTrigger.isInteractable = false
		else
			propTrigger.isInteractable = true
		end
	end
end

Events.Connect("ToggleUI", OnToggleUI)
propTrigger.interactedEvent:Connect(OnInteracted)