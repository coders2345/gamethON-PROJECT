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

local API_MEMBERSHIP = require(script:GetCustomProperty("APIMembership"))
local GET = function (object, key) return object:GetCustomProperty(key):WaitForObject() end

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local KILL_FEED_PANEL = script:GetCustomProperty("KillFeedPanel"):WaitForObject()
local KILL_FEED_LINE_TEMPLATE = script:GetCustomProperty("KillFeedLineTemplate")
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))

-- User exposed properties
local SHOW_JOIN_AND_LEAVE = COMPONENT_ROOT:GetCustomProperty("ShowJoinAndLeave")
local NUM_LINES = COMPONENT_ROOT:GetCustomProperty("NumLines")
local LINE_DURATION = COMPONENT_ROOT:GetCustomProperty("LineDuration")
local TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("TextColor")
local SELF_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("SelfTextColor")
local BG_COLOR = COMPONENT_ROOT:GetCustomProperty("BackgroundColor")

-- Check user properties
if NUM_LINES < 1 then
    warn("NumLines must be positive")
    NUM_LINES = 1
end

if LINE_DURATION < 0.0 then
    warn("LineDuration must be positive")
    LINE_DURATION = 5.0
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local FADE_DURATION = 0.6
local VERTICAL_SPACING = 0

-- After connecting, we hide join messages for a short time, so we don't see messages for everyone already in the game
local JOIN_MESSAGE_START = time() + 1.0

-- Variables
local lineTemplates = {}
local lines = {}				-- Each line is a table with: text, color, displayTime

-- nil AddLine(string, Color)
-- Adds a line to the killfeed
function AddLine(line, color)
	for i = NUM_LINES, 2, -1 do
		lines[i] = lines[i - 1]
	end

	lines[1] = {}
	lines[1].text = line
	lines[1].color = color
	lines[1].displayTime = time()
end

-- nil OnPlayerJoined(Player)
-- if ShowJoinAndLeave, add a message for a player joining the game
function OnPlayerJoined(player)
	if time() > JOIN_MESSAGE_START then
		if API_MEMBERSHIP.IsPlayerMember(player) then
			AddLine(string.format("VIP Farmer %s joined the market!", player.name), Color.ORANGE)
		else
			AddLine(string.format("Farmer %s joined the market", player.name), TEXT_COLOR)
		end
	end
end

-- nil OnPlayerLeft(Player)
-- if ShowJoinAndLeave, add a message for a player leaving the game
function OnPlayerLeft(player)
	if API_MEMBERSHIP.IsPlayerMember(player) then
		AddLine(string.format("VIP Farmer %s left the market", player.name), Color.ORANGE)
	else
		AddLine(string.format("Farmer %s left the market", player.name), TEXT_COLOR)
	end
end

-- nil OnKill(string, string, <string>)
-- Catches the event from the server and adds a line
function OnKill(killerPlayer, killedPlayer, sourceObjectId)
	local lineColor = TEXT_COLOR
	local sourceObject = nil

	if sourceObjectId then
		sourceObject = World.FindObjectById(sourceObjectId)
	end

	if killerPlayer == LOCAL_PLAYER or killedPlayer == LOCAL_PLAYER then
		lineColor = SELF_TEXT_COLOR
	end

	if not killerPlayer then
		AddLine(string.format("%s died", killedPlayer.name), lineColor)
	elseif sourceObject then
		AddLine(string.format("%s killed %s with %s", killerPlayer.name, killedPlayer.name, sourceObject.name), lineColor)
	else
		AddLine(string.format("%s killed %s", killerPlayer.name, killedPlayer.name), lineColor)
	end
end

-- nil Tick(float)
-- Update the line templates to match current data, and update fading
function Tick(deltaTime)
	for i = 1, NUM_LINES do
		if lines[i] then
			local age = time() - lines[i].displayTime
			local color = lines[i].color

			-- Full opacity until LINE_DURATION, then lerp to invisible over FADE_DURATION
			color.a = CoreMath.Clamp(1.0 - (age - LINE_DURATION) / FADE_DURATION, 0.0, 1.0)

			local text = GET(lineTemplates[i], "KillFeedText")

			text.text = lines[i].text
			text:SetColor(color)

			-- Doing same thing to background
			local bgColor = BG_COLOR
			local bg = GET(lineTemplates[i], "BG")

			bgColor.a = CoreMath.Clamp(1.0 - (age - LINE_DURATION) / FADE_DURATION, 0.0, 1.0)

			bg:SetColor(bgColor)
		end
	end
end

-- Initialize
-- Spawn, space out and hide lines
for i = 1, NUM_LINES do
	lineTemplates[i] = World.SpawnAsset(KILL_FEED_LINE_TEMPLATE, {parent = KILL_FEED_PANEL})
	local text = GET(lineTemplates[i], "KillFeedText")
	local bg = GET(lineTemplates[i], "BG")
	lineTemplates[i].y = (i - 1) * (VERTICAL_SPACING + lineTemplates[i].height)
	text:SetColor(Color.TRANSPARENT)
	bg:SetColor(Color.TRANSPARENT)
end

Events.Connect("PlayerKilled", OnKill)

if SHOW_JOIN_AND_LEAVE then
	Game.playerJoinedEvent:Connect(OnPlayerJoined)
	Game.playerLeftEvent:Connect(OnPlayerLeft)
end

function HandleInventoryChanged(player, itemId, count)
	if count > 0 then
		local itemProps = ITEM_LIBRARY.GetItem(itemId)
		if itemProps ~= nil and itemProps.itemRarity >= ITEM_LIBRARY.RARITY_UNCOMMON then
			local rarityText = ITEM_LIBRARY.GetRarityDescriptor(itemProps.itemRarity)
			local lineColor = ITEM_LIBRARY.GetRarityColor(itemProps.itemRarity)

			if not string.match(itemProps.area, "FISHING") and not string.match(itemProps.area, "JUNK") then
				AddLine(string.format("%s found " .. rarityText .. " " .. itemProps.playerFacingName .. "!", player.name), lineColor)
			end
		end
	end
end

function HandleFishCaught(player, itemId)
	local itemProps = ITEM_LIBRARY.GetItem(itemId)
	print("Fish Caught", itemProps.playerFacingName)
	if itemProps ~= nil and itemProps.itemRarity > ITEM_LIBRARY.RARITY_UNCOMMON then
		local rarityText = ITEM_LIBRARY.GetRarityDescriptor(itemProps.itemRarity)
		local lineColor = ITEM_LIBRARY.GetRarityColor(itemProps.itemRarity)

		if string.match(itemProps.area, "FISHING") then
			local fishStories = {
				" landed ",
				" reeled in ",
				" hauled in ",
				" caught "
			}
			local storyText = fishStories[math.random(#fishStories)]			
			AddLine(string.format("%s" .. storyText .. rarityText .. " " .. itemProps.playerFacingName .. "!", player.name), lineColor)
		end
	end
end

function HandleFishFailed(player, itemId)
	local itemProps = ITEM_LIBRARY.GetItem(itemId)
	print("Fish Failed", itemProps.playerFacingName)
	if itemProps ~= nil and itemProps.itemRarity >= ITEM_LIBRARY.RARITY_RARE then
		local rarityText = ITEM_LIBRARY.GetRarityDescriptor(itemProps.itemRarity)
		local lineColor = ITEM_LIBRARY.GetRarityColor(itemProps.itemRarity)

		if string.match(itemProps.area, "FISHING") then
			local fishStories = {
				" just missed ",
				" unintentionally released ",
				" lost ",
				" almost caught "
			}
			local storyText = fishStories[math.random(#fishStories)]
			AddLine(string.format("%s" .. storyText .. rarityText .. " " .. itemProps.playerFacingName .. "!", player.name), lineColor)
		end
	end
end

function OnMembershipPurchased(player)
	AddLine(string.format("%s upgraded to VIP status!", player.name), Color.ORANGE)
end

Events.Connect("MembershipPurchased", OnMembershipPurchased)
Events.Connect("InventoryChangedEvent", HandleInventoryChanged)
Events.Connect("FishCaught", HandleFishCaught)
Events.Connect("FishFailed", HandleFishFailed)