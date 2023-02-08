local fireflies = script.parent


function Dawn()
	fireflies:Stop()
end

function Noon()
	fireflies:Stop()
end

function Midnight()
	fireflies:Stop()
end

function Dusk()
	fireflies:Play()
end


Events.Connect("Dawn", Dawn)
Events.Connect("Noon", Noon)
Events.Connect("Dusk", Dusk)
Events.Connect("Midnight", Midnight)