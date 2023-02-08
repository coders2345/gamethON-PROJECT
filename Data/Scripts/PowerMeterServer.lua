local DefaultMaxPower = 100
local RegenAmount = 0.2
local RegenPeriod = 0.1

local nextRegen = 0

local function SetPowerData(player, newAmount)
    local data = player:GetPrivateNetworkedData("META_Power")
    if not data then return end
    data.power = newAmount
    player:SetPrivateNetworkedData("META_Power", data)
end

local function AddPower(player, amount)
    local currentPower = player.serverUserData.Power or DefaultMaxPower
    if player.serverUserData.MaxPower == nil then return end
    player.serverUserData.Power = CoreMath.Clamp(currentPower + amount, 0, player.serverUserData.MaxPower)
    SetPowerData(player, player.serverUserData.Power)
end

local function RemovePower(player, amount)
    local currentPower = player.serverUserData.Power or DefaultMaxPower
    if player.serverUserData.MaxPower == nil then return end
    player.serverUserData.Power = CoreMath.Clamp(currentPower - amount, 0, player.serverUserData.MaxPower)
    SetPowerData(player, player.serverUserData.Power)
    player.serverUserData.nextRegen = time() + 0.5
end

local function ResetPower(player)
    player.serverUserData.Power = player.serverUserData.MaxPower
    SetPowerData(player, player.serverUserData.Power)
end

local function CheckPower(player, amount)
    return player.serverUserData.Power >= amount
end

function OnPlayerRespawn(player)
    ResetPower(player)
end


function OnPlayerJoined(player)
    player.serverUserData.Power = DefaultMaxPower
    player.serverUserData.MaxPower = DefaultMaxPower
    local powerData = {power = DefaultMaxPower, maxPower = DefaultMaxPower}
    player:SetPrivateNetworkedData("META_Power", powerData)
    player.respawnedEvent:Connect(OnPlayerRespawn)
end

function Tick()
    if time() > nextRegen then
        nextRegen = time() + RegenPeriod
        for _, player in ipairs(Game.GetPlayers()) do
            local playerNextRegen = player.serverUserData.nextRegen or 0
            if Object.IsValid(player) and time() > playerNextRegen then
                AddPower(player, RegenAmount)
                --print(player.name.." | "..tostring(player.serverUserData.Power))
            end
        end
    end
end

_G["META_Power"] = {
    AddPower = AddPower,
    RemovePower = RemovePower,
    ResetPower = ResetPower,
    CheckPower = CheckPower
}


for k,v in pairs(Game.GetPlayers()) do
    OnPlayerJoined(v)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)