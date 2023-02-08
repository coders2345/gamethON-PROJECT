local equip = script.parent
local isVisible = true

function Tick()
	if equip.owner and isVisible and (equip.owner.isMounted or equip.owner.isSwimming) then
		equip.visibility = Visibility.FORCE_OFF
		isVisible = false
	end
	
	if equip.owner and not isVisible and not (equip.owner.isMounted or equip.owner.isSwimming) then
		equip.visibility = Visibility.FORCE_ON
		isVisible = true
	end

end