local NOTIFICATION_PANEL = script:GetCustomProperty("NotificationPanel"):WaitForObject()
local LABEL = script:GetCustomProperty("Label"):WaitForObject()
local BODY = script:GetCustomProperty("Body"):WaitForObject()
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local BACKGROUND = script:GetCustomProperty("Background"):WaitForObject()
--local BACKGROUND_FRAME = script:GetCustomProperty("BackgroundFrame"):WaitForObject()

local tween = require(script:GetCustomProperty("Tween"))

local start = false
local startDown = false
local waitTime = 2

local imageTweenIn = tween.new(1, BACKGROUND, {x = 0},'outExpo')
local imageTweenOut = tween.new(1, BACKGROUND, {x = -600},'inExpo')
local imageTweenDown = nil
BACKGROUND.x = -600
imageTweenIn:reset()

function InTick(dt)
    if BACKGROUND.visibility == Visibility.FORCE_ON then
        if start then
            if imageTweenIn:update(dt) then
                imageTweenOut:reset()
                Task.Wait(waitTime)
                start = false
            end
        else
            if imageTweenOut:update(dt) then
                imageTweenIn:reset()
                BACKGROUND.visibility = Visibility.FORCE_OFF
                BACKGROUND.y = 0
                Events.Broadcast("NotificationComplete", NOTIFICATION_PANEL)
            end
        end
    end
end

local inTick = Task.Spawn(InTick)
inTick.repeatCount = -1

function Tick(dt)
    if BACKGROUND.visibility == Visibility.FORCE_ON then
        if startDown then
            if imageTweenDown:update(dt) then
                startDown = false
            end
        end
    end
end

function Start(inPanel, inLabel, inBody, backgroundColor, iconAssetId, iconColor, labelColor, bodyColor)
    if NOTIFICATION_PANEL ~= inPanel then return end
    BACKGROUND.visibility = Visibility.FORCE_ON
    BACKGROUND.y = 0
    LABEL.text = tostring(inLabel)
    BODY.text = tostring(inBody)
    if iconAssetId ~= nil then
        ICON.visibility = Visibility.INHERIT
        ICON:SetImage(iconAssetId)
        if iconColor then
            ICON:SetColor(iconColor)
        end
    else
        ICON.visibility = Visibility.FORCE_OFF
    end
    if backgroundColor ~= nil then 
        BACKGROUND:SetColor(backgroundColor)
    end
    if labelColor then
        LABEL:SetColor(labelColor)
    end
    if bodyColor then
        BODY:SetColor(bodyColor)
    end
    start = true
end

function MoveNotificationDown(inPanel)
    if not Object.IsValid(inPanel) then return end
    if NOTIFICATION_PANEL ~= inPanel then return end
    imageTweenDown = nil
    local endPos = BACKGROUND.y + BACKGROUND.height + 10
    imageTweenDown = tween.new(0.3, BACKGROUND, {y = endPos},'linear')
    startDown = true
end

function OnDestroy(obj)
    if Object.IsValid(obj) then
        inTick:Cancel()
    end
end
NOTIFICATION_PANEL.destroyEvent:Connect(OnDestroy)

Events.Connect("ShowNotificationPanel", Start)
Events.Connect("MoveNotificationDown", MoveNotificationDown)