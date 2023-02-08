local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local DIG_SITE_LIBRARY = require(script:GetCustomProperty("DigSiteLibrary"))
local SHOVEL_MANAGER_SERVER = script:GetCustomProperty("ShovelManagerServer"):WaitForObject()
local BACKPACK_UPGRADES_LIST, BACKPACK_UPGRADE_HELPER = require(script:GetCustomProperty("BackpackUpgrades"))
local SHOVEL_UPGRADES_LIST = require(script:GetCustomProperty("ShovelUpgrades"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

-- scene object references
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject(1)
local DIRT_PILE = script:GetCustomProperty("DirtPile")
local ZOOM_DISTANCE = script:GetCustomProperty("ZoomDistance") or 100
local START_CAM_DIST = script:GetCustomProperty("StartDistance") or 400
local ITEM_LIFETIME = script:GetCustomProperty("ItemLifetime") or 1
local INTERVAL_AUDIO = script:GetCustomProperty("IntervalAudio")
local NUM_INTERVALS = script:GetCustomProperty("NumberOfIntervals")
local INVENTORY = require(script:GetCustomProperty("Inventory"))

local interaction = {}

local eTime = 0
local digTime = 0
local startCamDist = 0

serverPlayerTable = {}
clientPlayerTable = {}

local DEBUG = false
function log(msg, color)
    if not color then color = Color.WHITE end
    if DEBUG then
		print(msg)
		UI.PrintToScreen(msg, color)
	end
end

local rarityDigTimes =
{
    2, -- common
    2.5, -- unCommon
    3, -- rare
    3.5, -- legendary
}

-- common = 1
-- uncommon = 2
-- rare = 3
function GetRarity(item)
	if item ~= nil and item.itemRarity ~= nil then return item.itemRarity end
	
    return 1
end

function GetObjectShowcase(itemId)
    local itemProps = ITEM_LIBRARY.GetItem(itemId)
    if itemProps ~= nil then
        if itemProps.itemRarity == ITEM_LIBRARY.RARITY_COMMON then
            return script:GetCustomProperty("CommonShowcase")
        elseif itemProps.itemRarity == ITEM_LIBRARY.RARITY_UNCOMMON then
            return script:GetCustomProperty("UncommonShowcase")
        elseif itemProps.itemRarity == ITEM_LIBRARY.RARITY_RARE then
            return script:GetCustomProperty("RareShowcase")
        elseif itemProps.itemRarity == ITEM_LIBRARY.RARITY_LEGENDARY then
            return script:GetCustomProperty("LegendaryShowcase")
        end
    end

    return nil
end

function InitInteraction(playerTbl, player)
    local itemFilter = {
    	areaId = DIG_SITE_LIBRARY.GetAreaIdForIndex(playerTbl.digSiteProps.areaIndex),
    	size = playerTbl.digSiteProps.size,
    	depth = playerTbl.digSiteProps.depth,
    }
    playerTbl.currentItem, playerTbl.currentItemId = ITEM_LIBRARY.GetRandomItemForFilter(itemFilter)
    playerTbl.currentItemRarity = GetRarity(playerTbl.currentItem)

    playerTbl.digTime = rarityDigTimes[playerTbl.currentItemRarity]

    -- scale dig time by shovel level
    local shovelLevel = STATS_LIBRARY.GetStat(player, "ShovelLevel")
    if shovelLevel ~= nil then
        local shovelInfo = SHOVEL_UPGRADES_LIST[shovelLevel]
        if shovelInfo ~= nil then
            playerTbl.digTime = playerTbl.digTime * shovelInfo.shovelData.detectorDigMultiplier
        end
    end
end

function GetDigEquipment(player)
    local equipments = player:GetEquipment()
    for _, equipment in pairs(equipments) do
        if equipment:GetCustomProperty("DigEquipment") then
            return equipment
        end
    end
end

function GetDigLocationInfo(player)
    local playerPos = player:GetWorldPosition()
    local playerForward = player:GetWorldTransform():GetForwardVector()
    return World.Raycast(playerPos + playerForward * 100, playerPos + playerForward * 100 - Vector3.UP * 2000, {ignorePlayers = true})
end

-- player specific client side timer
function Timer(dt, player)
    if player ~= Game.GetLocalPlayer() then return end

    clientPlayerTable[player].eTime = clientPlayerTable[player].eTime + dt

    -- calculate interval steps in time
    if clientPlayerTable[player].eTime > (clientPlayerTable[player].digTime/clientPlayerTable[player].numIntervals) * clientPlayerTable[player].currentInterval then
        if clientPlayerTable[player].currentInterval ~= clientPlayerTable[player].numIntervals then
        	if INTERVAL_AUDIO ~= nil then
	            clientPlayerTable[player].intervalAudio:Play()
	        end
        end
        clientPlayerTable[player].currentInterval = clientPlayerTable[player].currentInterval + 1
    end

    -- lerp to new distance in time 2 times given to control cam speed
    if Object.IsValid(CAMERA) then
        CAMERA.currentDistance = CoreMath.Lerp(START_CAM_DIST, ZOOM_DISTANCE, clientPlayerTable[player].eTime/(clientPlayerTable[player].digTime * 2))
    end

    if clientPlayerTable[player].eTime >= clientPlayerTable[player].digTime then
        if clientPlayerTable[player].timerHandle then
            clientPlayerTable[player].timerHandle:Cancel()
            clientPlayerTable[player].timerHandle = nil
        end
    end
end

function SpawnShowcase(player, itemId)
    local hitResult = GetDigLocationInfo(player)
    local objectShowcase = GetObjectShowcase(itemId)
    if objectShowcase ~= nil then
	    local newItem = World.SpawnAsset(objectShowcase, { position = hitResult:GetImpactPosition()})
        local rot = Rotation.New(player:GetWorldTransform():GetForwardVector(), Vector3.UP)

        newItem:SetWorldRotation(rot)
        newItem:SetNetworkedCustomProperty("ContentToSpawn", itemId)
        newItem:SetNetworkedCustomProperty("PlayerId", player.id)
    end
end

-- expose for sim
interaction.SpawnShowcase = function(player, itemId) SpawnShowcase(player, itemId) end

function HandleAbilityInterruptServer(ability)
    if serverPlayerTable[ability.owner].currentItem ~= nil then
	    local currentItemMUID = serverPlayerTable[ability.owner].currentItem.assetRef

        -- Spawn Item
        SpawnShowcase(ability.owner, serverPlayerTable[ability.owner].currentItemId)
        
        INVENTORY.AddItem(ability.owner, serverPlayerTable[ability.owner].currentItemId)
        STATS_LIBRARY.IncrementStat(ability.owner, "CurMetalStorage")
    else
        -- no item dug up
        -- disappointed :(
    end
end

function HandleAbilityInterruptClient(ability)
    local player = ability.owner
    if player ~= Game.GetLocalPlayer() then return end

    -- disconnect handle once complete
    if clientPlayerTable[player].interruptHandle then
        clientPlayerTable[player].interruptHandle:Disconnect()
    end

    local backpackLevel = STATS_LIBRARY.GetStat(player, "BackpackLevel")
    local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(backpackLevel)
    local currentMetalStorage = STATS_LIBRARY.GetStat(player, "CurMetalStorage")

    if currentMetalStorage + 1 == backpackMaxCapacity then
        Events.Broadcast("ShowNotification", "Backpack Full", "Upgrade your Backpack [I] to hold more collectables.", Color.RUBY, 
        INVENTORY.GetBackpackIcon(), Color.WHITE, Color.WHITE, Color.WHITE)
    end
end

interaction.ServerCanStartInteraction = function (player, args)
    local backpackLevel = STATS_LIBRARY.GetStat(player, "BackpackLevel")
    local backpackMaxCapacity = BACKPACK_UPGRADE_HELPER.GetCapacity(backpackLevel)
    local currentMetalStorage = STATS_LIBRARY.GetStat(player, "CurMetalStorage")
    if currentMetalStorage < backpackMaxCapacity then
        if DIG_SITE_LIBRARY.ClaimDigSite(args) then
            return true
        end
    end
        return false
end

interaction.ServerStartInteraction = function (player, args)
    log("[SERVER] Start interaction " .. script.name .. " on " .. player.name)
    if not player.isGrounded then
        Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DETECT)
        return
    end
    
    -- table to maintain player specific data
    serverPlayerTable[player] = {
    	digSiteProps = args
    }
    InitInteraction(serverPlayerTable[player], player)

	SHOVEL_MANAGER_SERVER.context.GivePlayerEquipment(player)
	
	PLAYER_SETTINGS:ApplyToPlayer(player)
	
	player:SetMounted(false)
    player.canMount = false

    -- Ability
    local digEquipment = GetDigEquipment(player)
    local digAbility = digEquipment:GetCustomProperty("DigAbility"):WaitForObject()

    if Object.IsValid(digAbility) then
        -- Spawn Dirt
        local hitResult = GetDigLocationInfo(player)
        local dirt = World.SpawnAsset(DIRT_PILE, { position = args.position })
        dirt.lifeSpan = serverPlayerTable[player].digTime + 1
        dirt:SetWorldRotation(Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal()))
        -- digging is complete by interruption
        serverPlayerTable[player].interruptHandle = digAbility.interruptedEvent:Connect(HandleAbilityInterruptServer)

        -- Stop digging after given time
        Task.Wait(serverPlayerTable[player].digTime)
        if Object.IsValid(digAbility) then
            digAbility:Interrupt()
            if serverPlayerTable[player].interruptHandle then
                serverPlayerTable[player].interruptHandle:Disconnect()
            end
        end
    else
        warn("No Dig ability found")
    end
	Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DETECT)
end

interaction.ServerStopInteraction = function (player)
    log("[SERVER] Stop interaction " .. script.name .. " on " .. player.name)
    
   	SHOVEL_MANAGER_SERVER.context.RemovePlayerEquipment(player)
   	
    player.canMount = true
end

interaction.ClientStartInteraction = function (player, args)
    log("[CLIENT] Start interaction " .. script.name .. " on " .. player.name)
    if not player.isGrounded then
        Events.Broadcast("RequestInteraction", player, INTERACTION_LIBRARY.DETECT)
        return
    end
    -- table to maintain player specific data
    clientPlayerTable[player] = {
    	digSiteProps = args
    }
    InitInteraction(clientPlayerTable[player], player)
    
    -- Do ability
    local digEquipment = GetDigEquipment(player)
    local digAbility = digEquipment:GetCustomProperty("DigAbility"):WaitForObject()    
    digAbility:Activate()
    -- digging is complete by interruption
    clientPlayerTable[player].interruptHandle = digAbility.interruptedEvent:Connect(HandleAbilityInterruptClient)

    -- Start client specific timer
    clientPlayerTable[player].eTime = 0
    clientPlayerTable[player].timerHandle = Task.Spawn( function (dt) Timer(dt, player) end)
    clientPlayerTable[player].timerHandle.repeatCount = -1

    -- Setup intervals audio
    clientPlayerTable[player].numIntervals = NUM_INTERVALS
    clientPlayerTable[player].currentInterval = 0
    if INTERVAL_AUDIO ~= nil and not clientPlayerTable[player].intervalAudio then
        local temp = World.SpawnAsset(INTERVAL_AUDIO)
        clientPlayerTable[player].intervalAudio = World.SpawnAsset(INTERVAL_AUDIO):GetCustomProperty("Track"):WaitForObject()
    end

	if CAMERA ~= nil then
	    -- Set new camera
	    CAMERA.currentDistance = START_CAM_DIST
	    local playerPos = player:GetWorldPosition()
	    local playerForward = player:GetWorldTransform():GetForwardVector()
	    CAMERA:SetWorldPosition(playerPos + playerForward * 200 + Vector3.UP * 100 + player:GetWorldTransform():GetRightVector() * 100)
	    CAMERA:LookAt(args.position)
	    player:SetOverrideCamera(CAMERA, .3)
    end
    
    Events.Broadcast("StartDigging")
end

interaction.ClientStopInteraction = function (player)
    log("[CLIENT] Stop interaction " .. script.name .. " on " .. player.name)
end

interaction.ServerHandleBindingPressed = function (player, binding)

end

return interaction