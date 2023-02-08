local NOTIFICATION_PANEL = script:GetCustomProperty("AchievementNotificationPanel"):WaitForObject()
local UIImage = script:GetCustomProperty("UIImage"):WaitForObject()
local ACHIEVEMENTS = require(script:GetCustomProperty("AchievementsList"))
local LABEL = script:GetCustomProperty("Label"):WaitForObject()
local TWEEN = require(script:GetCustomProperty("Tween"))
local SFX = script:GetCustomProperty("SFX"):WaitForObject()

local startDown = false
local waitTime = 2

local imageTweenIn = TWEEN.new(1, UIImage, {y = 0},'outExpo')
local imageTweenOut = TWEEN.new(1, UIImage, {y = -UIImage.height},'inExpo')
UIImage.y = -UIImage.height
imageTweenIn:reset()

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
    if UIImage.visibility == Visibility.FORCE_ON then
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
                    UIImage.visibility = Visibility.FORCE_OFF
                    UIImage.y = 0
                end
            end
        end
    end
end

local inTick = Task.Spawn(InTick)
inTick.repeatCount = -1

function Start(id)
    --if NOTIFICATION_PANEL ~= inPanel then return end
    if not ACHIEVEMENTS[id] then return end
    imageTweenIn:reset()
    UIImage.visibility = Visibility.FORCE_ON
    UIImage.y = 0
    LABEL.text = ACHIEVEMENTS[id].name

    imageTweenIn:reset()
    if timerTask then
        timerTask:Cancel()
    end
    waiting = false
    start = true

    for _, audio in pairs(SFX:GetChildren()) do
        if Object.IsValid(audio) then
            audio:Play()
        end
    end
end

function OnDestroy(obj)
    if Object.IsValid(obj) then
        inTick:Cancel()
    end
end

NOTIFICATION_PANEL.destroyEvent:Connect(OnDestroy)
Events.Connect("AchievementUnlocked", Start)