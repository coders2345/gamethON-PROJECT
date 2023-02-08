--[[
	This API has collection of functions used by many scripts to check for
	players' insta grow daily rewards.
	Mainly used in client context to grant rewards.
--]]

local API = {}

function API.RegisterManager(functionTable)
	if not _G.APIInstaGrow then
		_G.APIInstaGrow = {}
	end

	_G.APIInstaGrow = functionTable
end

-- table GetStats() [Client]
-- Returns the table of daily insta grow reward stats
function API.GetStats()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.GetStats()
	end

	return nil
end

-- int GetRewardAmount() [Client]
-- Returns the amount based on player's membership
function API.GetRewardAmount()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.GetRewardAmount()
	end

	return nil
end

-- float GetProgress() [Client]
-- Returns the time that passed since last time player claimed the reward
function API.GetProgress()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.GetProgress()
	end

	return nil
end

-- table GetBundles() [Client]
-- Returns the table of insta grow bundles
function API.GetBundles()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.GetBundles()
	end

	return nil
end

-- float GetRemainingTime() [Client]
-- Returns the remaining time that's left for player to claim the reward
function API.GetRemainingTime()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.GetRemainingTime()
	end

	return nil
end

-- bool IsReadyToClaim() [Client]
-- Whether or not the daily reward ready to be claimed
function API.IsReadyToClaim()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.IsReadyToClaim()
	end

	return nil
end

-- nil GetRemainingTime() [Client]
-- Update the tracking for the last client time
function API.UpdateClientTime()
	if _G.APIInstaGrow then
		return _G.APIInstaGrow.UpdateClientTime()
	end
end

return API