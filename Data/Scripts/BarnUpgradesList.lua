local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))

barnLevelUpgrades = {
}

function GetBarnCost(level)
    local lastCost = 10

	if level < 2 then
		return 0
	elseif level == 2 then
		return lastCost
	else
		for i = 3, level do
			lastCost = lastCost * 2
		end
		return lastCost
	end
end

for i = 1, 20, 1 do
    table.insert(barnLevelUpgrades,
    {
        notificationTitle = "Barn Level " .. tostring(i),
        notificationDescription = "Your Barn Upgraded to Level " .. tostring(i),

        -- consume stat values gets deducted from their current value
        consumeStat =
        {
            ["Money"] = API_BARN_STORAGE.GetBarnCost(i)
        },
    }
    )
end

-- meta data
barnLevelUpgrades[1].metaData = {
    disableNotification = true
}

return barnLevelUpgrades