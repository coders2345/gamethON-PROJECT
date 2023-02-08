local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local LINE_TEMPLATE = script:GetCustomProperty("LineTemplate")

local RESOURCE = COMPONENT_ROOT:GetCustomProperty("CompareResource")
local GLOBAL_LEADERBOARD_REF = COMPONENT_ROOT:GetCustomProperty("GlobalLeaderboard")
local IS_GLOBAL = COMPONENT_ROOT:GetCustomProperty("Global")
local IS_DAILY = COMPONENT_ROOT:GetCustomProperty("Daily")
local IS_WEEKLY = COMPONENT_ROOT:GetCustomProperty("Weekly")
local IS_MONTHLY = COMPONENT_ROOT:GetCustomProperty("Monthly")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local headerLine = nil
local playerLines = {}
local updateInterval = 1.0
local lastTick = time()

local FRIENDLY_COLOR = Color.New(0.0, 0.25, 1.0)
local ENEMY_COLOR = Color.New(1.0, 0.0, 0.0)

local MAX_DISPLAY_LINES = COMPONENT_ROOT:GetCustomProperty("MaxLines")

local rankedPlayers = {}

-- add a line to the scoreboard
function AddLine()
    local newLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
    newLine:SetPosition(Vector3.New(0,0, -30 * (#playerLines + 1)))
    --newLine.visibility = Visibility.FORCE_OFF
    table.insert(playerLines, newLine)
end

-- Add all lines to the score board
function Init()
    for i = 1, MAX_DISPLAY_LINES, 1 do
        AddLine()
    end
end
Init()

function Tick(dt)
    if Leaderboards.HasLeaderboards() then
        if time() - lastTick > updateInterval then
            OnResourceChanged(_, RESOURCE, _)
            lastTick = time()
        end
    end
end

-- update the player list
function UpdateRankedPlayers()
    rankedPlayers = nil
    if Leaderboards.HasLeaderboards() then
        local leaderboard = {}
        rankedPlayers = {}
        if IS_GLOBAL then
            leaderboard = Leaderboards.GetLeaderboard(GLOBAL_LEADERBOARD_REF, LeaderboardType.GLOBAL)
        elseif IS_DAILY then
            leaderboard = Leaderboards.GetLeaderboard(GLOBAL_LEADERBOARD_REF, LeaderboardType.DAILY)
        elseif IS_WEEKLY then
            leaderboard = Leaderboards.GetLeaderboard(GLOBAL_LEADERBOARD_REF, LeaderboardType.WEEKLY)
        elseif IS_MONTHLY then
            leaderboard = Leaderboards.GetLeaderboard(GLOBAL_LEADERBOARD_REF, LeaderboardType.MONTHLY)
        end

        local playerInGlobalLeaderboard = false
        for i, entry in ipairs(leaderboard) do
            if i <= MAX_DISPLAY_LINES then
                table.insert(rankedPlayers, {
                    name = entry.name,
                    score = entry.score,
                    rank = i,
                    data = entry.additionalData
                })
                if entry.name == LOCAL_PLAYER.name then
                    playerInGlobalLeaderboard = true
                end
            elseif not playerInGlobalLeaderboard and i > MAX_DISPLAY_LINES and entry.name == LOCAL_PLAYER.name then
                rankedPlayers[#rankedPlayers] = {
                    name = entry.name,
                    score = entry.score,
                    rank = i,
                    data = entry.additionalData
                }
                playerInGlobalLeaderboard = true
                break
            elseif playerInGlobalLeaderboard and i > MAX_DISPLAY_LINES then
                break
            end
        end

        if not playerInGlobalLeaderboard then
            rankedPlayers[#rankedPlayers] = {
                name = LOCAL_PLAYER.name,
                score = tostring(STATS_LIBRARY.GetStat(LOCAL_PLAYER, RESOURCE)),
                rank = ">"..tostring(#leaderboard)
            }
        end
    else
        rankedPlayers = Game.GetPlayers()
    end
end

function OnResourceChanged(_, key, _)
    if key ~= RESOURCE then return end

    if Leaderboards.HasLeaderboards() then
        UpdateRankedPlayers()

        for i, entry in ipairs(rankedPlayers) do
            local teamColor = FRIENDLY_COLOR

			if entry ~= nil then
				local line = playerLines[i]
                line:GetCustomProperty("NameText"):WaitForObject().text = entry.name
                if entry.name == LOCAL_PLAYER.name then
                    line:GetCustomProperty("NameText"):WaitForObject():SetColor(teamColor)
                    line:GetCustomProperty("Highlight"):WaitForObject().visibility = Visibility.INHERIT
                    if API_MEMBERSHIP.IsPlayerMember(LOCAL_PLAYER) then
                        line:GetCustomProperty("VIPLabel"):WaitForObject().visibility = Visibility.INHERIT
                    else
                        line:GetCustomProperty("VIPLabel"):WaitForObject().visibility = Visibility.FORCE_OFF
                    end
                else
                    line:GetCustomProperty("NameText"):WaitForObject():SetColor(Color.WHITE)
                    line:GetCustomProperty("Highlight"):WaitForObject().visibility = Visibility.FORCE_OFF
                    if entry.data == "VIP" then
                        line:GetCustomProperty("VIPLabel"):WaitForObject().visibility = Visibility.INHERIT
                    else
                        line:GetCustomProperty("VIPLabel"):WaitForObject().visibility = Visibility.FORCE_OFF
                    end
                end
                line:GetCustomProperty("Rank"):WaitForObject().text = tostring(entry.rank)

                line:GetCustomProperty("Points"):WaitForObject().text = "$"..UTILITIES_LIBRARY.FormatMoney(tonumber(string.format("%d", entry.score)))
                line.visibility = Visibility.INHERIT
			end
		end
    else
        table.sort(rankedPlayers, ComparePlayers)

        for i, player in ipairs(rankedPlayers) do
            local teamColor = FRIENDLY_COLOR

            if player ~= LOCAL_PLAYER and Teams.AreTeamsEnemies(player.team, LOCAL_PLAYER.team) then
                teamColor = ENEMY_COLOR
            end

            local line = playerLines[i]
            line:GetCustomProperty("NameText"):WaitForObject().text = player.name
            if player == LOCAL_PLAYER then
                line:GetCustomProperty("NameText"):WaitForObject():SetColor(teamColor)
                line:GetCustomProperty("Highlight"):WaitForObject().visibility = Visibility.INHERIT
            else
                line:GetCustomProperty("NameText"):WaitForObject():SetColor(Color.WHITE)
                line:GetCustomProperty("Highlight"):WaitForObject().visibility = Visibility.FORCE_OFF
            end
            line:GetCustomProperty("Rank"):WaitForObject().text = tostring(i)

            local score = STATS_LIBRARY.GetStat(player, RESOURCE)
            line:GetCustomProperty("Points"):WaitForObject().text = "$"..UTILITIES_LIBRARY.FormatMoney(tonumber(score))
            line.visibility = Visibility.INHERIT
        end

    end

--[[     for i = #rankedPlayers + 1, MAX_DISPLAY_LINES, 1 do
        playerLines[i].visibility = Visibility.FORCE_OFF
    end ]]
end

function OnStatChanged(player, statId, value)
    Task.Wait()
    OnResourceChanged(_, statId, _)
end

-- nil OnPlayerJoined(Player)
-- Add a line to the scoreboard when a player joins
function OnPlayerJoined(player)
    UpdateRankedPlayers()
end

-- nil OnPlayerLeft(Player)
-- Remove a line when a player leaves
function OnPlayerLeft(player)
    Task.Wait()
    UpdateRankedPlayers()
end

-- bool ComparePlayers(Player, Player)
-- Comparing function that sets the sorting order
function ComparePlayers(player1, player2)
    if player1:GetResource(RESOURCE) ~= player2:GetResource(RESOURCE) then
        return player1:GetResource(RESOURCE) > player2:GetResource(RESOURCE)
    end

    -- Use name to ensure consistent order for players that are tied
    return player1.name < player2.name
end

headerLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
headerLine:GetCustomProperty("NameText"):WaitForObject().text = "Farmers"
headerLine:GetCustomProperty("Rank"):WaitForObject().text = "#"
headerLine:GetCustomProperty("Points"):WaitForObject().text = "Net Worth"
headerLine:GetCustomProperty("Highlight"):WaitForObject().visibility = Visibility.FORCE_OFF

Game.playerLeftEvent:Connect(OnPlayerLeft)
Game.playerJoinedEvent:Connect(OnPlayerJoined)

Events.Connect("StatChangedEvent", OnStatChanged)