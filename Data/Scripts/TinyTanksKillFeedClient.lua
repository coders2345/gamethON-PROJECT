local BalloonAPI = require(script:GetCustomProperty("BalloonAPI"))

local ROOT = script.parent
local TINY_TANKS_ROYALE_ROOT = script:GetCustomProperty("TinyTanksRoyale"):WaitForObject()
local ENTRY_TEMPLATE = script:GetCustomProperty("EntryTemplate")
local COMPONENT_PANEL = script:GetCustomProperty("ComponentPanel"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local feedItems = {}

function Tick(dt)
    local currentTime = time()
    for i=1, #feedItems do
        if i <= #feedItems then
            local item = feedItems[i]
            item.y = item.y - 100*dt
            if item.clientUserData.spawnTime + 2 < currentTime then
                item:Destroy()
                table.remove(feedItems, i)
                i = i-1
            end
        end
    end
end

function MakeRoomForItem()
    local MIN_SPACING = 60
    for i = #feedItems, 2, -1 do
        local above = feedItems[i-1]
        local below = feedItems[i]

        if above.y > below.y - MIN_SPACING then
            above.y = below.y - MIN_SPACING
        end
    end
end

function OnKillFeedItemRecieved(player, otherPlayer)
    print(ROOT)
    -- Only display this for players playing that game.
    if not BalloonAPI.IsPlayerParticipating(LOCAL_PLAYER) then return end

    local entryTemplate = World.SpawnAsset(ENTRY_TEMPLATE, {parent = COMPONENT_PANEL})
    table.insert(feedItems, entryTemplate)
    entryTemplate.clientUserData.spawnTime = time()

    MakeRoomForItem()

    local feedInfo = entryTemplate:GetCustomProperty("FeedInfo"):WaitForObject()

    local player1Icon = feedInfo:GetCustomProperty("Player1Icon"):WaitForObject()
    local player1Name = feedInfo:GetCustomProperty("Player1Name"):WaitForObject()
    local poppedLabel = feedInfo:GetCustomProperty("Popped"):WaitForObject()
    local player2Icon = feedInfo:GetCustomProperty("Player2Icon"):WaitForObject()
    local player2Name = feedInfo:GetCustomProperty("Player2Name"):WaitForObject()
    local balloonLabel = feedInfo:GetCustomProperty("Balloon"):WaitForObject()

    player1Icon:SetPlayerProfile(player)
    player2Icon:SetPlayerProfile(otherPlayer)
    player1Name.text = player.name
    player2Name.text = otherPlayer.name .. "'s"

    entryTemplate.visibility = Visibility.FORCE_OFF
    Task.Wait()

    player1Name.width = player1Name:ComputeApproximateSize().x
    player2Name.width = player2Name:ComputeApproximateSize().x

    local itemsToSpace = {player1Icon, player1Name, poppedLabel, player2Icon, player2Name, balloonLabel}

    local x = 0
    local spacing = 8
    for _, item in ipairs(itemsToSpace) do
        item.x = x
        x = x + item.width + 8
    end

    player1Name.width = player1Name.width+8
    player2Name.width = player2Name.width+8

    entryTemplate.visibility = Visibility.INHERIT
end

local killFeedHandle = Events.Connect("TinyTank.KillFeed", OnKillFeedItemRecieved)

TINY_TANKS_ROYALE_ROOT.destroyEvent:Connect(function()
    print("Disconnected")
    killFeedHandle:Disconnect()
end)