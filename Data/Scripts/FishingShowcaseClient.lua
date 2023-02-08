local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))

local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local _, BACKPACK_UPGRADE_HELPER = require(script:GetCustomProperty("BackpackUpgradesList"))
local INVENTORY = require(script:GetCustomProperty("Inventory"))

local ADD_BUTTON = script:GetCustomProperty("AddButton"):WaitForObject()
local RELEASE_BUTTON = script:GetCustomProperty("ReleaseButton"):WaitForObject()
local DESCRIPTION_PANEL = script:GetCustomProperty("DescriptionPanel"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local FAIL_SOUND = script:GetCustomProperty("FailSound"):WaitForObject()
local FISH_PULL_SOUND = script:GetCustomProperty("FishPullSound"):WaitForObject()
local SHOWCASE_REEL_SOUND = script:GetCustomProperty("ShowcaseReelSound"):WaitForObject()

local ADD_EFFECT = script:GetCustomProperty("AddEffect")
local RELEASE_EFFECT = script:GetCustomProperty("ReleaseEffect")

local propFishCaughtRarityCommonEffect = script:GetCustomProperty("FishCaughtRarityCommonEffect")
local propFishCaughtRarityUncommonEffect = script:GetCustomProperty("FishCaughtRarityUncommonEffect")
local propFishCaughtRarityRareEffect = script:GetCustomProperty("FishCaughtRarityRareEffect")
local propFishCaughtRarityLegendaryEffect = script:GetCustomProperty("FishCaughtRarityLegendaryEffect")
local propFishCaughtJunkEffect = script:GetCustomProperty("FishCaughtJunkEffect")

local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local currentItemId = nil
local isShowcasing = false
local isReleased = false

function SpawnCaughtEffect(itemRarity)
    if itemRarity == 1 then
        World.SpawnAsset(propFishCaughtRarityCommonEffect)
    elseif itemRarity == 2 then
        World.SpawnAsset(propFishCaughtRarityUncommonEffect)
    elseif itemRarity == 3 then
        World.SpawnAsset(propFishCaughtRarityRareEffect)
    elseif itemRarity == 4 then
        World.SpawnAsset(propFishCaughtRarityLegendaryEffect)
    end
end

function ShowShowcaseUI(player, itemId, duration)
    isShowcasing = true
    isReleased = false
    ADD_BUTTON.isInteractable = true
    RELEASE_BUTTON.isInteractable = true
    FISH_PULL_SOUND:Play()
    SHOWCASE_REEL_SOUND:Play()

    Task.Wait(duration)
    SHOWCASE_REEL_SOUND:Stop()

    Task.Spawn(function() Events.BroadcastToServer("FishCaught", player, itemId) end, .5)

    if player == LOCAL_PLAYER then
        Events.Broadcast("ToggleUI", "FishShowcaseUI", true)
        currentItemId = itemId
        local item = ITEM_LIBRARY.GetItem(itemId)

        if ITEM_LIBRARY.IsItemFishingCategory(itemId) then
            GET(DESCRIPTION_PANEL, "LabelDescription").text = "You caught a fish!"
            RELEASE_BUTTON.text = "RELEASE"
        else
            GET(DESCRIPTION_PANEL, "LabelDescription").text = "Fish escaped! You found an item instead..."
            RELEASE_BUTTON.text = "THROW"
        end

        GET(DESCRIPTION_PANEL, "ItemName").text = item.playerFacingName
        GET(DESCRIPTION_PANEL, "Rarity").text = ITEM_LIBRARY.GetRarityText(item.itemRarity)
        GET(DESCRIPTION_PANEL, "RarityIcon"):SetImage(ITEM_LIBRARY.GetRarityIcon(item.itemRarity))
        GET(DESCRIPTION_PANEL, "RarityIcon"):SetColor(ITEM_LIBRARY.GetRarityColor(item.itemRarity))
        GET(DESCRIPTION_PANEL, "Description").text = tostring(item.itemDesc)
    end
end

function AddFish(player, itemId)
    local item = ITEM_LIBRARY.GetItem(itemId)

    local backpackLevel = STATS_LIBRARY.GetStat(player, "BackpackLevel")
    local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(backpackLevel)
    local currStorage = STATS_LIBRARY.GetStat(player, "CurMetalStorage")

    if currStorage == backpackMaxCapacity then
        UI.ShowFlyUpText("BACKPACK FULL!", player:GetWorldPosition(), {duration = 2, color = Color.RED, isBig = true})
        FAIL_SOUND:Play()
    else
        if currStorage + 1 == backpackMaxCapacity then
            Events.Broadcast("ShowNotification", "Backpack Full", "Upgrade your Backpack [I] to hold more collectables.", Color.RUBY, 
            INVENTORY.GetBackpackIcon(), Color.WHITE, Color.WHITE, Color.WHITE)
        end
        Events.BroadcastToServer("AddFish", player, itemId)

        isShowcasing = false
        currentItemId = nil
        ADD_BUTTON.isInteractable = false
        RELEASE_BUTTON.isInteractable = false

        Task.Wait(.5)

        ADD_BUTTON.isInteractable = true
        RELEASE_BUTTON.isInteractable = true
        UI.ShowFlyUpText("+1 "..item.playerFacingName, player:GetWorldPosition(), {duration = 2, color = Color.GREEN})
        World.SpawnAsset(ADD_EFFECT)
    end
end

function ReleaseFish(player, itemId)
    if isReleased then return end
    if not currentItemId then return end

    Events.BroadcastToServer("ReleaseFish", player, itemId)
    ADD_BUTTON.isInteractable = false
    RELEASE_BUTTON.isInteractable = false
    local item = ITEM_LIBRARY.GetItem(itemId)

    isReleased = true
    isShowcasing = false
    currentItemId = nil

    Task.Wait(.5)

    ADD_BUTTON.isInteractable = true
    RELEASE_BUTTON.isInteractable = true
    if ITEM_LIBRARY.IsItemFishingCategory(itemId) then
        UI.ShowFlyUpText("Released "..item.playerFacingName, player:GetWorldPosition(), {duration = 1.5, color = Color.GREY})
    else
        UI.ShowFlyUpText("Threw "..item.playerFacingName, player:GetWorldPosition(), {duration = 1.5, color = Color.GREY})
    end
    World.SpawnAsset(RELEASE_EFFECT)
end

function OnClicked(button)
    if ADD_BUTTON == button then
        AddFish(LOCAL_PLAYER, currentItemId)
    elseif RELEASE_BUTTON == button then
        ReleaseFish(LOCAL_PLAYER, currentItemId)
    end
end

function HandleFishCaught(player, itemId)
    local itemProps = ITEM_LIBRARY.GetItem(itemId)

    if itemProps ~= nil then
        if ITEM_LIBRARY.IsItemFishingCategory(itemId) then
            if itemProps.itemRarity >= ITEM_LIBRARY.RARITY_RARE then
                SpawnCaughtEffect(itemProps.itemRarity)
            else
                if LOCAL_PLAYER == player then
                    SpawnCaughtEffect(itemProps.itemRarity)
                end
            end
        else
            if LOCAL_PLAYER == player then
                World.SpawnAsset(propFishCaughtJunkEffect)
            end
        end
	end
end

function ToggleUI(uniqueId, toggleVal)
    if uniqueId ~= "FishShowcaseUI" and toggleVal then
        if not isReleased and isShowcasing then
            ReleaseFish(LOCAL_PLAYER, currentItemId)
        end
    end
end

ADD_BUTTON.clickedEvent:Connect(OnClicked)
RELEASE_BUTTON.clickedEvent:Connect(OnClicked)

Events.Connect("FishCaught", HandleFishCaught)
Events.Connect("FishShowcase", ShowShowcaseUI)
Events.Connect("ToggleUI", ToggleUI)
