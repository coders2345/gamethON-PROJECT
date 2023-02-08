local BADGE = script.parent
local BUTTON = script:GetCustomProperty("Button"):WaitForObject()
local EVENT_TO_LISTEN = script:GetCustomProperty("EventToListen")

function OnEventToListen(trigger)
    Task.Wait(.1)

    if trigger and BUTTON.isInteractable then
        BADGE.visibility = Visibility.INHERIT
    else
        BADGE.visibility = Visibility.FORCE_OFF
    end
end

function OnButtonClicked()
    BADGE.visibility = Visibility.FORCE_OFF
end

Events.Connect(EVENT_TO_LISTEN, OnEventToListen)
BUTTON.clickedEvent:Connect(OnButtonClicked)
BADGE.visibility = Visibility.FORCE_OFF