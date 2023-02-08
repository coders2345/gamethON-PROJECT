local EVENTS = require(script:GetCustomProperty("META_EventsAPI"))
local EventGeo = script:GetCustomProperty("EventGeo")
local EventKey = script:GetCustomProperty("EventKey")

local spawnedGeo 
local isActive = false
local nextCheckTime = 2

function CheckEventState()    
    if EVENTS.IsEventKeyActive(EventKey) and not isActive then
        isActive = true
        spawnedGeo = World.SpawnAsset(EventGeo, {position = script:GetWorldPosition(), rotation = script:GetWorldRotation()})
    elseif not EVENTS.IsEventKeyActive(EventKey) and isActive then
        isActive = false
        if Object.IsValid(spawnedGeo) then
            spawnedGeo:Destroy()
        end
    end
end

function Tick()
    if time() > nextCheckTime then
        CheckEventState()
        nextCheckTime = time() + 30
    end
end