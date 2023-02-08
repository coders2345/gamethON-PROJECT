local propIconGlow = script:GetCustomProperty("IconGlow"):WaitForObject()
local propGrapes = script:GetCustomProperty("Grapes"):WaitForObject()


function OnHovered(whichButton)
	propIconGlow.visibility = Visibility.FORCE_ON
end

function OnUnhovered(whichButton)
	propIconGlow.visibility = Visibility.FORCE_OFF
end


propGrapes.hoveredEvent:Connect(OnHovered)
propGrapes.unhoveredEvent:Connect(OnUnhovered)