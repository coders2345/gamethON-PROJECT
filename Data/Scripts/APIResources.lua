--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local API = {}

-- nil RegisterResourceManager(table) [Client, Server]
function API.RegisterResourceManager(functionTable, baseStats)
	if _G.APIResources then
		error("A game cannot have resource managers.")
    end
	_G.APIResources = functionTable

	API.BASE_DAMAGE = baseStats.BASE_DAMAGE
    API.BASE_MAX_HP = baseStats.BASE_MAX_HP
    API.BASE_WALK_SPEED = baseStats.BASE_WALK_SPEED
    API.DAMAGE_RESOURCE = baseStats.DAMAGE_RESOURCE
    API.MAX_HP_RESOURCE = baseStats.MAX_HP_RESOURCE
    API.SPEED_RESOURCE = baseStats.SPEED_RESOURCE
end

-- bool IsResourceManagerRegistered() [Client, Server]
function API.IsResourceManagerRegistered()
	if _G.APIResources then
		return true
    end
	return false
end

-- table GetResourceInfo(string) [Client, Server]
function API.GetResourceInfo(resource)
	if not _G.APIResources then
		warn("Cannot get the resource info without resource manager registered.")
		return nil
	end

	return _G.APIResources.GetResourceInfo(resource)
end

-- number, number, number GetResourceTier(string) [Client, Server]
function API.GetResourceTier(resource, amount)
	if not _G.APIResources then
		warn("Cannot get the resource tier without resource manager registered.")
		return nil
	end

	return _G.APIResources.GetResourceTier(resource, amount)
end

-- table GetDamageValue(int) [Client, Server]
function API.GetDamageValue(amount)
	if amount == 0 then
        return API.BASE_DAMAGE, 0
    end
	local newAmount = math.ceil(.4 * math.log(amount ^ 21, 10))
    return API.BASE_DAMAGE + newAmount, newAmount
end

-- table GetMaxWalkSpeed(int) [Client, Server]
function API.GetMaxHP(amount)
    if amount == 0 then
        return API.BASE_MAX_HP, 0
	end
	local newAmount = math.ceil(amount / 2)
    return math.ceil(API.BASE_MAX_HP + newAmount), newAmount
end

-- table GetMaxWalkSpeed(int) [Client, Server]
function API.GetMaxWalkSpeed(amount)
    if amount == 0 then
        return API.BASE_WALK_SPEED, 0
    end
    local newAmount = math.ceil(3 * math.log(amount ^ 15, 10))
    return API.BASE_WALK_SPEED + newAmount, newAmount
end

-- table ClearResources(Player) [Server]
function API.ClearResources(player)
	if not _G.APIResources then
		warn("Cannot clear player resources without resource manager registered.")
		return nil
	end

	return _G.APIResources.ClearResources(player)
end

return API