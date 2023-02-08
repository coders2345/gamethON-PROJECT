local parent = script.parent
local propUniqueID = script:GetCustomProperty("UniqueID")
local openSound = script:GetCustomProperty("OpenSound")
local closeSound = script:GetCustomProperty("CloseSound")

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
		if toggle then
			parent.visibility = Visibility.INHERIT
            if openSound then
                World.SpawnAsset(openSound)
            end
		else
			parent.visibility = Visibility.FORCE_OFF
            if closeSound then
                World.SpawnAsset(closeSound)
            end
        end
        SetUIInteraction(toggle)
    else
        parent.visibility = Visibility.FORCE_OFF
	end
end

Events.Connect("ToggleUI", OnToggleUI)
parent.visibility = Visibility.FORCE_OFF