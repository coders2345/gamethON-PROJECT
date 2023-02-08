local interface = script.parent
local propBinding = script:GetCustomProperty("Binding")
local propCloseButton = script:GetCustomProperty("CloseButton"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnBindingPressed(whichPlayer, binding)
    if (binding == propBinding) then
        if whichPlayer == LOCAL_PLAYER then
            Events.Broadcast("CropSelectionToggle")
        end
        --TriggerInterface()
	end
end

--[[ function TriggerInterface()
    if interface:IsVisibleInHierarchy() then
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
        interface.visibility = Visibility.FORCE_OFF
    else
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
        interface.visibility = Visibility.INHERIT
    end
end ]]


function ToggleUI (uniqueId, toggle)
    if uniqueId == "MarketSellUI" then
        Events.Broadcast("CropSelectionToggle")
    end
end

--LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)

--propCloseButton.clickedEvent:Connect(TriggerInterface)

interface.visibility = Visibility.FORCE_OFF

Events.Connect("ToggleUI", ToggleUI)