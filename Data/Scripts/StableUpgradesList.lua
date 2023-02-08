stableUpgrades = {
}

function GetStableCost(level)
    local lastCost = 500

	if level < 2 then
		return 0
	elseif level == 2 then
		return lastCost
	else
        for i = 3, level do
            lastCost = lastCost * 2
		end
		return math.ceil(lastCost)
	end
end

function GetStableSpeed(level)
    local lastSpeed = 1200

	if level < 2 then
		return lastSpeed
	else
        for i = 2, level do
            lastSpeed = lastSpeed + 150
		end
		return lastSpeed
	end
end

function GetStableAcceleration(level)
    local lastAccel = 2000

	if level < 2 then
		return lastAccel
	else
        for i = 2, level do
            lastAccel = lastAccel + 100
		end
		return lastAccel
	end
end

for i = 1, 10, 1 do
    table.insert(stableUpgrades,
    {
        notificationTitle = "Mount Level " .. tostring(i),
        notificationDescription = "Your Mount Upgraded to Level " .. tostring(i),

        consumeStat =
        {
            ["Money"] = GetStableCost(i)
        },

        stableData = {
            speed = GetStableSpeed(i),
            acceleration = GetStableAcceleration(i)
        }
    }
    )
end

-- meta data
stableUpgrades[1].metaData = {
    disableNotification = true
}

return stableUpgrades