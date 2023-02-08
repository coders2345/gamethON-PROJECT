local propRoot = script:GetCustomProperty("root"):WaitForObject()
--local propStatsManagerServer = script:GetCustomProperty("StatsManagerServer")
local propStatsLibrary = script:GetCustomProperty("StatsLibrary")

--local sm = require(propStatsManagerServer)
local sl = require(propStatsLibrary)

 -- Custom 
local propTargetPlayerId = propRoot:GetCustomProperty("TargetPlayerId")
local propBuffApplyText = propRoot:GetCustomProperty("BuffApplyText")
local propBuffEndText = propRoot:GetCustomProperty("BuffEndText")
local propPopupTextColor = propRoot:GetCustomProperty("PopupTextColor")

local targetPlayer = nil
local listener = nil
local currentMoney = 0

function OnStatChanged(player, statId, value)
    print("Stat changed for player", player.name, statId, value, playerId == propTargetPlayerId)
    if player.id ~= propTargetPlayerId
            or statId ~= "Money"
        then return end
    print("affecting things!")

    local delta = value - currentMoney
    print("delta = ", delta)
    if delta < 0 then return end


    -- we need to disconnect the listener while we add money
    -- so that we don't trigger ourself!
    listener:Disconnect()
    sl.IncrementStat(player, "Money", delta)
    UpdateCurrentMoney()
    listener = Events.Connect("StatChangedEvent", OnStatChanged)
end


function UpdateCurrentMoney()
    currentMoney = sl.GetStat(targetPlayer, "Money")
end


function Setup()
    
    while targetPlayer == nil do
        propTargetPlayerId = propRoot:GetCustomProperty("TargetPlayerId")
        targetPlayer = Game.FindPlayer(propTargetPlayerId)
        print("Still looking for player...", propTargetPlayerId)
        Task.Wait()
    end
    Events.BroadcastToPlayer(targetPlayer, "BannerMessage", "Double Money Gain!", 2, 3)

    print("Attached to player", targetPlayer.name)
    UpdateCurrentMoney()
    listener = Events.Connect("StatChangedEvent", OnStatChanged)
end


function OnDestroy()
    print("Destroyed!")
    Events.BroadcastToPlayer(targetPlayer, "BannerMessage", "Money bonus ended!", 2, 3)
    listener:Disconnect()
end



Setup()


script.parent.destroyEvent:Connect(OnDestroy)