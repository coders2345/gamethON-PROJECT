local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local API_FARMS = require(script:GetCustomProperty("APIFarms"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local INVENTORY = require(script:GetCustomProperty("Inventory"))

local START_MONEY = COMPONENT_ROOT:GetCustomProperty("StartMoney")
local START_PLOTS_UNLOCKED = COMPONENT_ROOT:GetCustomProperty("StartPlotsUnlocked")
local START_INSTA_GROW = COMPONENT_ROOT:GetCustomProperty("StartInstaGrow")

function AssignFarm(player)
    LoadData(player)

    -- Search for available farms
    local farms = API_FARMS.GetFarms()
    for _, id in ipairs(farms) do
        local farmState = API_FARMS.GetFarmState(id)
        if farmState.isAvailable then
            API_FARMS.SetFarmOwner(id, player)
            return
        end
    end

end

function RemovePlayerFromFarm(player)
    local farmId = API_FARMS.FindOwnersFarm(player)
    if farmId then
        API_FARMS.ResetFarm(farmId)
    end
end

function LoadData(player)
    local data = Storage.GetPlayerData(player)

    -- Load in new user data
    if not data.plotsData then
        print("Clearing plots data "..player.name)
        data.plotsData = {}
    end

    if not data.newPerson then
        print("New User: "..player.name)
        data.newPerson = 1
    end

    Storage.SetPlayerData(player, data)

    -- Migration to new plot data type
    local plotsMigrated = false
    for i, plotsData  in ipairs(data.plotsData) do
        for resourceKey, resourceData in pairs(STATS_LIST) do
            if resourceData and resourceData.plantData and resourceData.plantData.plantAsset then
                if resourceData.plantData.plantAsset == plotsData.plantAsset then
                    print("Migrating plant: "..resourceKey.." at plot "..tostring(i))
                    data.plotsData[i].plantAsset = nil
                    data.plotsData[i].plantResource = resourceKey
                    plotsMigrated = true
                end
            end
        end
    end
    if plotsMigrated then
        Storage.SetPlayerData(player, data)
    end

    -- Check if this is a new user
    if data.newPerson == 1 then
        data.newPerson = 0
        Storage.SetPlayerData(player, data)

        STATS_LIBRARY.UpdateStat(player, "Money", START_MONEY)
        STATS_LIBRARY.UpdateStat(player, "MoneyAccumulated", START_MONEY)
        STATS_LIBRARY.UpdateStat(player, "StartTime", os.time())
        STATS_LIBRARY.UpdateStat(player, "PlotsUnlocked", START_PLOTS_UNLOCKED)
    end

    -- Set up initial currency reward for instaGrow
    data = Storage.GetPlayerData(player)
    if not data.receivedInstaGrow then
        data.receivedInstaGrow = 1
        Storage.SetPlayerData(player, data)

        STATS_LIBRARY.UpdateStat(player, "InstaGrow", START_INSTA_GROW)
    end

    -- Check if this player never had barn storage
    if STATS_LIBRARY.GetStat(player, "BarnLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "BarnLevel", 1)
    end

    -- Check if this player never had a shovel
    if STATS_LIBRARY.GetStat(player, "ShovelLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "ShovelLevel", 1)
    end

    -- Check if this player have never registered mount data
    if STATS_LIBRARY.GetStat(player, "StableLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "StableLevel", 1)
    end

    -- Check if this player got negative money due to a bug at any point in time
    if STATS_LIBRARY.GetStat(player, "Money") < 0 then
        STATS_LIBRARY.UpdateStat(player, "Money", START_MONEY)
    end

    -- Check if this player got negative on some crop resources due to a bug at any point in time
    for _, resource in ipairs(API_BARN_STORAGE.GetValidResources()) do
        if STATS_LIBRARY.GetStat(player, resource) < 0 then
            STATS_LIBRARY.UpdateStat(player, resource, 0)
        end
    end

    -- Check if this player got negative accumulated money due to a bug at any point in time
    if STATS_LIBRARY.GetStat(player, "MoneyAccumulated") < 0 then
        STATS_LIBRARY.UpdateStat(player, "MoneyAccumulated", START_MONEY)
    end

    -- Start with a level 1 metal detector
    if STATS_LIBRARY.GetStat(player, "MetalDetectorLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "MetalDetectorLevel", 1)
    end

    -- Start with a level 1 backpack
    if STATS_LIBRARY.GetStat(player, "BackpackLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "BackpackLevel", 1)
    end

    -- Start with a level 1 fish rod
    if STATS_LIBRARY.GetStat(player, "FishingRodLevel") < 1 then
        Events.Broadcast("TryUpgradeTo", player, "FishingRodLevel", 1)
    end

    -- Set the current time os time from server
    STATS_LIBRARY.UpdateStat(player, "DailyRewardLastServerTime", os.time())
    STATS_LIBRARY.UpdateStat(player, "InstaGrowLastServerTime", os.time())

    -- Check inventory
    if STATS_LIBRARY.GetStat(player, "CurMetalStorage") ~= INVENTORY.GetItemsCount(player) then
        STATS_LIBRARY.UpdateStat(player, "CurMetalStorage", INVENTORY.GetItemsCount(player))
    end
end

function OnPlayerJoined(player)
    Task.Wait()
    AssignFarm(player)
end

function OnPlayerLeft(player)
    RemovePlayerFromFarm(player)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
