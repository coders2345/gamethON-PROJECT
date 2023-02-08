local ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local UPGRADE_SOUND = ROOT:GetCustomProperty("MembershipUpgradeSound")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnMembershipPurchased(player)
    local instance = World.SpawnAsset(UPGRADE_SOUND)
    instance:AttachToPlayer(player, "root")

    if player == LOCAL_PLAYER then
        Events.Broadcast("ToggleUI", "VIP", false)
        Task.Wait(1)
        Events.Broadcast("ShowNotification", "VIP Farmer", "Congratulations! You are now VIP Farmer!", Color.ORANGE,
        nil, Color.WHITE, Color.WHITE, Color.WHITE)
    end
end

function OnMemberJoined(player)
    if player ~= LOCAL_PLAYER then
        Task.Wait(2)
        Events.Broadcast("ShowNotification", "VIP Member Server Boost", "Bonus sell prices are applied to the market by the VIP players!", Color.GREEN,
        nil, Color.WHITE, Color.WHITE, Color.WHITE)
    else
        World.SpawnAsset(UPGRADE_SOUND)
    end
end

Events.Connect("MembershipPurchased", OnMembershipPurchased)
Events.Connect("MemberJoined", OnMemberJoined)