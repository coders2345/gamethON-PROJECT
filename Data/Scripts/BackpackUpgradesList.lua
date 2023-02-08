local backpackLevelUpgrades = {}
local PRICE_INCREMENT = 1000
local FIRST_UPGRADE_PRICE = 1000
local START_CAPACITY = 10

local function GetUpgradeCostImpl(level)
    if level == 1 then
		return 0
    elseif level == 2 then
		return FIRST_UPGRADE_PRICE
    else
        local n = level - 1
		return math.floor((GetUpgradeCostImpl(n) * 1.35) + PRICE_INCREMENT)
	end
end

local function GetCapacityImpl(level)
    if level <= 1 then
        return START_CAPACITY
    else
        return GetCapacityImpl(level - 1) + 2
    end
end

local backpackHelper = {}

backpackHelper.GetUpgradeCost = function (level)
    return GetUpgradeCostImpl(level)
end

backpackHelper.GetCapacity = function (level)
    return GetCapacityImpl(level)
end

for i = 1, 21, 1 do
    table.insert(backpackLevelUpgrades,
    {
        notificationTitle = "Backpack Level " .. tostring(i),
        notificationDescription = "Your Backpack Upgraded to Level " .. tostring(i),

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            Money = GetUpgradeCostImpl(i)
        },
    }
    )
end

backpackLevelUpgrades[1].metaData = {
    disableNotification = true
}
-- for i = 1, 21, 1 do
--     print("Level: " .. tostring(i) .. " Capacity: " .. tostring(GetCapacityImpl(i)) .. " Cost: " .. tostring(GetUpgradeCostImpl(i)))
-- end

return backpackLevelUpgrades, backpackHelper