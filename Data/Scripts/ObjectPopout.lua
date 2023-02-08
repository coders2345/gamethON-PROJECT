local OBJECT = script:GetCustomProperty("Object"):WaitForObject()
local TWEEN = require(script:GetCustomProperty("Tween"))
local COMPONENT_ROOT = script:GetCustomProperty("Root"):WaitForObject()
local startPos = OBJECT:GetWorldPosition()

local EASE_IN_OFFSET = 250
local BOUNCE_OUT_OFFSET = 100

local BOUNCE_FINAL_Z = startPos.z + EASE_IN_OFFSET

local pos = OBJECT:GetWorldPosition()
local bounceIn = nil
local easeIn = TWEEN.new(0.7, pos, { z = BOUNCE_FINAL_Z }, 'inOutExpo')
easeIn:reset()

local startAnim = true
local moveFwd = true
local fwdVel = 80
function Tick(dt)
    if startAnim then
        if easeIn:update(dt) then
            if bounceIn == nil then
                bounceIn = TWEEN.new(1, pos, { z = startPos.z + BOUNCE_OUT_OFFSET }, 'outBounce')
                bounceIn:reset()
                moveFwd = true
            end
            if bounceIn:update(dt) then
                moveFwd = false
                startAnim = false
            end
        end
        if moveFwd then
            local fwd = OBJECT:GetWorldTransform():GetForwardVector()
            fwd.z = 0
            pos.x = pos.x + fwd.x * fwdVel * dt
            pos.y = pos.y + fwd.y * fwdVel * dt        
        end
        OBJECT:SetWorldPosition(pos)
    end
end

function GetEndPosition(startPos)
    local fwdVec = OBJECT:GetWorldTransform():GetForwardVector()
    local rightVec = OBJECT:GetWorldTransform():GetRightVector()
    local rayStart = startPos + fwdVec * 90 + rightVec * 60 + Vector3.UP * 200
    local rayEnd = startPos + fwdVec * 90 + rightVec * 60 - Vector3.UP * 2000
    local hit = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
    if hit then
        return hit:GetImpactPosition().z
    end
    return startPos.z
end

function ShowPlayerPrompt()
    local itemId = COMPONENT_ROOT:GetCustomProperty("ContentToSpawn")
    while itemId == "" do
        Task.Wait(0.1)
        itemId = COMPONENT_ROOT:GetCustomProperty("ContentToSpawn")
    end
    if Game.GetLocalPlayer().id == COMPONENT_ROOT:GetCustomProperty("PlayerId") then
        Events.Broadcast("ItemObtained", itemId)
    end
end

function HandleNetworkedPropertyChanged(obj, property)
    if property == "ContentToSpawn" then
        startPos = OBJECT:GetWorldPosition()
        easeIn:reset()
        moveFwd = true
        startAnim = true
        easeIn = TWEEN.new(0.8, pos, { z = startPos.z + EASE_IN_OFFSET }, 'inOutExpo')
        if bounceIn then
            bounceIn:reset()
        end
        BOUNCE_FINAL_Z = GetEndPosition(startPos) + BOUNCE_OUT_OFFSET
    end
    if property == "PlayerId" then
        ShowPlayerPrompt()
    end
end

if COMPONENT_ROOT:GetCustomProperty("PlayerId") ~= "" or COMPONENT_ROOT:GetCustomProperty("PlayerId") ~= nil then
    ShowPlayerPrompt()
end

COMPONENT_ROOT.networkedPropertyChangedEvent:Connect(HandleNetworkedPropertyChanged)