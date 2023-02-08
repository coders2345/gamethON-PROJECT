local API = require(script:GetCustomProperty("BalloonRoyaleAPI"))
local ROOT = script.parent

local BALLOON_WEAPON = script:GetCustomProperty("BalloonWeapon")

local COUNTDOWN_TIME = 5 -- usually 20
local startCountdownTime = 0


local function ClearEquipment(player)
    local equipment = player:GetEquipment()
    for _, object in pairs(equipment) do
        object:Unequip()
        Task.Spawn(function()
            Task.Wait(1)
            if Object.IsValid(object) then
                object:Destroy()
            end
        end)
    end
end

function OnBalloonShot(player, otherPlayer)
    if API.IsPlayerParticipating(otherPlayer) then
        otherPlayer:SetResource(API.GetResourceName(), 0)
        otherPlayer.animationStance = "unarmed_stance"

        ClearEquipment(otherPlayer)

        Events.BroadcastToAllPlayers("PopBalloon", player, otherPlayer)

        if API.GetParticipatingPlayerCount() == 1 then
            -- If we only have 1 player left, find out who it is and announce them the winner
            for _, otherPlayer in ipairs(Game.GetPlayers()) do
                if API.IsPlayerParticipating(otherPlayer) then
                    WinTheBalloonGame(otherPlayer)
                    return
                end
            end
        end
    end
end

function ExplodePlayersBalloon(player)
    ClearEquipment(player)
    Task.Wait(2)
    if not Object.IsValid(player) then return end

    player:SetResource(API.GetResourceName(), 0)
    player.animationStance = "unarmed_stance"
end

function ForfeitPlayer(player)
    player:SetResource(API.GetResourceName(), 0)
    player.animationStance = "unarmed_stance"

    ClearEquipment(player)

    if API.GetParticipatingPlayerCount() == 1 then
        -- If we only have 1 player left, find out who it is and announce them the winner
        for _, otherPlayer in ipairs(Game.GetPlayers()) do
            if API.IsPlayerParticipating(otherPlayer) then
                WinTheBalloonGame(otherPlayer)
                return
            end
        end
    end
end

local function SetupPlayerForGame(player)
    local weapon = World.SpawnAsset(BALLOON_WEAPON)
    player.serverUserData.balloonWeapon = weapon
    weapon:Equip(player)
    player:SetResource("Balloon", 1) -- use any index for any balloon
end

function OnJoinBalloonRoyale(player)

    if API.IsPlayerParticipating(player) then
        Events.BroadcastToPlayer(player,"DisplayMessage","You're already playing Balloon Royale!",7)
        return
    elseif API.IsPlayerInQueue(player) then
        Events.BroadcastToPlayer(player,"DisplayMessage","You're already in Balloon Royale queue. Wait for the game to finish!",7)
        return
    end
    
    ClearEquipment(player)

    if API.GetCurrentState() == API.STATE.AVAILABLE and API.GetParticipatingPlayerCount() >= 0 then
        SetupPlayerForGame(player)
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined Balloon Royale!",8)
        end

        API.SetCurrentState(API.STATE.WAITING_ANOTHER_PLAYER)

    elseif API.GetCurrentState() == API.STATE.WAITING_ANOTHER_PLAYER and API.GetParticipatingPlayerCount() >= 1 then
        SetupPlayerForGame(player)
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined Balloon Royale!",8)
        end

        API.SetCurrentState(API.STATE.COUNTDOWN)
        startCountdownTime = time()

        -- If the player count is above 2 and we're in the coundown state then begin the countdown sequence.
    elseif API.GetCurrentState() == API.STATE.COUNTDOWN and API.GetParticipatingPlayerCount() >= 2 then
        SetupPlayerForGame(player)
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined Balloon Royale!",8)
        end

    elseif API.GetCurrentState() == API.STATE.COUNTDOWN and API.GetParticipatingPlayerCount() <= 1 then
        SetupPlayerForGame(player)
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined Balloon Royale!",8)
        end

        API.SetCurrentState(API.STATE.WAITING_ANOTHER_PLAYER)
        startCountdownTime = 0

    elseif API.GetCurrentState() == API.STATE.RUNNING and not API.IsPlayerInQueue(player) then
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale queue!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined the Balloon Royale queue!",8)
        end
        API.AddPlayerToQueue(player)
    else
        SetupPlayerForGame(player)
        API.SetCurrentState(API.STATE.AVAILABLE)
        if not swappedFromHtydGame then
            Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
        else
            Events.BroadcastToPlayer(player,"DisplayMessage","You left hop til you drop queue and joined Balloon Royale!",8)
        end
    end

    if API.GetCurrentState() == API.STATE.AVAILABLE and API.GetParticipatingPlayerCount() >= 2 then
        API.SetCurrentState(API.STATE.COUNTDOWN)
        startCountdownTime = time()
    end

    -- -- After count down, dont let you join
    -- if API.GetCurrentState() > API.STATE.COUNTDOWN then
    --     return
    -- end
end

function QueueAllPlayers()
    -- Auto queue all players
    for _, player in pairs(Game.GetPlayers()) do
        OnJoinBalloonRoyale(player)
    end
end

function WinTheBalloonGame(winnerPlayer)
    Events.BroadcastToAllPlayers("AnnounceBalloonRoyaleWinner", winnerPlayer)
    API.SetCurrentState(API.STATE.AVAILABLE)

    winnerPlayer.animationStance = "unarmed_dance_basic"
    Task.Spawn(function() ExplodePlayersBalloon(winnerPlayer) end)

    Task.Wait(3)

    QueueAllPlayers()

    API.SetCurrentState(API.STATE.COUNTDOWN)
    startCountdownTime = time()
end

function Tick()

    if API.GetCurrentState() == API.STATE.AVAILABLE and API.GetAmountOfQueuedPlayers() > 0 then
        local count = 0
        -- Take all players that are in queue and add them to the game.
        for _, player in pairs(API.GetQueuedPlayers()) do
            count = count + 0.2
            if Object.IsValid(player) and API.IsPlayerInQueue(player) then
                Task.Spawn(function()
                    Task.Wait(1+count)
                    -- May not exist after 1 second.
                    if Object.IsValid(player) then
                        Events.BroadcastToPlayer(player,"DisplayMessage","You joined Balloon Royale!",5)
                    end
                end)
                SetupPlayerForGame(player)
                API.RemovePlayerFromQueue(player)
            else
                API.RemovePlayerFromQueue(player)
            end
        end
        API.ClearQueuedPlayers()
    end

    if API.GetCurrentState() == API.STATE.WAITING_ANOTHER_PLAYER and API.GetParticipatingPlayerCount() <= 0 then
        API.SetCurrentState(API.STATE.AVAILABLE)
    end

    if API.GetCurrentState() == API.STATE.COUNTDOWN and API.GetParticipatingPlayerCount() < 2 then
        API.SetCurrentState(API.STATE.WAITING_ANOTHER_PLAYER)
    end

    if API.GetCurrentState() == API.STATE.COUNTDOWN then
        local ellapsedTime = time() - startCountdownTime
        local remainingTime = math.max(0, COUNTDOWN_TIME - ellapsedTime)
        API.SetTimeRemaining(math.floor(remainingTime))

        if remainingTime == 0 then
            StartTheRoyale()
            API.SetCurrentState(API.STATE.RUNNING)
        end
    end

    -- Doing this every frame because theres other code changing the players animation stance
    if API.GetCurrentState() == API.STATE.RUNNING then
        for _, player in pairs(Game.GetPlayers()) do
            if API.IsPlayerParticipating(player) then
                player.animationStance = "1hand_pistol_aim"

                if player.isFlying then
                    player:ActivateWalking()
                end
            end
        end
    end
end

function StartTheRoyale()
    for _, player in pairs(Game.GetPlayers()) do
        if API.IsPlayerParticipating(player) then
            player.animationStance = "1hand_pistol_aim"
        end
    end
end

function OnPlayerLeft(player)
    Task.Wait()

    local playerCount = API.GetParticipatingPlayerCount()
    local currentState = API.GetCurrentState()

    -- While in countdown or awaiting another player, people may leave so adjust back accordingly
    if currentState == API.STATE.COUNTDOWN or API.STATE.WAITING_ANOTHER_PLAYER then
        if playerCount == 0 then
            API.SetCurrentState(API.STATE.AVAILABLE)
        elseif playerCount == 1 then
            if currentState == API.STATE.COUNTDOWN then
                API.SetCurrentState(API.STATE.WAITING_ANOTHER_PLAYER)
            end
        end
    end

    -- If the game mode is running, but a player left and now no one is playing, there was no winner, end the game
    if currentState == API.STATE.RUNNING then
        local participatingPlayerCount = API.GetParticipatingPlayerCount()
        if participatingPlayerCount == 1 then
            for _, otherPlayer in ipairs(Game.GetPlayers()) do
                if API.IsPlayerParticipating(otherPlayer) then
                    WinTheBalloonGame(otherPlayer)
                    return
                end
            end
            -- If we reached here, just change the state back to available...no one one
            API.SetCurrentState(API.STATE.AVAILABLE)

        elseif participatingPlayerCount == 0 then
            API.SetCurrentState(API.STATE.AVAILABLE)
        end
    end
end

ROOT.destroyEvent:Connect(function(_)
    API.ClearQueuedPlayers()
    local allPlayers = API.GetParticipatingPlayers()
    for _, player in pairs(allPlayers) do
        if Object.IsValid(player) then
            player:SetResource(API.GetResourceName(),0)
            if Object.IsValid(player.serverUserData.balloonWeapon) then
                player.serverUserData.balloonWeapon:Destroy()
                player.serverUserData.balloonWeapon = nil
            end
        end
    end
end)

-- on player joined/left functions need to be defined before calling event:Connect()
local onPlayerLeft = Game.playerLeftEvent:Connect(OnPlayerLeft)
ROOT.destroyEvent:Connect(function()
    if onPlayerLeft then
        onPlayerLeft:Disconnect()
        onPlayerLeft = nil
    end
end)

local shotBalloonHandle = Events.ConnectForPlayer("ShotBalloon", OnBalloonShot)
local askJoinHandle = Events.ConnectForPlayer("AskJoinBalloonRoyale", OnJoinBalloonRoyale)

-- Locally for when a request comes in from the server
local joinRoyaleEventHandle = Events.Connect("JoinBalloonRoyale", OnJoinBalloonRoyale)
local removeFromGameHandle = Events.Connect("BalloonRoyaleRemoveFromGame",ExplodePlayersBalloon)
local forfeitPlayerHandle = Events.Connect("ForfeitPlayer",ForfeitPlayer)

ROOT.destroyEvent:Connect(function()
    shotBalloonHandle:Disconnect()
    askJoinHandle:Disconnect()
    joinRoyaleEventHandle:Disconnect()
    removeFromGameHandle:Disconnect()
    forfeitPlayerHandle:Disconnect()
end)

QueueAllPlayers()