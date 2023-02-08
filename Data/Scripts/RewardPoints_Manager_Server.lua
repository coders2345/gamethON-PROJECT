--[[
Copyright 2021 Manticore Games, Inc. 

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

local API = require(script:GetCustomProperty("RewardPoints_API"))

local storageKey = "RewardPoints"

local survivalTime

--@params Object player
--@params Int rewardId
function AddRewardPoints(player, rewardId)
    if not API.RewardPoints[rewardId] then
        return
    end

    local data = Storage.GetPlayerData(player)
    local shouldGrant = true
    local yearDay = os.date("*t").yday

    if data[storageKey] and data[storageKey][rewardId] then
        if yearDay == data[storageKey][rewardId] then
            shouldGrant = false
        end
    end

    if shouldGrant then
        if API.RewardPoints[rewardId].name and API.RewardPoints[rewardId].amount and player.GrantRewardPoints then
            data[storageKey] = data[storageKey] or {}
            data[storageKey][rewardId] = yearDay
            player:GrantRewardPoints(CoreMath.Round(API.RewardPoints[rewardId].amount), API.RewardPoints[rewardId].name)
            player:SetPrivateNetworkedData("RewardPoints", API.RewardPoints[rewardId])
            Storage.SetPlayerData(player, data)
        end
    end
end

--@params Object player
--@params Int rewardId
--@params Int value
function AddRewardPointsProgress(player, rewardId, value)
    if not Object.IsValid(player) then
        return
    end
    local playerRewardData = player.serverUserData.rewardPointsProgress or {}
    if playerRewardData[rewardId] and playerRewardData[rewardId] == "Claimed" then
        return
    end
    playerRewardData[rewardId] = playerRewardData[rewardId] or 0
    playerRewardData[rewardId] = playerRewardData[rewardId] + value

    if playerRewardData[rewardId] >= API.RewardPoints[rewardId].required then
        AddRewardPoints(player, rewardId)
        playerRewardData[rewardId] = "Claimed"
    end
    player.serverUserData.rewardPointsProgress = playerRewardData
    player:SetPrivateNetworkedData("RewardPointClient", playerRewardData)
end


function OnPlayerJoined(player)
    local data = Storage.GetPlayerData(player)
    local yearDay = os.date("*t").yday
    local playerRewardData = {}
    if data[storageKey] then
        for i, day in pairs(data[storageKey]) do
            warn(tostring(i) .. " Day: " .. tostring(day))
            if yearDay == day then
                playerRewardData[i] = "Claimed"
            else
                playerRewardData[i] = 0
            end
        end
        for i, _ in ipairs(API.RewardPoints) do
            if not playerRewardData[i] then
                playerRewardData[i] = 0
            end
        end
    else
        for i, _ in ipairs(API.RewardPoints) do
            playerRewardData[i] = 0
        end
    end
    player.serverUserData.rewardPointsProgress = playerRewardData
    player:SetPrivateNetworkedData("RewardPointClient", playerRewardData)
end


Events.Connect("AddRewardPointsProgress", AddRewardPointsProgress)
Game.playerJoinedEvent:Connect(OnPlayerJoined)