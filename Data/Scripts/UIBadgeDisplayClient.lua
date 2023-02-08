local BADGE = script.parent
local EVENT_TO_LISTEN = script:GetCustomProperty("EventToListen")

function OnEventToListen(trigger)
    if trigger then
        BADGE.visibility = Visibility.INHERIT
    else
        BADGE.visibility = Visibility.FORCE_OFF
    end
end

Events.Connect(EVENT_TO_LISTEN, OnEventToListen)
BADGE.visibility = Visibility.FORCE_OFF