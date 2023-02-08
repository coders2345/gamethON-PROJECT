function Tick()

	for k,p in pairs(Game.GetPlayers()) do
	
		if p:GetWorldPosition().z < -300 then
			p:SetWorldPosition(script:GetWorldPosition())
		end
	end

	Task.Wait(2)

end