local INVITATION = script:GetCustomProperty("Invitation"):WaitForObject()
local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))

local PARTICIPANTS_VALUE = script:GetCustomProperty("ParticipantsValue"):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()
local REMAINING_TIME_VALUE = script:GetCustomProperty("RemainingTimeValue"):WaitForObject()

local REMAINING_PLAYERS_VALUE = script:GetCustomProperty("RemainingPlayersValue"):WaitForObject()
local RUNNING = script:GetCustomProperty("Running"):WaitForObject()

local WINNER_NAME = script:GetCustomProperty("WinnerName"):WaitForObject()
local VICTORY = script:GetCustomProperty("Victory"):WaitForObject()

local PRESS_F6_TO_JOIN = script:GetCustomProperty("PressF6ToIgnore"):WaitForObject()

local PRESS_F5_TO_JOIN = script:GetCustomProperty("PressF5ToJoin"):WaitForObject()
local MESSAGE = script:GetCustomProperty("Message"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

VICTORY.visibility = Visibility.FORCE_OFF

--local playerWasParticipating = false

local BIND_F5_KEY = "ability_extra_54"
local BIND_F6_KEY = "ability_extra_55"
local ingoredInvite = false
local pressHandle = nil

function OnBindingPressed(whichPlayer, binding)
    local currentState = API.GetCurrentState()
    -- if (binding == BIND_F6_KEY) and not API.IsPlayerParticipating(LOCAL_PLAYER) then
    --     ingoredInvite = true
    -- end
    if (currentState == API.STATE.WAITING_ANOTHER_PLAYER or currentState == API.STATE.COUNTDOWN) and not ingoredInvite and LOCAL_PLAYER.clientUserData.insideHex then
        if (binding == BIND_F5_KEY) then
            Events.BroadcastToServer("AskJoinBalloonRoyale")
        end
    end
end

function UpdatePressF5ToJoin()
    -- if API.IsPlayerParticipating(LOCAL_PLAYER) then
    --     PRESS_F5_TO_JOIN.visibility = Visibility.FORCE_OFF
    --     PRESS_F6_TO_JOIN.visibility = Visibility.FORCE_OFF
    -- else
    --     PRESS_F5_TO_JOIN.visibility = Visibility.INHERIT
    --     PRESS_F6_TO_JOIN.visibility = Visibility.INHERIT
    -- end
end

local INITIAL_MESSAGE = MESSAGE.text

function Tick()
    if not API.DoesGameExist() then return end
    local currentState = API.GetCurrentState()
    
    if currentState == API.STATE.RUNNING then
        ingoredInvite = false
    end

    if currentState == API.STATE.AVAILABLE then
        --playerWasParticipating = false
        INVITATION.visibility = Visibility.FORCE_OFF
        RUNNING.visibility = Visibility.FORCE_OFF
    elseif currentState == API.STATE.WAITING_ANOTHER_PLAYER then
        INVITATION.visibility = Visibility.INHERIT
        PARTICIPANTS_VALUE.text = tostring(API.GetParticipatingPlayerCount())
        REMAINING_TIME_VALUE.text = "Waiting for another player"
        RUNNING.visibility = Visibility.FORCE_OFF
        --UpdatePressF5ToJoin()
    elseif currentState == API.STATE.COUNTDOWN then
        INVITATION.visibility = Visibility.INHERIT
        REMAINING_TIME_VALUE.text = "Starts in " .. tostring(API.GetTimeRemaining()) 
        PARTICIPANTS_VALUE.text = tostring(API.GetParticipatingPlayerCount())
        RUNNING.visibility = Visibility.FORCE_OFF
        -- UpdatePressF5ToJoin()
        -- if API.IsPlayerParticipating(LOCAL_PLAYER) then
        --     playerWasParticipating = true
        -- else
        --     playerWasParticipating = false
        -- end
        MESSAGE.text = INITIAL_MESSAGE
    else
        INVITATION.visibility = Visibility.FORCE_OFF
        RUNNING.visibility = Visibility.FORCE_OFF
        if currentState == API.STATE.RUNNING then
            if not API.IsPlayerParticipating(LOCAL_PLAYER) then
                MESSAGE.text = "Good try! Waiting for match to finish..."
            end
            RUNNING.visibility = Visibility.INHERIT
            REMAINING_PLAYERS_VALUE.text = tostring(API.GetParticipatingPlayerCount())
        end
    end

    if not LOCAL_PLAYER.clientUserData.insideHex then
        INVITATION.visibility = Visibility.FORCE_OFF
    end
end

local pressHandle = LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)

function OnBalloonWinner(winnerPlayer)
    if not Object.IsValid(VICTORY) then return end
    VICTORY.visibility = Visibility.INHERIT
    WINNER_NAME.text = ""
    if Object.IsValid(winnerPlayer) then
        WINNER_NAME.text = winnerPlayer.name
    end
    Task.Wait(4)
    if Object.IsValid(VICTORY) then
        VICTORY.visibility = Visibility.FORCE_OFF
    end
end

local winnerAnnounceHandle = Events.Connect("AnnounceBalloonRoyaleWinner", OnBalloonWinner)

INVITATION.destroyEvent:Connect(function()
    pressHandle:Disconnect()
    winnerAnnounceHandle:Disconnect()
end)

