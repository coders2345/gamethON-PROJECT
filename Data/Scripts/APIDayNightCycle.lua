local API = {}

-- [Server, Client]
function API.RegisterDayNightCycle(functionTable)
	if not _G.APIDayNightCycle then
		_G.APIDayNightCycle = {}
	end

	_G.APIDayNightCycle = functionTable
end

-- [Server, Client]
function API.GetCycleState()
    if _G.APIDayNightCycle then
		return _G.APIDayNightCycle.GetState()
	end

	return nil
end

-- [Client]
function API.GetDayCycleTime()
    if _G.APIDayNightCycle then
		return _G.APIDayNightCycle.GetDayCycleTime()
	end

	return nil
end

return API