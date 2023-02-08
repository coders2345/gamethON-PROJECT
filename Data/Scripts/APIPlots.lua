local API = {}

-- [Server]
function API.RegisterPlot(id, functionTable)
	if not _G.APIPlots then
		_G.APIPlots = {}
	end

	if _G.APIPlots[id] then
		warn(string.format("Registering plot with id: %s twice", id))
	end

	_G.APIPlots[id] = functionTable
end

-- [Server, Client]
function API.GetFarmPlots(player)
	local result = {}

	if _G.APIPlots then
		for id, plot in pairs(_G.APIPlots) do
			if plot.plotOwner == player then
				table.insert(result, id)
			end
		end
	end

	return result
end

-- [Server, Client]
function API.GetFarmAvailablePlots(player)
	local result = {}

	if _G.APIPlots then
		for id, plot in pairs(_G.APIPlots) do
			if plot.plotOwner == player and plot.isAvailable then
				table.insert(result, id)
			end
		end
	end

	return result
end

-- [Server]
function API.SetPlotInfo(id, farmId, plotIndex, player)
	if _G.APIPlots and _G.APIPlots[id] then
		_G.APIPlots[id].SetPlotInfo(farmId, plotIndex, player)
	end
end

-- [Server, Client]
function API.GetPlotState(id)
	if _G.APIPlots and _G.APIPlots[id] then
		return _G.APIPlots[id].GetState()
	end

	return nil
end

-- [Server, Client]
function API.GetPlotCost(plotIndex)
	local lastCost = 10

	if plotIndex < 5 then
		return 0
	elseif plotIndex == 5 then
		return lastCost
	else
		for i = 6, plotIndex do
			lastCost = math.floor((1.2 * lastCost) + (0.1* lastCost) ^ 1.01)
		end
		return lastCost
	end
end

-- [Server]
function API.ResetPlot(id)
	if _G.APIPlots and _G.APIPlots[id] then
		_G.APIPlots[id].Reset()
	end
end

return API