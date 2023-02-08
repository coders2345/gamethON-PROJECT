local dailyRewards = require(script:GetCustomProperty("DailyRewardsList"))

local dailyRewardsLibrary =
{
    GetRewardById = function (id)
        for _, data in ipairs(dailyRewards) do
            if data.id == id then
                return data
            end
        end
        warn("No reward with id: " .. tostring(id) .. "found. Please add the reward above.")
        return nil
    end,
    GetRewardByIndex = function (index)
        if dailyRewards[index] == nil then
            warn("No reward with index: " .. tostring(index) .. "exists. Please add the reward above.")
        end
        return dailyRewards[index]
    end,
    GetTotalRewardsCount = function ()
        return #dailyRewards
    end
}

return dailyRewardsLibrary, dailyRewards