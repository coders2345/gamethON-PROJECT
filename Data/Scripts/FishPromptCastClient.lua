local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CAST_TEXT = script:GetCustomProperty("CastStateText"):WaitForObject()
local CAST_BAR = script:GetCustomProperty("CastStateBar"):WaitForObject()

local FISH_DART_SOUND = script:GetCustomProperty("FishDartSound"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local isCasting = false

function Tick()
    if isCasting then
        local context = LOCAL_PLAYER.clientUserData.PI_FISHING_CONTEXT
        local currentFish = context.currentFish

        if not Object.IsValid(currentFish) then
            CAST_TEXT.text = "Waiting for a fish to bite the lure..."
            CAST_BAR.visibility = Visibility.FORCE_OFF
        elseif Object.IsValid(currentFish) and context.startTime then
            CAST_TEXT.text = "A fish is circling the lure... Don't move!"
            CAST_BAR.visibility = Visibility.INHERIT
            CAST_BAR.progress = CoreMath.Clamp((time() - context.startTime) / context.waitTime)
        end
    end
end

function CastWait()
    isCasting = true
    ROOT.visibility = Visibility.INHERIT
end

function StopWait()
    isCasting = false
    CAST_TEXT.text = ""
    ROOT.visibility = Visibility.FORCE_OFF
end

function FishDart(currentFish)
    
    FISH_DART_SOUND:Play()
    CAST_TEXT.text = "Fish darted away..."
      
    if currentFish == nil then
        print("fish is nil")     
    else
        Events.BroadcastToServer("FishPullFailed", LOCAL_PLAYER, currentFish.itemId)        
    end
    CAST_BAR.visibility = Visibility.FORCE_OFF
    ROOT.visibility = Visibility.INHERIT

    Task.Wait(2)
    if isCasting then return end
    ROOT.visibility = Visibility.FORCE_OFF
end

Events.Connect("StartFishWait", CastWait)
Events.Connect("StopFishWait", StopWait)
Events.Connect("FishDartAway", FishDart)

ROOT.visibility = Visibility.FORCE_OFF