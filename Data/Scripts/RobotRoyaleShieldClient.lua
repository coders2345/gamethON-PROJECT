local ROOT = script.parent
local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))
local SHIELD = script:GetCustomProperty("Group"):WaitForObject()
local SHIELD_ROOT = script:GetCustomProperty("ShieldRoot"):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()

local matchStartTime = 0
local shieldVisible = false
local killedByShield = false
local matchActive = false

SHIELD.visibility = Visibility.FORCE_OFF

local SHIELD_SHRINK_DURATION = 60
local SHIELD_DELAY = 1

function Tick()
    if not matchActive then return end

    -- -- We need to know if they're in the play area.
    -- local r = math.max(0, (0 - SHIELD_DELAY)) / SHIELD_SHRINK_DURATION
    -- local scale = 1.02 + (1-r) * 2.5

    -- local playerPosition = LOCAL_PLAYER:GetWorldPosition()
    -- LOCAL_PLAYER.clientUserData.insideHex = true
    -- for i=1,6 do
    --     local dir = Rotation.New(0, 0, 60 * i) * Vector3.FORWARD
    --     local pos = dir * 1600 * scale

    --     if (playerPosition - pos) .. dir > 0 then
    --         -- We are outside the range
    --         LOCAL_PLAYER.clientUserData.insideHex = false
    --     end
    -- end



    local runningTime = time() - matchStartTime

    if not shieldVisible then
        if runningTime > SHIELD_DELAY then
            if API.IsPlayerParticipating(LOCAL_PLAYER) then
                ShowShield()
            end
        end
    end

    if shieldVisible then
        local r = math.max(0, (runningTime - SHIELD_DELAY)) / SHIELD_SHRINK_DURATION
        local scale = 1.02 + (1-r) * 2.5
        SHIELD:SetScale(scale * Vector3.ONE)
        
        if not killedByShield then
            local playerPosition = LOCAL_PLAYER:GetWorldPosition()
            local playerInsideHex = true
            for i=1,6 do
                local dir = Rotation.New(0, 0, 60 * i) * Vector3.FORWARD
                local pos = SHIELD_ROOT:GetWorldPosition() + dir * 1600 * scale

                -- CoreDebug.DrawLine(pos,playerPosition,{
                --     duration = 0.01,
                --     thickness = 5,
                --     color = Color.RED,
                -- })
    
                if (playerPosition - pos) .. dir > 0 then
                    -- We are outside the range
                    playerInsideHex = false
                end
            end
            if not playerInsideHex then
                killedByShield = true
                Events.BroadcastToServer("ShotBalloon", LOCAL_PLAYER) -- make reliable!
            end
        end
    end
end

function OnGameStateChanged(state)
    if state == API.STATE.RUNNING then
        ChangeColorOfObjects_R(SHIELD_ROOT,Color.RED)
        killedByShield = false
        matchActive = true
        matchStartTime = time()
    elseif state == API.STATE.COUNTDOWN then
        ShowShield()
    -- else
    --     matchActive = false
    --     HideShield()
    end
end

function ChangeColorOfObjects_R(root,color)
    if #root:GetChildren() > 0 then
        for _, child in pairs(root:GetChildren()) do
            ChangeColorOfObjects_R(child,color)
        end
    end
    if root:IsA("StaticMesh") then
        local materialSlot = root:GetMaterialSlots()[1]
        materialSlot:SetColor(color)
    end
end

function ShowShieldGhost()
    shieldVisible = true
    SHIELD.visibility = Visibility.INHERIT
end

function ShowShield()
    shieldVisible = true
    SHIELD.visibility = Visibility.INHERIT
end

function HideShield()
    shieldVisible = false
    SHIELD.visibility = Visibility.FORCE_OFF
end

function OnBalloonWinner()
    matchActive = false
    HideShield()
end


local gameStateChangeHandle = Events.Connect("BalloonRoyale.GameStateChanged", OnGameStateChanged)
local announceBalloonWinnerHandle = Events.Connect("AnnounceBalloonRoyaleWinner", OnBalloonWinner)

ROOT.destroyEvent:Connect(function()
    gameStateChangeHandle:Disconnect()
    announceBalloonWinnerHandle:Disconnect()
end)

Task.Wait(2)

if API.GetCurrentState() ~= API.STATE.RUNNING then
    local runningTime = time() - matchStartTime
    local r = math.max(0, (0 - SHIELD_DELAY)) / SHIELD_SHRINK_DURATION
    local scale = 1 + (1-r) * 2.5
    SHIELD:SetScale(scale * Vector3.ONE)

    ShowShieldGhost()
    ChangeColorOfObjects_R(SHIELD_ROOT,Color.BLUE)
end