local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local UPGRADES_LIST = require(script:GetCustomProperty("UpgradesList"))

local propContainer = script:GetCustomProperty("Container"):WaitForObject()
local propProgressBar = script:GetCustomProperty("BarnProgress"):WaitForObject()
local propProgressText = script:GetCustomProperty("ProgressText"):WaitForObject()
local propExpandButton = script:GetCustomProperty("ExpandButton"):WaitForObject()
local propPrice = script:GetCustomProperty("Price"):WaitForObject()
local propExpandText = script:GetCustomProperty("ExpandText"):WaitForObject()
local propBarnLevelText = script:GetCustomProperty("BarnLevelText"):WaitForObject()
local propResourcesPanel = script:GetCustomProperty("ResourcesPanel"):WaitForObject()
local propResourcePanelHelper = script:GetCustomProperty("ResourcePanelHelper")
local VIP_LABEL = script:GetCustomProperty("VIPDiscountText"):WaitForObject()

local Get = function (object, key) return object:GetCustomProperty(key):WaitForObject() end
local LOCAL_PLAYER = Game.GetLocalPlayer()

local barnLevel = 1
local columns = 5

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)
end

function SortInstances(instance1, instance2)
    local instance1Resource = STATS_LIBRARY.GetStat(LOCAL_PLAYER, instance1.clientUserData.resource)
    local instance2Resource = STATS_LIBRARY.GetStat(LOCAL_PLAYER, instance2.clientUserData.resource)

    if instance1Resource ~= instance2Resource then
        return instance1Resource > instance2Resource
    end


    return instance1.clientUserData.resource < instance2.clientUserData.resource
end

function PopulateUI()
    for _, value in ipairs(propResourcesPanel:GetChildren()) do
        value:Destroy()
    end

    local row = math.ceil(#API_BARN_STORAGE.GetValidResources() / columns)
    local size = math.floor(propResourcesPanel.width / columns)
    local hDistance = math.floor(size/2)

    for _, resource in ipairs(API_BARN_STORAGE.GetValidResources()) do
        local instance = World.SpawnAsset(propResourcePanelHelper, {parent = propResourcesPanel})
        local iconColor = Color.WHITE
        local backgroundColor = Get(instance, "Background"):GetColor()
        instance.width = size
        instance.height = size

        Get(instance, "ResourceName").text = ""..tostring(STATS_LIST[resource].name)
        if STATS_LIST[resource].icon then
            Get(instance, "ResourceIcon"):SetImage(STATS_LIST[resource].icon)
            if STATS_LIBRARY.GetStat(LOCAL_PLAYER, resource) == 0 then
                iconColor.a = 0.2
                backgroundColor.a = 0.2
                Get(instance, "Background"):SetColor(backgroundColor)
            end
            Get(instance, "ResourceIcon"):SetColor(iconColor)
        end
        Get(instance, "ResourceCount").text = "x"..tostring(STATS_LIBRARY.GetStat(LOCAL_PLAYER, resource))
        instance.clientUserData.resource = resource
    end

    local sortedTable = propResourcesPanel:GetChildren()
    table.sort(sortedTable, SortInstances)

    local index = 0
    for r = 0, row - 1 do
        for v = 0, columns - 1 do
            index = index + 1
            if index <= #sortedTable then
                local template = sortedTable[index]
                template.x = hDistance + size * v
                template.y = hDistance + size * r
            end
        end
    end
end

function Refresh()
    barnLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "BarnLevel")
    local barnCurrentStorage = API_BARN_STORAGE.GetBarnCurrentStorage(LOCAL_PLAYER)
    local barnMaxStorage = API_BARN_STORAGE.GetBarnMaxStorage(barnLevel)
    local money = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "Money")
    local nextLevelCost = API_BARN_STORAGE.GetBarnCost(barnLevel + 1)

    propProgressBar.progress = CoreMath.Clamp(barnCurrentStorage / barnMaxStorage)
    propProgressText.text = string.format("%d / %d", barnCurrentStorage, barnMaxStorage)

    if barnLevel < #UPGRADES_LIST["BarnLevel"] then
        propBarnLevelText.text = "Barn Level "..tostring(barnLevel)

        if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
            local discount = API_MEMBERSHIP.GetSellBonus(API_MEMBERSHIP.BARN_DISCOUNT)
            local totalDiscount = CoreMath.Round(nextLevelCost * discount)
            nextLevelCost = nextLevelCost - totalDiscount
            VIP_LABEL.text = string.format("%.0f%s VIP Discount", discount * 100, "%")
        else
            VIP_LABEL.text = ""
        end

        if money < nextLevelCost then
            propExpandButton.isInteractable = false
            propExpandText.text = string.format("Not enough money to expand storage.")
            propPrice:SetColor(Color.RED)
        else
            propExpandButton.isInteractable = true
            propExpandText.text = string.format("Expand to %d!", API_BARN_STORAGE.GetBarnMaxStorage(barnLevel + 1))
            propPrice:SetColor(Color.EMERALD)
        end
        propPrice.text = UTILITIES_LIBRARY.FormatMoney(nextLevelCost)
    else
        propBarnLevelText.text = "Max Barn Level "..tostring(barnLevel)
        propExpandButton.visibility = Visibility.FORCE_OFF
        propExpandText.visibility = Visibility.FORCE_OFF
    end

    PopulateUI()
end

function Upgrade()
    Events.BroadcastToServer("BarnStorageUpgrade", "BarnLevel")
    propExpandButton.isInteractable = false
    Task.Wait(0.5)
    Refresh()
end

function OnStatChanged(player, statId, value)
    if statId == "BarnLevel" or 
    API_BARN_STORAGE.IsResourceValid(statId) then
        Refresh()
    end
end

function OnToggleUI(key)
    if key == "BarnUI" then
        Refresh()
    end
end

Refresh()

Events.Connect("StatChangedEvent", OnStatChanged)
Events.Connect("ToggleUI", OnToggleUI)
propExpandButton.clickedEvent:Connect(Upgrade)
propContainer.visibility = Visibility.FORCE_OFF