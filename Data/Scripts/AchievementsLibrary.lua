
local achievements = require(script:GetCustomProperty("AchievementsList"))
local dependentAchievements = nil

local IsAchievementUnlockedImpl = nil

local achievementLibrary = 
{
    TryUnlockAchievement = function (player, id)
        Events.Broadcast("TryUnlockAchievement", player, id)
    end,

    GetAchievement = function (id)
        if achievements[id] == nil then 
            warn("No achievement with id: " .. tostring(id) .. "exists. Please add the achievement above")
        end
    end,

    IsAchievementUnlocked = function (player, id)
        return IsAchievementUnlockedImpl(player, id)
    end,

    IsAchievementRewardsClaimed = function (player, id)
        return IsAchievementRewardsClaimedImpl(player, id)
    end,

    GetDependentAchievements = function ()
        if dependentAchievements == nil then
            dependentAchievements = {}
            for k,v in pairs(achievements) do
                if #v["requiredAchievements"] ~= 0 or v["isDefaultTask"] then
                    dependentAchievements[k] = v
                end
            end
        end
        return dependentAchievements
    end,

    CheckRequiredAchievements =  function(player, achievement)
        if achievement["requiredAchievements"] then
            for _, achId in pairs(achievement["requiredAchievements"]) do
                local currentUnlockStatus = IsAchievementUnlockedImpl(player, achId)
                if not currentUnlockStatus then
                    return false
                end
            end
        end
        return true
    end
}

IsAchievementUnlockedImpl = function (player, id)
    if achievements[id] == nil then 
        return
    end

    if player:GetResource(id) == 0 then 
        return false
    else
        return true
    end
end

IsAchievementRewardsClaimedImpl = function (player, id)
    if achievements[id] == nil then
        return
    end

    if player:GetResource(id) == 2 then
        return true
    else
        return false
    end
end
return achievementLibrary, achievements