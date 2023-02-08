local propPointConstraintTarget = script:GetCustomProperty("PointConstraintTarget"):WaitForObject()
local root = script.parent

function Tick(deltaTime)	
	root:SetWorldPosition(propPointConstraintTarget:GetWorldPosition())
end

