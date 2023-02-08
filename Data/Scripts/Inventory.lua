local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local ORDERED_TABLE = require(script:GetCustomProperty("OrderedTable"))

local BACKPACK_ICON = script:GetCustomProperty("BackpackIcon")
local ITEM_ICON = script:GetCustomProperty("ItemIcon")
local FISH_ICON = script:GetCustomProperty("FishIcon")

local inventory = {}
local items = ORDERED_TABLE.new()

--[[
    limit = -1 -> unlimited
]]
function AddInvItem(inId, inLimit)
    items[inId] = {
        limit = inLimit
    }
end

for itemId, properties in pairs(ITEM_LIBRARY.GetAllItems()) do
    AddInvItem(itemId, -1)
end

inventory.GetAllItems = function (player)
    local playerInventory = ORDERED_TABLE.new()
    for itemId, _ in pairs(items) do
        local itemCount = player:GetResource(itemId)
        if itemCount > 0 then
            playerInventory[itemId] = itemCount
        end
    end
    return playerInventory
end


inventory.GetItemsCount = function (player)
    local totalCount = 0
    for _, count in pairs(inventory.GetAllItems(player)) do
        totalCount = totalCount + count
    end
    return totalCount
end

inventory.GetItem = function (player, itemId)
    if items[itemId] then
        return player:GetResource(itemId)
    end
    return nil
end

inventory.AddItem = function (player, itemId, value)
    if not value then value = 1 end
    if value < 0 then
        error("If attempting to remove items use function RemoveItem(player, itemId, value) instead.")
    end
    -- do not allow adding negative values
    value = math.abs(value)
    if items[itemId] then
        local currentValue = player:GetResource(itemId)
        local newValue = currentValue + value
        if items[itemId].limit > 0 then
            -- limit reached
            if newValue > items[itemId].limit then
                return false
            end
        end
        player:SetResource(itemId, newValue)
        return true
    else
        warn("Item id: " .. tostring(itemId) .. " not in inventory items list")
    end
    return false
end

inventory.RemoveItem = function (player, itemId, value)
    if not value then value = 1 end
    if value < 0 then
        error("If attempting to add items use function AddItem(player, itemId, value) instead.")
    end
    value = math.abs(value)
    if items[itemId] then
        local currentValue = player:GetResource(itemId)
        local newValue = math.max(0, currentValue - value)
        player:SetResource(itemId, newValue)
        return true
    end
    return false
end

inventory.GetDebugInventory = function ()
    local debugInventory = ORDERED_TABLE.new()
    for itemId, _ in pairs(items) do
        debugInventory[itemId] = 0
    end
    return debugInventory
end

-- count of all possible unique items
inventory.GetInventoryItemListCount = function ()
    local count = 0
    for k, v in pairs(items) do
        count = count + 1
    end
    return count
end

--[[ Get icons functions ]]
inventory.GetBackpackIcon = function ()
    return BACKPACK_ICON
end
inventory.GetItemIcon = function ()
    return ITEM_ICON
end
inventory.GetFishIcon = function ()
    return FISH_ICON
end

return inventory, items