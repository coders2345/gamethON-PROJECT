local API = require(script:GetCustomProperty("TinyTanksRoyaleAPI"))
local ROOT = script.parent

local TANKS_FOLDER = script:GetCustomProperty("Tanks"):WaitForObject()
local TANKS = {}
for _, tankFolder in pairs(TANKS_FOLDER:GetChildren()) do
    local assetID = tankFolder:GetCustomProperty("Tank")
    table.insert(TANKS,1,assetID)
end


local TANK_SPAWNS = script:GetCustomProperty("TankSpawns"):WaitForObject():GetChildren()

--local TINY_TANK_ASSET = script:GetCustomProperty("TinyTank")
local VICTORY_VFX_ASSET = script:GetCustomProperty("VictoryVFX")
local TANK_EXPLOSION_ASSET = script:GetCustomProperty("TankExplosion")


local COUNTDOWN_TIME = 5 -- usually 20
local MAX_DISTANCE_NEEDED_TO_SPAWN_TANK = 250
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

local currentIndex = 1
-- Returns a position of a free spot that a tank can spawn in without getting flung
local function GetFreeTankSpawnPosition()
    local spawn = TANK_SPAWNS[currentIndex]
    currentIndex = currentIndex + 1
    if not TANK_SPAWNS[currentIndex] then
        currentIndex = 1
    end
    return spawn:GetWorldPosition()
    -- for _, spawn in pairs(TANK_SPAWNS) do
    --     local nearestPlayer = Game.FindPlayersInSphere(spawn:GetWorldPosition(), 400)
    --     if not nearestPlayer[1] then
    --         -- Check if there is a floor and there is enough space.
    --         local spawnPosition = spawn:GetWorldPosition()
    --         local hitResult = World.Raycast(spawnPosition,spawnPosition + Vector3.UP * -5000)
    --         if hitResult and (hitResult:GetImpactPosition() - spawnPosition).size > MAX_DISTANCE_NEEDED_TO_SPAWN_TANK then
    --             return spawnPosition
    --         end
    --     end
    -- end
end

-- function OnBalloonShot(player, otherPlayer)
--     if API.IsPlayerParticipating(otherPlayer) then
--         otherPlayer:SetResource(API.GetResourceName(), 0)
--         otherPlayer.animationStance = "unarmed_stance"

--         ClearEquipment(otherPlayer)

--         Events.BroadcastToAllPlayers("PopBalloon", player, otherPlayer)

--         if API.GetParticipatingPlayerCount() == 1 then
--             -- If we only have 1 player left, find out who it is and announce them the winner
--             for _, otherPlayer in ipairs(Game.GetPlayers()) do
--                 if API.IsPlayerParticipating(otherPlayer) then
--                     WinTheBalloonGame(otherPlayer)
--                     return
--                 end
--             end
--         end
--     end
-- end


local function SetupPlayerForGame(player)
    local vehicle = World.SpawnAsset( TANKS[math.random(1,#TANKS)] ,{ scale = Vector3.New(0.4) })
    player.serverUserData.tinyTank = vehicle

    local spawnPosition = GetFreeTankSpawnPosition()
    if spawnPosition then
        vehicle:SetWorldPosition(spawnPosition)
    end

    player:SetResource(API.GetResourceName(),1)

    player:Respawn()
    vehicle:SetDriver(player)


    --vehicle.turnSpeed = 300 -- Attempt to force turn speed.

    -- Tell the player to set their override camera to the tanks camera.
    Task.Spawn(function()
        Events.BroadcastToPlayer(player,"TTRE")
    end,2)


    local turretWeapon = vehicle:GetCustomProperty("TurretWeapon"):WaitForObject()

    for _, tankAbility in pairs(turretWeapon:GetAbilities()) do
        tankAbility.isEnabled = false
    end

    local weaponEnableHandle = Task.Spawn(function()
        while API.DoesGameExist() and API.GetCurrentState() ~= API.STATE.RUNNING do Task.Wait() end
        if Object.IsValid(turretWeapon) then
            for _, tankAbility in pairs(turretWeapon:GetAbilities()) do
                tankAbility.isEnabled = true
            end
        end
    end,2)

    local diedEvent = nil
    diedEvent = player.diedEvent:Connect(function(_,damage)
        diedEvent:Disconnect()
        if API.IsPlayerParticipating(player) then
            World.SpawnAsset(TANK_EXPLOSION_ASSET,{ position = player:GetWorldPosition() })

            player:SetResource(API.GetResourceName(),0)

            if player == damage.sourcePlayer then return end

            -- Notify the players that the player has blew someone up.
            Events.BroadcastToAllPlayers("TankBlewUp",damage.sourcePlayer,player)
        end
    end)

    vehicle.driverExitedEvent:Connect(function(_,player)
        Task.Wait(3)
        if Object.IsValid(vehicle) then
            vehicle:Destroy()
        end
    end)

end

function ExplodePlayersBalloon(player)
    ClearEquipment(player)
    Task.Wait(2)
    if not Object.IsValid(player) then return end

    --player:SetResource(API.GetResourceName(), 0)
    player.animationStance = "unarmed_stance"
end

function QueueAllPlayers()
    for _, player in pairs(Game.GetPlayers()) do
        OnJoinBalloonRoyale(player)
    end
end

function WinTheBalloonGame(winnerPlayer)
    Events.BroadcastToAllPlayers("AnnounceBalloonRoyaleWinner", winnerPlayer)

    World.SpawnAsset(VICTORY_VFX_ASSET,{ position = winnerPlayer:GetWorldPosition(), rotation = winnerPlayer:GetWorldRotation() })

    --winnerPlayer.animationStance = "unarmed_dance_basic"
    Task.Spawn(function()
        if Object.IsValid(winnerPlayer) then
            winnerPlayer:SetResource(API.GetResourceName(),0)
            local vehicle = winnerPlayer.serverUserData.tinyTank
            if Object.IsValid(vehicle) then
                vehicle:Destroy()
            end
            winnerPlayer.serverUserData.tinyTank = nil
        end
    end,3)

    Task.Wait(3)

    API.SetCurrentState(API.STATE.AVAILABLE)

    Task.Wait(2)

    QueueAllPlayers()

    -- Tell project godmode to quit the game.
    -- Events.Broadcast("PGtinytanksquit")

    -- local allPlayers = Game.GetPlayers()
    -- for _, player in pairs(allPlayers) do
    --     Task.Wait(0.15)
    --     SetupPlayerForGame(player)
    -- end

    -- API.SetCurrentState(API.STATE.COUNTDOWN)
    -- startCountdownTime = time()
end

function ForfeitPlayer(player)
    --player:SetResource(API.GetResourceName(), 0)
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
        startCountdownTime = time()
        API.SetCurrentState(API.STATE.COUNTDOWN)
    end

    -- -- After count down, dont let you join
    -- if API.GetCurrentState() > API.STATE.COUNTDOWN then
    --     return
    -- end
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

    -- If there is only 1 player left then determine that player as the winner and end the game.
    if API.GetCurrentState() == API.STATE.RUNNING then
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

    if API.GetCurrentState() == API.STATE.COUNTDOWN then
        local ellapsedTime = time() - startCountdownTime
        local remainingTime = math.max(0, COUNTDOWN_TIME - ellapsedTime)
        API.SetTimeRemaining(math.floor(remainingTime))

        if remainingTime == 0 then
            API.SetCurrentState(API.STATE.RUNNING)
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

    -- Remove the tank if the player leaves the game.
    if API.IsPlayerParticipating(player) then
        if Object.IsValid(player.serverUserData.tinyTank) then
            player.serverUserData.tinyTank:Destroy()
            player.serverUserData.tinyTank = nil
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
            if Object.IsValid(player.serverUserData.tinyTank) then
                player.serverUserData.tinyTank:Destroy()
                player.serverUserData.tinyTank = nil
            end
        end
    end
end)

local onPlayerJoined = Game.playerJoinedEvent:Connect(function(player)
    SetupPlayerForGame(player)
end)

-- on player joined/left functions need to be defined before calling event:Connect()
local onPlayerLeft = Game.playerLeftEvent:Connect(OnPlayerLeft)

--Events.ConnectForPlayer("ShotBalloon", OnBalloonShot)
local askJoinHandle = Events.ConnectForPlayer("AskJoinBalloonRoyale", OnJoinBalloonRoyale)

-- Locally for when a request comes in from the server
local onJoinedRoyaleHandle = Events.Connect("JoinBalloonRoyale", OnJoinBalloonRoyale)
local removeFromGameHandle = Events.Connect("BalloonRoyaleRemoveFromGame",ExplodePlayersBalloon)
local forfeitPlayerHandle = Events.Connect("ForfeitPlayer",ForfeitPlayer)

ROOT.destroyEvent:Connect(function()
    askJoinHandle:Disconnect()
    onJoinedRoyaleHandle:Disconnect()
    removeFromGameHandle:Disconnect()
    forfeitPlayerHandle:Disconnect()
    onPlayerJoined:Disconnect()
    onPlayerLeft:Disconnect()
end)

QueueAllPlayers()