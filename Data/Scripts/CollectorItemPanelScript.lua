local NOTIFICATION_PANEL = script:GetCustomProperty("CollectorItemNotificationPanel"):WaitForObject()
local MovePanel = script:GetCustomProperty("MovePanel"):WaitForObject()
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local LABEL = script:GetCustomProperty("Label"):WaitForObject()
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local TWEEN = require(script:GetCustomProperty("Tween"))
local SFX = script:GetCustomProperty("SFX"):WaitForObject()

local startDown = false
local waitTime = 2

local imageTweenIn = TWEEN.new(1, MovePanel, {x = 0},'outExpo')
local imageTweenOut = TWEEN.new(0.3, MovePanel, {x = MovePanel.width},'inExpo')
MovePanel.x = MovePanel.width

imageTweenIn:reset()

local currentItemId = nil

local timerTask = nil
local etime = 0
local waiting = false
function Timer(dt)
    etime = etime + dt
    if etime >= waitTime then
        waiting = false
        if timerTask then
            timerTask:Cancel()
        end
    end
end

function InTick(dt)
    if MovePanel.visibility == Visibility.FORCE_ON then
        if not waiting then
            if start then
                if imageTweenIn:update(dt) then
                    imageTweenOut:reset()
                    if timerTask then
                        timerTask:Cancel()
                    end
                    etime = 0
                    timerTask = Task.Spawn(Timer)
                    timerTask.repeatCount = -1
                    
                    waiting = true
                    start = false
                end
            else
                if imageTweenOut:update(dt) then
                    imageTweenIn:reset()
                    MovePanel.visibility = Visibility.FORCE_OFF
                    MovePanel.x = MovePanel.width
                end
            end
        end
    end
end

local inTick = Task.Spawn(InTick)
inTick.repeatCount = -1

function Start(id)
    if not ITEM_LIBRARY.GetItem(id) then return end
    local item = ITEM_LIBRARY.GetItem(id)
    currentItemId = id
    MovePanel.x = MovePanel.width
    imageTweenIn:reset()
    if timerTask then
        timerTask:Cancel()
    end
    waiting = false

    MovePanel.visibility = Visibility.FORCE_ON
    LABEL.text = item.playerFacingName
    start = true

    for _, audio in pairs(SFX:GetChildren()) do
        if Object.IsValid(audio) then
            audio:Play()
        end
    end

    ICON:SetColor(ITEM_LIBRARY.GetRarityColor(item.itemRarity))
    ICON:SetImage(ITEM_LIBRARY.GetRarityIcon(item.itemRarity))
end

function OnDestroy(obj)
    if Object.IsValid(obj) then
        inTick:Cancel()
    end
end

function HandleBindingPressed(player, action)
    if player ~= Game.GetLocalPlayer() then return end
    if action == "ability_extra_27" and currentItemId ~= nil then
        Events.Broadcast("InvFocusItem", currentItemId)
    end 
end

NOTIFICATION_PANEL.destroyEvent:Connect(OnDestroy)
Events.Connect("ItemObtained", Start)
Game.GetLocalPlayer().bindingPressedEvent:Connect(HandleBindingPressed)