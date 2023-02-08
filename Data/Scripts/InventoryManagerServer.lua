local INVENTORY, INV_ITEMS = require(script:GetCustomProperty("Inventory"))
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local PACK_LIB = require(script:GetCustomProperty("PackBits"))

local INVENTORY_SAVE_DATA_VERSION = 4

function GetBitIndexForItemKey(itemKey)
    local idx = 0
    for k, v in pairs(INV_ITEMS) do
        idx = idx + 1
        if k == itemKey then
            break
        end
    end

    return idx
end

function OnResourceChanged(player, key, value)
	local playerData = Storage.GetPlayerData(player)

    if playerData.inventory.v == INVENTORY_SAVE_DATA_VERSION then
        if INV_ITEMS[key] ~= nil then
            -- update item count
            if value > 0 then
                playerData.inventory.packedMetalItemCounts[key] = value
            else
                playerData.inventory.packedMetalItemCounts[key] = nil
            end

            -- track obtaining a new item
            if value > 0 then
                local idx = GetBitIndexForItemKey(key)

                local collectionTable = PACK_LIB.new(INVENTORY.GetInventoryItemListCount(), playerData.inventory.packedMetalCollection)

                if not collectionTable:IsBitSet(idx) then
                    -- set found bit for item index
                    collectionTable:SetBit(idx, 1)

                    -- update player data with new packed string
                    playerData.inventory.packedMetalCollection = collectionTable:GetPackedString()

                    Events.BroadcastToPlayer(player, "NewInventoryItem", key, value)

                    local packedNumbers = collectionTable:GetPackedNumbers()
                    local packedSegment = collectionTable:GetSegment(idx)
                    player:SetResource("PckInv" .. tostring(packedSegment), packedNumbers[packedSegment])
                end
            end

            Events.Broadcast("InventoryChangedEvent", player, key, value)
        end

        Storage.SetPlayerData(player, playerData)
    end
end

function OnPlayerJoined(player)
	local playerData = Storage.GetPlayerData(player)

    if type(playerData.inventory) ~= "table" then
        playerData.inventory = {}
    end

    -- migrate inventory data
    if playerData.inventory.v == nil or playerData.inventory.v < INVENTORY_SAVE_DATA_VERSION then    
        if playerData.inventory.v == nil or playerData.inventory.v < 4 then
            -- reset inventory data
            playerData.inventory = {}
            playerData.inventory.v = INVENTORY_SAVE_DATA_VERSION
            playerData.inventory.packedMetalCollection = nil
            playerData.inventory.packedMetalItemCounts = {}
        end

        -- assign current version
        playerData.inventory.v = INVENTORY_SAVE_DATA_VERSION

        -- persist migration
        Storage.SetPlayerData(player, playerData)
    end

    -- initialize collection
    local collectionTable = PACK_LIB.new(INVENTORY.GetInventoryItemListCount(), playerData.inventory.packedMetalCollection)

    -- init collection resources
    for k, v in ipairs(collectionTable:GetPackedNumbers()) do
        player:SetResource("PckInv" .. tostring(k), v)
    end

    -- initialize item counts
    local itemCountsTable = {}

    -- deserialize item counts
    itemCountsTable = playerData.inventory.packedMetalItemCounts

    -- init item count resources
    for id, value in pairs(itemCountsTable) do
        if value ~= nil and value > 0 then
            player:SetResource(id, value)
        end
    end

    player.resourceChangedEvent:Connect(OnResourceChanged)
end

function AddFish(player, itemId)
    INVENTORY.AddItem(player, itemId, 1)
    STATS_LIBRARY.IncrementStat(player, "CurMetalStorage")
    Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
end

function ReleaseFish(player, itemId)
    Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
end

function HandleFishCaught(player, itemId)
	Events.BroadcastToAllPlayers("FishCaught", player, itemId)
end

function HandleFishPullFailed(player, itemId)
    print("HandleFishPullFailed", itemId)
	Events.BroadcastToAllPlayers("FishFailed", player, itemId)
end

Events.Connect("AddFish", AddFish)
Events.Connect("ReleaseFish", ReleaseFish)
Events.Connect("FishCaught", HandleFishCaught)
Events.Connect("FishPullFailed", HandleFishPullFailed)

Game.playerJoinedEvent:Connect(OnPlayerJoined)