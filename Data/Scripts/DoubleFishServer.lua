local EQUIPMENT = script:FindAncestorByType("Equipment")
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local isActive = true

function AddFish(player, itemId)
    if Object.IsValid(EQUIPMENT) and isActive and EQUIPMENT.owner and EQUIPMENT.owner.id == player.id then
        isActive = false
        Events.Broadcast("AddFish", player, itemId)        
        STATS_LIBRARY.IncrementStat(player, "CurMetalStorage")        
        Events.BroadcastToPlayer(player, "DoubleFish")
        Task.Spawn(function() 
            Task.Wait(2)
            isActive = true
        end)
    end
end

local fishListener = Events.Connect("AddFish", AddFish)

while EQUIPMENT.owner == nil do
    Task.Wait()
end

Events.BroadcastToPlayer(EQUIPMENT.owner, "BannerMessage", "Double Fish!", 2, 2)

script.destroyEvent:Connect(function()
    fishListener:Disconnect()
end)