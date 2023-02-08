local API = {}

function API.RegisterFarm(id, functionTable)
	if not _G.APIFarms then
		_G.APIFarms = {}
	end

	if _G.APIFarms[id] then
		warn(string.format("Registering farms with id: %s twice", id))
	end

	_G.APIFarms[id] = functionTable
end

-- Returns ids of all farms
function API.GetFarms()
	local result = {}

	if _G.APIFarms then
		for id, _ in pairs(_G.APIFarms) do
			table.insert(result, id)
		end
	end

	return result
end

-- [Server]
function API.SetFarmOwner(id, player)
	if _G.APIFarms and _G.APIFarms[id] then
		_G.APIFarms[id].SetFarmOwner(player)
	end
end

-- [Server, Client]
function API.FindOwnersFarm(player)
    if _G.APIFarms then
		for id, farm in pairs(_G.APIFarms) do
            if farm.GetState().farmOwner == player then
                return id
            end
		end
    end
    return nil
end

-- [Server, Client]
function API.GetFarmState(id)
	if _G.APIFarms and _G.APIFarms[id] then
		return _G.APIFarms[id].GetState()
	end

	return nil
end

-- [Client]
function API.GetServerCustomProperty(id, property)
	if _G.APIFarms and _G.APIFarms[id] then
		return _G.APIFarms[id].GetServerCustomProperty(property)
	end

	return nil
end

-- [Client]
function API.GetServerScript(id)
	if _G.APIFarms and _G.APIFarms[id] then
		return _G.APIFarms[id].GetServerScript()
	end

	return nil
end

-- [Server]
function API.ResetFarm(id)
	if _G.APIFarms and _G.APIFarms[id] then
		_G.APIFarms[id].Reset()
	end
end

return API