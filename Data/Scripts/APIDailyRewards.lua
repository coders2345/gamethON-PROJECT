local API = {}

function API.RegisterManager(functionTable)
	if not _G.APIDailyRewards then
		_G.APIDailyRewards = {}
	end

	_G.APIDailyRewards = functionTable
end

function API.GetStats()
	if _G.APIDailyRewards then
		return _G.APIDailyRewards.GetStats()
	end

	return nil
end

function API.GetProgress()
	if _G.APIDailyRewards then
		return _G.APIDailyRewards.GetProgress()
	end

	return nil
end

function API.GetRemainingTime()
	if _G.APIDailyRewards then
		return _G.APIDailyRewards.GetRemainingTime()
	end

	return nil
end

function API.IsReadyToClaim()
	if _G.APIDailyRewards then
		return _G.APIDailyRewards.IsReadyToClaim()
	end

	return nil
end

function API.UpdateClientTime()
	if _G.APIDailyRewards then
		return _G.APIDailyRewards.UpdateClientTime()
	end
end

return API