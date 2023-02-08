--[[
    This script manages insta grow resource and tracks the player's purchases of each insta grow bundle.
    Each bundle is stored in storage and communicated through resources.
    Makes sure that the bundle purchase is rewarded accordingly to per purchase.
--]]

-- Internal custom properties
local BUNDLES_LIST_REFERNCE = script:GetCustomProperty("BundlesList"):WaitForObject()
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local RESOURCE_KEY = "InstaGrow"

-- Gather bundle data into table from hierarchy list
local bundles = {}
for _, child in ipairs(BUNDLES_LIST_REFERNCE:GetChildren()) do
    table.insert(bundles, {
        reference = child:GetCustomProperty("BundleReference"),
        counterResource = child:GetCustomProperty("CounterResource"),
        rewardResource = child:GetCustomProperty("RewardResource"),
        rewardAmount = child:GetCustomProperty("RewardAmount")
    })
end

-- Check if each storage bundle purchase count is different from Perk purchase count.
-- If yes, then grant currency as reward to the player.
function CheckPerkCountWithStorage(player)
    for _, bundle in ipairs(bundles) do
        local perkCount = player:GetPerkCount(bundle.reference)
        local currentCount = STATS_LIBRARY.GetStat(player, bundle.counterResource)

        if perkCount > currentCount then
            local resourceAmount = bundle.rewardAmount * (perkCount - currentCount)
            STATS_LIBRARY.IncrementStat(player, RESOURCE_KEY, resourceAmount)
            STATS_LIBRARY.IncrementStat(player, bundle.counterResource, perkCount - currentCount)
        end
    end
end

-- If player's doing in game transactions, check and update
-- the balance for current currency with storage bundle tracking
function OnPerkChanged(player)
    CheckPerkCountWithStorage(player)
end

-- Sets player resource from storage and connects player events
function OnPlayerJoined(player)
    Task.Wait()

    -- Setup current Perk purchased count per bundle if it's 0
    for _, bundle in ipairs(bundles) do
        if STATS_LIBRARY.GetStat(player, bundle.counterResource) == 0 or Environment.IsPreview() then
            local perkPerchasedCount = player:GetPerkCount(bundle.reference)
            STATS_LIBRARY.UpdateStat(player, bundle.counterResource, perkPerchasedCount)
        end
    end

    -- Connect events that updates currency balance for player
    CheckPerkCountWithStorage(player)
    player.perkChangedEvent:Connect(OnPerkChanged)
end

-- Add insta grow when claimed through insta grow daily rewards
function OnInstaRewardClaim(player, rewardValue)
    STATS_LIBRARY.IncrementStat(player, RESOURCE_KEY, rewardValue)
    STATS_LIBRARY.UpdateStat(player, "InstaGrowLastTime", os.time())
    STATS_LIBRARY.UpdateStat(player, "InstaGrowLastServerTime", os.time())
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Events.ConnectForPlayer("InstaGrowRewardClaim", OnInstaRewardClaim)
