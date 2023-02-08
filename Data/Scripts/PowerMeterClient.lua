local LOCAL_PLAYER = Game.GetLocalPlayer()

local function GetPower()
    local data = LOCAL_PLAYER:GetPrivateNetworkedData("META_Power")
    if not data then 
        return 0, 100
    else
        return data.power, data.maxPower
    end
end

_G["META_Power"] = {
    GetPower = GetPower
}