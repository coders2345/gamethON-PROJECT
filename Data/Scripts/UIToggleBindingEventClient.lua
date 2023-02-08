local propBinding = script:GetCustomProperty("Binding")
local propUniqueID = script:GetCustomProperty("UniqueID")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local canToggle = true


function OnBindingPressed(whichPlayer, binding)
	if (binding == propBinding) and whichPlayer == LOCAL_PLAYER then
		Events.Broadcast("ToggleUI", propUniqueID, canToggle)
		_G.AnalyticsFacade.BindingToggle(LOCAL_PLAYER, propUniqueID)
	end
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
		if toggle then
			canToggle = false
		else
			canToggle = true
		end
	else
		canToggle = true
	end
end

Events.Connect("ToggleUI", OnToggleUI)

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)