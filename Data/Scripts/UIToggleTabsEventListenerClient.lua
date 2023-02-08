local parent = script.parent
local propTabs = script:GetCustomProperty("Tabs"):WaitForObject()
local propTabButtons = script:GetCustomProperty("TabButtons"):WaitForObject()
local propDefaultTabIndex = script:GetCustomProperty("DefaultTabIndex")
local propUniqueID = script:GetCustomProperty("UniqueID")
local openSound = script:GetCustomProperty("OpenSound")
local closeSound = script:GetCustomProperty("CloseSound")

local tabs = {}

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)
end

function ToggleParent(toggle)
    if toggle then
        parent.visibility = Visibility.INHERIT
        if openSound then
            World.SpawnAsset(openSound)
        end
    else
        parent.visibility = Visibility.FORCE_OFF
        if closeSound then
            World.SpawnAsset(closeSound)
        end
    end
    SetUIInteraction(toggle)
end

function TriggerTabById(uniqueId)
    for _, tabData in ipairs(tabs) do
        if uniqueId == tabData.uniqueId then
            tabData.tab.visibility = Visibility.INHERIT
            tabData.button:SetButtonColor(tabData.button:GetHoveredColor())
        else
            tabData.tab.visibility = Visibility.FORCE_OFF
            tabData.button:SetButtonColor(tabData.button.clientUserData.buttonColor)
        end
    end
end

function TriggerTabByIndex(index)
    for i, tabData in ipairs(tabs) do
        if index == i then
            tabData.tab.visibility = Visibility.INHERIT
            tabData.button:SetButtonColor(tabData.button:GetHoveredColor())
        else
            tabData.tab.visibility = Visibility.FORCE_OFF
            tabData.button:SetButtonColor(tabData.button.clientUserData.buttonColor)
        end
    end
end

function IsUniqueIdInTab(uniqueId)
    for _, tabData in ipairs(tabs) do
        if uniqueId == tabData.uniqueId then
            return true
        end
    end
    return false
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
        ToggleParent(toggle)
        TriggerTabByIndex(propDefaultTabIndex)
    elseif IsUniqueIdInTab(uniqueId) then
        ToggleParent(toggle)
        if toggle then
            TriggerTabById(uniqueId)
        end
    else
        parent.visibility = Visibility.FORCE_OFF
	end
end

function OnButtonClicked(button)
    for _, tabData in ipairs(tabs) do
        if button == tabData.button then
            TriggerTabById(tabData.uniqueId)
        end
    end
end

-- Initialize
for i, child in ipairs(propTabs:GetChildren()) do
    table.insert(tabs, {tab = child,
                        uniqueId = child:GetCustomProperty("UniqueID"),
                        button = propTabButtons:GetChildren()[i]})
end
for _, tabData in ipairs(tabs) do
    tabData.button.clientUserData.buttonColor = tabData.button:GetButtonColor()
    tabData.button.clickedEvent:Connect(OnButtonClicked)
    tabData.visibility = Visibility.FORCE_OFF
end

Events.Connect("ToggleUI", OnToggleUI)
parent.visibility = Visibility.FORCE_OFF