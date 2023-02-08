--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local STATS_LIBRARY, STATS_LIST = require(script:GetCustomProperty("StatsLibrary"))
local UTILITIES_LIBRARY = require(script:GetCustomProperty("UtilitiesLibrary"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local LINE_TEMPLATE = script:GetCustomProperty("LineTemplate")

-- User exposed properties
local RESOURCE_TO_TRACK = COMPONENT_ROOT:GetCustomProperty("Resource")
local HIDE_AT_ROUND_END = COMPONENT_ROOT:GetCustomProperty("HideAtRoundEnd")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local FRIENDLY_COLOR = Color.New(0.0, 0.25, 1.0)
local ENEMY_COLOR = Color.New(1.0, 0.0, 0.0)

-- Variables
local playerLines = {}
local atRoundEnd = false


-- nil OnPlayerJoined(Player)
-- Add a line to the scoreboard when a player joins
function OnPlayerJoined(player)
    print("line added", player.name)
    local newLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
    newLine.y = newLine.height * (#playerLines + 1)
    table.insert(playerLines, newLine)
end

-- nil OnPlayerLeft(Player)
-- Remove a line when a player leaves
function OnPlayerLeft(player)
    playerLines[#playerLines]:Destroy()
    playerLines[#playerLines] = nil
end

-- nil OnRoundStart()
-- Handles showing the scoreboard if HideAtRoundEnd is selected
function OnRoundStart()
    atRoundEnd = false
end

-- nil OnRoundEnd()
-- Handles hiding the scoreboard if HideAtRoundEnd is selected
function OnRoundEnd()
    atRoundEnd = true
end

-- bool ComparePlayers(Player, Player)
-- Comparing function that sets the sorting order
function ComparePlayers(player1, player2)

    local player1Resource = STATS_LIBRARY.GetStat(player1, RESOURCE_TO_TRACK)
    local player2Resource = STATS_LIBRARY.GetStat(player2, RESOURCE_TO_TRACK)

    if player1Resource ~= player2Resource then
        return player1Resource > player2Resource
    end

    -- Use name to ensure consistent order for players that are tied
    return player1.name < player2.name
end

-- nil Tick(float)
-- Update visibility and displayed information
function Tick(deltaTime)
    Task.Wait(2)
    if not atRoundEnd then
        CONTAINER.visibility = Visibility.INHERIT
        local players = Game.GetPlayers()
        table.sort(players, ComparePlayers)

        for i, player in ipairs(players) do
            print(i, player.name)
            local teamColor = FRIENDLY_COLOR
            local playerResource =  STATS_LIBRARY.GetStat(player, RESOURCE_TO_TRACK)

            if player ~= LOCAL_PLAYER and Teams.AreTeamsEnemies(player.team, LOCAL_PLAYER.team) then
                teamColor = ENEMY_COLOR
            end

            local line = playerLines[i]
            line:GetCustomProperty("OrderText"):WaitForObject().text = tostring(i)
            line:GetCustomProperty("Name"):WaitForObject().text = player.name
            line:GetCustomProperty("Name"):WaitForObject():SetColor(teamColor)
            line:GetCustomProperty("Icon"):WaitForObject():SetPlayerProfile(player)
            line:GetCustomProperty("ScoreText"):WaitForObject().text = "$"..UTILITIES_LIBRARY.FormatMoney(playerResource)
            if API_MEMBERSHIP.IsRegistered() and (API_MEMBERSHIP.IsPlayerMember(player) or player:GetResource("VIP") == 1) then
                print(LOCAL_PLAYER.name, "sees that", player.name, "is vip")
                line:GetCustomProperty("VIPBadge"):WaitForObject().visibility = Visibility.INHERIT
            else
                print(LOCAL_PLAYER.name, "sees that", player.name, "is normal")
                line:GetCustomProperty("VIPBadge"):WaitForObject().visibility = Visibility.FORCE_OFF
            end
        end
    else
        CONTAINER.visibility = Visibility.FORCE_OFF
    end
end

-- Initialize
local headerLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
headerLine:GetCustomProperty("OrderText"):WaitForObject().text = ""
headerLine:GetCustomProperty("Name"):WaitForObject().text = "Farmers"
headerLine:GetCustomProperty("ScoreText"):WaitForObject().text = "Net Worth"
headerLine:GetCustomProperty("VIPBadge"):WaitForObject().visibility = Visibility.FORCE_OFF

Game.playerLeftEvent:Connect(OnPlayerLeft)
Game.playerJoinedEvent:Connect(OnPlayerJoined)

if HIDE_AT_ROUND_END then
    Game.roundStartEvent:Connect(OnRoundStart)
    Game.roundEndEvent:Connect(OnRoundEnd)
end