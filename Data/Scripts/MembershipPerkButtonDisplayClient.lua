local PERK_BUTTON = script.parent
local API = require(script:GetCustomProperty("API"))

local LOCAL_PLAYER = Game.GetLocalPlayer()
local PERK = PERK_BUTTON:GetPerkReference()

function UpdateButtonInteractivity()
    local isMember, activePerk = API.IsPlayerMember(LOCAL_PLAYER)

    if isMember then
        if activePerk == PERK then
            PERK_BUTTON.isInteractable = true
        else
            PERK_BUTTON.isInteractable = false
        end
    else
        PERK_BUTTON.isInteractable = true
    end
end

function OnPerkChangedEvent(player)
    if player == LOCAL_PLAYER then
        UpdateButtonInteractivity()
    end
end

LOCAL_PLAYER.perkChangedEvent:Connect(OnPerkChangedEvent)
