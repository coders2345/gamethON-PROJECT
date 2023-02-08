--[[
	This API has collection of functions used by many scripts to check for
	players' memberships.
--]]

local API = {}

-- API defined types of benefits
-- These are also set in MembershipManager scripts
API.CROP_SELL_BONUS = 0
API.FISH_SELL_BONUS = 1
API.ITEM_SELL_BONUS = 2
API.BARN_DISCOUNT = 3
API.BACKPACK_DISCOUNT = 4
API.MOUNT_DISCOUNT = 5
API.LAND_DISCOUNT = 6

-- nil RegisterMembership(table) [Server, Client]
-- Register manager - only once per context
function API.RegisterMembership(functionTable)
	if not _G.APIMembership then
		_G.APIMembership = {}
	end

	_G.APIMembership = functionTable
end

-- bool IsRegistered() [Server, Client]
-- Check if this manager is registered to use this API in the context
function API.IsRegistered()
	if not _G.APIMembership then
		return false
    end
    return true
end

-- int GetMaxMembersBonus() [Server, Client]
-- Returns the number of max players that can server boost
function API.GetMaxMembersBonus()
	if not _G.APIMembership then
		return _G.APIMembership.GetMaxMembersBonus()
    end
    return 4
end

-- <bool, NetReference> IsPlayerMember(Player) [Server, Client]
-- Check if the specified player is member
function API.IsPlayerMember(player)
	if _G.APIMembership then
		return _G.APIMembership.IsPlayerMember(player)
	end

	return nil
end

-- table<Players> GetMembers() [Server, Client]
-- Get table of VIP members
function API.GetMembers()
	if _G.APIMembership then
		return _G.APIMembership.GetMembers()
	end

	return {}
end

-- <bool, NetReference> HasPromoMembership(Player) [Server, Client]
-- Check if the specified player is a promo member
function API.HasPromoMembership(player)
	if _G.APIMembership then
		return _G.APIMembership.HasPromoMembership(player)
	end

	return nil
end

-- bool IsResourceValidForDiscount(string) [Server, Client]
-- Check if the received resource is valid for discount
-- This is specific for the game
function API.IsResourceValidForDiscount(resource)
	if resource == "BarnLevel" then
		return true, API.BARN_DISCOUNT
	elseif resource == "BackpackLevel" then
		return true, API.BACKPACK_DISCOUNT
	elseif resource == "StableLevel" then
		return true, API.MOUNT_DISCOUNT
	end

	return false
end

-- float GetSellBonus(int) [Server, Client]
-- Returns either the dicount or sell bonus based on provided int
function API.GetSellBonus(sellType)
    if _G.APIMembership then
        return _G.APIMembership.GetSellBonus(sellType)
    end

    return nil
end

return API