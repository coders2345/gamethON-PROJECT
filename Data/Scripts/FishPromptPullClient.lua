local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local QTE_BAR_PANEL = script:GetCustomProperty("BarPanel"):WaitForObject()
local TIME_BAR_CLIPPER = script:GetCustomProperty("TimeBarClipper"):WaitForObject()
local RESULT_TEXT = script:GetCustomProperty("QTEResultText"):WaitForObject()
local ROD_REEL_SOUND = script:GetCustomProperty("RodReelSound"):WaitForObject()
local SUCCESS_SOUND = script:GetCustomProperty("SuccessQTESound"):WaitForObject()
local FAIL_SOUND = script:GetCustomProperty("FailQTESound"):WaitForObject()
local FISH_STRUGGLE_EFFECT = script:GetCustomProperty("FishStruggleEffect")

local GET = function(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local LOCAL_PLAYER = Game.GetLocalPlayer()

local POINTER = GET(QTE_BAR_PANEL, "Pointer")
local ALLOWED_SEGMENT = GET(QTE_BAR_PANEL, "AllowedSegment")

local isPulling = false
local currentFishItem = nil
local currentProgress = 0
local currentAllowance = .5

local pullAbility = nil
local startTime = time()
local pullTime = 5
local pullSpeed = 5

local struggleEffect = nil

function Tick()
    if isPulling then
        currentProgress = math.sin(time() * pullSpeed)
        POINTER.y = currentProgress * (QTE_BAR_PANEL.height / 2)
        if math.abs(currentProgress) < currentAllowance and math.abs(currentProgress) > 0 then
            POINTER:SetColor(Color.ORANGE)
        else
            POINTER:SetColor(Color.WHITE)
        end

        ALLOWED_SEGMENT.height = math.floor(QTE_BAR_PANEL.height * currentAllowance)
        TIME_BAR_CLIPPER.height = math.floor(QTE_BAR_PANEL.height * (1 - (time() - startTime) / pullTime))

        if time() - startTime >= pullTime then
            RESULT_TEXT.text = "FAIL!"
            FAIL_SOUND:Play()
            -- Pause a while for player to see the qte result
            Task.Wait(.25)
            ToggleQTE(false)
            Events.Broadcast("FishPullFail", LOCAL_PLAYER)
        end
    end
end

function DestroyStruggleEffect()
    if Object.IsValid(struggleEffect) then
        struggleEffect:Destroy()
    end
    struggleEffect = nil
end

function ToggleQTE(toggle)
    if toggle then
        local context = LOCAL_PLAYER.clientUserData.PI_FISHING_CONTEXT

        pullAbility = context.pullAbility
        currentFishItem = context.currentFishItem
        pullTime = context.pullTime
        pullSpeed = context.pullSpeed

        startTime = time()

        currentAllowance = ITEM_LIBRARY.GetFishAllowanceSize(currentFishItem.itemRarity)
        ALLOWED_SEGMENT.height = math.floor(QTE_BAR_PANEL.height * currentAllowance)
        TIME_BAR_CLIPPER.height = QTE_BAR_PANEL.height
        RESULT_TEXT.text = ""

        ROOT.visibility = Visibility.INHERIT

        ROD_REEL_SOUND:Play()
        struggleEffect = World.SpawnAsset(FISH_STRUGGLE_EFFECT, {position = context.currentFish.clientUserData.bitePosition})
    else
        ROOT.visibility = Visibility.FORCE_OFF
        ROD_REEL_SOUND:Stop()
        DestroyStruggleEffect()
    end

    isPulling = toggle
end

function BindingPressed(player, binding)
    if (binding == "ability_primary") and isPulling then
        isPulling = false
        local isSuccess = false
        ROD_REEL_SOUND:Stop()
        DestroyStruggleEffect()
        _G.AnalyticsFacade.TrackFishing(player, "MiniGame")
        if math.abs(currentProgress) < currentAllowance and math.abs(currentProgress) > 0 then
            isSuccess = true
            SUCCESS_SOUND:Play()
            RESULT_TEXT.text = "SUCCESS!"
            _G.AnalyticsFacade.TrackFishing(player, "Success")
        else
            isSuccess = false
            FAIL_SOUND:Play()
            RESULT_TEXT.text = "FAIL!"
            _G.AnalyticsFacade.TrackFishing(player, "Failed")
        end

        -- Pause a while for player to see the qte result
        Task.Wait(.25)

        if isSuccess then
            Events.Broadcast("FishPullSuccess", LOCAL_PLAYER)
        else
            Events.Broadcast("FishPullFail", LOCAL_PLAYER)
        end

        pullAbility:Activate()
        RESULT_TEXT.text = ""
    end
end

Events.Connect("StartFishPull", ToggleQTE, true)
Events.Connect("StopFishPull", ToggleQTE, false)

LOCAL_PLAYER.bindingPressedEvent:Connect(BindingPressed)

ROOT.visibility = Visibility.FORCE_OFF