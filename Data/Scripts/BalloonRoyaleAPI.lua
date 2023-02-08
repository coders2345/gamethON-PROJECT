local API = {}

API.STATE = {}

API.STATE.DISABLED = 0
API.STATE.AVAILABLE = 1
API.STATE.WAITING_ANOTHER_PLAYER = 2
API.STATE.COUNTDOWN = 3
API.STATE.RUNNING = 4

local _balloonRoyale = nil

local queuedPlayers = {}

function GetBalloonRoyale()
    if not Object.IsValid(_balloonRoyale) then
        Task.Wait(1)
        _balloonRoyale = World.FindObjectByName("BallonRoyaleDownstream")
    end
    return _balloonRoyale
end

function API.ConnectOnStateChange(listener)
    return GetBalloonRoyale().networkedPropertyChangedEvent:Connect(listener)
end

function API.GetResourceName()
    return "Balloon"
end

function API.DoesGameExist()
    if Object.IsValid(_balloonRoyale) then
        return true
    end
    return false
end

-- Server only
function API.SetCurrentState(value)
    GetBalloonRoyale():SetNetworkedCustomProperty("GameState", value)
end

function API.GetCurrentState()
    return GetBalloonRoyale():GetCustomProperty("GameState")
end

-- Returns true if leaving is from the game is possible.
function API.CanLeaveGame()
    if  API.GetCurrentState() == API.STATE.AVAILABLE or
        API.GetCurrentState() == API.STATE.WAITING_ANOTHER_PLAYER or 
        API.GetCurrentState() == API.STATE.COUNTDOWN then
        return true
    end
    return false
end

function API.GetQueuedPlayers()
    return queuedPlayers
end

function API.GetAmountOfQueuedPlayers()
    local count = 0
    for _, player in pairs(queuedPlayers) do
        count = count + 1
    end
    return count
end

function API.ClearQueuedPlayers()
    queuedPlayers = {}
end

function API.AddPlayerToQueue(player)
    queuedPlayers[player] = player
end

function API.RemovePlayerFromQueue(player)
    queuedPlayers[player] = nil
end

function API.IsPlayerInQueue(player)
    return queuedPlayers[player] and true or false
end


function API.GetTimeRemaining()
    return GetBalloonRoyale():GetCustomProperty("TimeRemaining")
end

function API.SetTimeRemaining(value)
    GetBalloonRoyale():SetNetworkedCustomProperty("TimeRemaining", value)
end

-- This will be overridden by BalloonRoyaleGameClient for the client
function API.IsPlayerParticipating(player)
    -- if player:GetResource(API.GetResourceName()) ~= 1 then
    --     print(CoreDebug.GetStackTrace(),API.GetResourceName(),player:GetResource(API.GetResourceName()))
    -- end
    return player:GetResource(API.GetResourceName()) > 0
end

function API.GetParticipatingPlayerCount()
    local count = 0
    for _, player in ipairs(Game.GetPlayers()) do
        if API.IsPlayerParticipating(player) then
            count = count + 1
        end
    end
    return count
end

function API.GetParticipatingPlayers()
    local players = {}
    for _, player in pairs(Game.GetPlayers()) do
        if API.IsPlayerParticipating(player) then
            table.insert(players,player)
        end
    end
    return players
end

function API.GetBalloonClientManager()
	return _G["BalloonClientManager"]
end

function API.DistanceLineSegmentPointSquared( a, b,  p )
    if (a-b).sizeSquared == 0 then
        return (p-a).sizeSquared
    end
    local wander = p-a
    local span = b-a

    local t = wander .. span / span.sizeSquared

    if t < 0 then
        return (p-a).sizeSquared
    elseif t > 1 then
        return (p-b).sizeSquared
    else
        local closest = a + t * span
        return (closest - p).sizeSquared
    end
end

function API.GetAllPlayersWithBalloons()
    return {}
end

return API