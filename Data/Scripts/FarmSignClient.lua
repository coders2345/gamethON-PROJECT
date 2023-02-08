local propAPIFarms = require(script:GetCustomProperty("APIFarms"))
local propFarm = script:GetCustomProperty("Farm"):WaitForObject()
local propNAME = script:GetCustomProperty("NAME"):WaitForObject()
local VIP_LABEL = script:GetCustomProperty("FarmVIPLabel"):WaitForObject()
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

function ShowLabel()
    local state = propAPIFarms.GetFarmState(propFarm.id)

    propNAME.text = state.farmOwner.name.."'s<br>Farm"

    if state.farmOwner == LOCAL_PLAYER then
        propNAME:SetColor(Color.BLUE)
    else
        propNAME:SetColor(Color.WHITE)
    end

    if API_MEMBERSHIP.IsPlayerMember(state.farmOwner) then
        VIP_LABEL.text = "VIP"
    else
        VIP_LABEL.text = ""
    end
end

function HideLabel()
    VIP_LABEL.text = ""
    propNAME.text = ""
end

function Tick()
    local state = propAPIFarms.GetFarmState(propFarm.id)

    if state and Object.IsValid(state.farmOwner) then
        ShowLabel()
        propNAME:LookAtLocalView(true)
        VIP_LABEL:LookAtLocalView(true)
    else
        HideLabel()
    end
end

HideLabel()