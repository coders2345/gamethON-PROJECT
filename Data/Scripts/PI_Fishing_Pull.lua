local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local SHOWCASE_CAMERA_DISTANCE = script:GetCustomProperty("ShowcaseCameraDistance")
local FISH_ROD_UPGRADES = require(script:GetCustomProperty("FishingRodUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local interaction = {}

-- scene object references
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject(.05)
local SHOWCASE_CAMERA = script:GetCustomProperty("ShowcaseCamera"):WaitForObject(.05)

local pullDuration = 1.5

local DEBUG = false
function log(msg)
	if DEBUG then
		print(msg)
		UI.PrintToScreen(tostring(msg))
	end
end

serverPlayerTable = {}
clientPlayerTable = {}

local function CloseOtherUI()
    Events.Broadcast("ToggleUI","")
	UI.SetCanCursorInteractWithUI(false)
    UI.SetCursorVisible(false)
end

local function RemoveCurrentFishClient(player)
    if player.clientUserData.PI_FISHING_CONTEXT and Object.IsValid(player.clientUserData.PI_FISHING_CONTEXT.currentFish) then
        player.clientUserData.PI_FISHING_CONTEXT.currentFish.clientUserData.bitePosition = nil
        player.clientUserData.PI_FISHING_CONTEXT.currentFish = nil
    end
end

local function GetRarityDuration(size)
    if size == 1 then
        return .8
    elseif size == 2 then
        return 1.2
    elseif size == 3 then
        return 1.5
    end
end

local function ShowcaseFishClient(player)
    local context = player.clientUserData.PI_FISHING_CONTEXT

    log("[CLIENT] "..player.name.." showcasing "..context.currentFishItem.playerFacingName)

    pullDuration = GetRarityDuration(context.currentFishItem.size)

    -- Broadcast showcase event to rod and showcase UI
    Events.Broadcast("FishShowcase", player, context.currentFishItem.id, pullDuration)

    Task.Spawn(function()
        if Object.IsValid(player) then
            -- This script receives server event to make the correct animation stance
            Events.BroadcastToServer("FishShowcase")

            if Object.IsValid(SHOWCASE_CAMERA) then
                local cameraPos = player:GetWorldPosition() + player:GetWorldTransform():GetForwardVector() * SHOWCASE_CAMERA_DISTANCE
                cameraPos = cameraPos + Vector3.UP * 50
                SHOWCASE_CAMERA:SetWorldPosition(cameraPos)
                SHOWCASE_CAMERA:LookAt(player:GetWorldPosition())
                player:SetOverrideCamera(SHOWCASE_CAMERA, 0)
            end

        end
    end, pullDuration)
end

local function ShowcaseFishServer(player)
    log("[SERVER] "..player.name.." change to showcasing stance.")
    player.animationStance = "unarmed_carry_object_high"
end

local function ClaimFish(player, areaId, spawnPointIndex)
    RemoveCurrentFishClient(player)
    local fishProps = {
        areaId = areaId,
        spawnPointIndex = spawnPointIndex
    }
    FISH_SITE_LIBRARY.ClaimFish(fishProps)
end

local function PullFish(player)
    local context = player.clientUserData.PI_FISHING_CONTEXT
    Events.Broadcast("StopFishPull")

    local pullAbility = context.pullAbility
    pullAbility:Interrupt()

    ClaimFish(player, context.areaId, context.spawnPointIndex)

    ShowcaseFishClient(player)
    log(player.name.." successfully pulling fish!")
end

local function PullJunk(player)
    local context = player.clientUserData.PI_FISHING_CONTEXT
    
    Events.Broadcast("StopFishPull")

    local pullAbility = context.pullAbility
    pullAbility:Interrupt()

    local randChance = math.random(0, 100)

    local currentFishObject = player.clientUserData.PI_FISHING_CONTEXT.currentFish
    if randChance <= 50 then                
        Events.BroadcastToServer("FishPullFailed", player, context.currentFishItem.id)
        RemoveCurrentFishClient(player)
        Events.BroadcastToServer("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
        --player.clientUserData.PI_FISHING_CONTEXT.dartedFish         
        Events.Broadcast("FishDartAway")
    else        
        Events.BroadcastToServer("FishPullFailed", player, context.currentFishItem.id)
        local filter = {areaId = "JUNK", excludeAll = true}
        player.clientUserData.PI_FISHING_CONTEXT.currentFishItem = ITEM_LIBRARY.GetRandomItemForFilter(filter)

        ClaimFish(player, context.areaId, context.spawnPointIndex)
        ShowcaseFishClient(player)
    end

    log(player.name.." failed pulling fish!")
end

interaction.ServerCanStartInteraction = function (player, args)
    if player.isSwimming then
        return false
    end
    return true
end

interaction.ServerStartInteraction = function (player, args)
    log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)

    if not player.isGrounded then
        Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
        return
    end

    serverPlayerTable[player] = {}

    player:SetMounted(false)
    player.canMount = false

    PLAYER_SETTINGS:ApplyToPlayer(player)

    serverPlayerTable[player].showcaseHandle = Events.ConnectForPlayer("FishShowcase", ShowcaseFishServer)
end

interaction.ServerStopInteraction = function (player)
    log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)

    if serverPlayerTable[player].showcaseHandle then
        serverPlayerTable[player].showcaseHandle:Disconnect()
    end
end

interaction.ClientStartInteraction = function (player)
    log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)

    -- Close all other ui when fishing is started
    CloseOtherUI()

    -- Set the pull camera view
    player:SetOverrideCamera(CAMERA, .3)

    local currentFishObject = player.clientUserData.PI_FISHING_CONTEXT.currentFish

    -- if there is no fish object, cancel pulling
    if not Object.IsValid(currentFishObject) then
        RemoveCurrentFishClient(player)
        Events.BroadcastToServer("RequestInteraction", player, INTERACTION_LIBRARY.FISHING)
        return
    end

    local currentFishItem = ITEM_LIBRARY.GetItem(currentFishObject.clientUserData.fishId)
    local fishEquipment = ITEM_LIBRARY.GetFishingEquipment(player)
    local pullAbility = fishEquipment:GetCustomProperty("PullAbility"):WaitForObject()
    local currentLevel = STATS_LIBRARY.GetStat(player, "FishingRodLevel")

    -- Save temp data of the fish information
    player.clientUserData.PI_FISHING_CONTEXT.currentFishItem = currentFishItem
    player.clientUserData.PI_FISHING_CONTEXT.areaId = currentFishObject.clientUserData.areaId
    player.clientUserData.PI_FISHING_CONTEXT.spawnPointIndex = currentFishObject.clientUserData.spawnPointIndex
    player.clientUserData.PI_FISHING_CONTEXT.pullAbility = pullAbility
    player.clientUserData.PI_FISHING_CONTEXT.pullTime = FISH_ROD_UPGRADES[currentLevel].rodData.pullTime
    player.clientUserData.PI_FISHING_CONTEXT.pullSpeed = FISH_ROD_UPGRADES[currentLevel].rodData.pullSpeed

    -- Registering events
    clientPlayerTable[player] = {}
    clientPlayerTable[player].pullSuccessHandle = Events.Connect("FishPullSuccess", PullFish)
    clientPlayerTable[player].pullFailHandle = Events.Connect("FishPullFail", PullJunk)

    -- Sending event for promt script
    Events.Broadcast("StartFishPull")
end

interaction.ClientStopInteraction = function (player)
    log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)

    if clientPlayerTable[player] then
        if clientPlayerTable[player].bindingPressedHandle then
            clientPlayerTable[player].bindingPressedHandle:Disconnect()
        end
        if clientPlayerTable[player].pullSuccessHandle then
            clientPlayerTable[player].pullSuccessHandle:Disconnect()
        end
        if clientPlayerTable[player].pullFailHandle then
            clientPlayerTable[player].pullFailHandle:Disconnect()
        end
    end
    clientPlayerTable[player] = {}

    player:ClearOverrideCamera(0)

    -- Remove any previous fish
    RemoveCurrentFishClient(player)

    -- Sending event for promt script
    Events.Broadcast("StopFishPull")
end

interaction.ServerHandleBindingPressed = function (player, binding)
end

return interaction