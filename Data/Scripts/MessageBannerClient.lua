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
--]] --[[
Displays text associated with the BannerMessage() event that takes the following forms:

BannerMessage(String message)
BannerMessage(String message, float duration)
--]] -- Internal custom properties
local UTIL = require(script:GetCustomProperty("MetaAbilityProgressionUTIL_API"))
local CONST = require(script:GetCustomProperty("CONST"))
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("TextBox"):WaitForObject()
local PANEL_DEFAULT = script:GetCustomProperty("PanelDefault"):WaitForObject()
local PANEL_ELF = script:GetCustomProperty("PanelElf"):WaitForObject()
local PANEL_ORC = script:GetCustomProperty("PanelOrc"):WaitForObject()
local PANEL_LOOT = script:GetCustomProperty("PanelLoot"):WaitForObject()
local PANEL_REWARD_POINTS = script:GetCustomProperty("SS2AlertPanelRewardPoints"):WaitForObject()
local PlayerClassLevelup = script:GetCustomProperty("PlayerClassLevelup"):WaitForObject()
local LocalPlayerClassLevelup = script:GetCustomProperty("LocalPlayerClassLevelup"):WaitForObject()
local LevelupSFX = script:GetCustomProperty("LevelupSFX"):WaitForObject()
local LootSFX = script:GetCustomProperty("LootSFX"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_DURATION = 5

local function META_CP()
    return _G["Class.Progression"]
end

-- Check user properties
if DEFAULT_DURATION <= 0.0 then
    warn("DefaultDuration must be positive")
    DEFAULT_DURATION = 2.0
end

-- Variables
local messageEndTime = 0.0
local playerLevelTimer = 0.0
local classIcons = {}
local LockedSkins = {}
local messageQueue = {}
local priorityQueue = {}

local function ResetPanels()
    PANEL_DEFAULT.visibility = Visibility.FORCE_OFF
    PANEL_ORC.visibility = Visibility.FORCE_OFF
    PANEL_ELF.visibility = Visibility.FORCE_OFF
    PANEL_LOOT.visibility = Visibility.FORCE_OFF
    PlayerClassLevelup.visibility = Visibility.FORCE_OFF
    LocalPlayerClassLevelup.visibility = Visibility.FORCE_OFF
end

local function ShowMessage(message)
    ResetPanels()

    local shouldShow = false
    local timer = 3 + time()
    if not message.player then
        TEXT_BOX.text = message.text
        message.visable.visibility = Visibility.INHERIT
        PANEL.visibility = Visibility.INHERIT
        shouldShow = true
    elseif message.player and Object.IsValid(message.player) and message.classID and message.classLevel then
        if message.player == LOCAL_PLAYER then
            LocalPlayerClassLevelUp(message.classID, tonumber(message.classLevel))
        end
        local propTeamBanners = PlayerClassLevelup:GetCustomProperty("TeamBanners"):WaitForObject()
        local propBannerText = PlayerClassLevelup:GetCustomProperty("BannerText"):WaitForObject()

        propBannerText.text = message.text

        for index, panel in ipairs(propTeamBanners:GetChildren()) do
            if index == message.player.team then
                panel.visibility = Visibility.INHERIT
            else
                panel.visibility = Visibility.FORCE_OFF
            end
        end
        message.visable.visibility = Visibility.INHERIT
        shouldShow = true
    end
    if not shouldShow then
        return
    end

    if message.sfx then
        message.sfx:Play()
    end


    while time() < timer do
        Task.Wait()
    end
    PANEL.visibility = Visibility.FORCE_OFF
    PlayerClassLevelup.visibility = Visibility.FORCE_OFF
    LocalPlayerClassLevelup.visibility = Visibility.FORCE_OFF
end

-- nil OnBannerMessageEvent(string, <float>)
-- Handles a client side banner message event
function OnBannerMessageEvent(message, duration, type)
    local tempTbl = {}
    local isPriority = false
    if not type then
        type = 0
    end

    if duration then
        tempTbl.duration = duration
    else
        tempTbl.duration = DEFAULT_DURATION
    end

    if type == 1 then --
        tempTbl.visable = PANEL_ORC
        isPriority = true
    elseif type == 2 then --
        tempTbl.visable = PANEL_ELF
        isPriority = true
    elseif type == 3 then --
        tempTbl.visable = PANEL_LOOT
        tempTbl.sfx = LootSFX
    elseif type == 4 then
         tempTbl.visable = PANEL_REWARD_POINTS
    else --
        tempTbl.visable = PANEL_DEFAULT
    end
    tempTbl.text = message
    --TEXT_BOX.text = message

    --PANEL.visibility = Visibility.INHERIT
    if isPriority then
        priorityQueue[#priorityQueue + 1] = tempTbl
    else
        messageQueue[#messageQueue + 1] = tempTbl
    end
end



--

-- nil Tick(float)
-- Hides the banner when the message has expired
--[[function Tick(deltaTime)
    if time() > messageEndTime then
        PANEL.visibility = Visibility.FORCE_OFF
    end
    if time() > playerLevelTimer then
        PlayerClassLevelup.visibility = Visibility.FORCE_OFF
        LocalPlayerClassLevelup.visibility = Visibility.FORCE_OFF
    end
end]] 

function Tick()
    if #messageQueue > 0 then
        for i, message in ipairs(messageQueue) do
            for _, priorityMessage in ipairs(priorityQueue) do
                ShowMessage(priorityMessage)
            end
            priorityQueue = {}
            ShowMessage(message)
        end
        messageQueue = {}
    elseif #priorityQueue > 0 then
        for _, priorityMessage in ipairs(priorityQueue) do
            ShowMessage(priorityMessage)
        end
        priorityQueue = {}
    end
end

-- Initialize
PANEL.visibility = Visibility.FORCE_OFF

Events.Connect("BannerMessage", OnBannerMessageEvent)
