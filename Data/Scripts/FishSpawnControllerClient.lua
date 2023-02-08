local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local ROOT = script.parent
local SPAWN_POINT = ROOT.parent
local FISH_ANCHOR = script:GetCustomProperty("FishAnchor"):WaitForObject()

local DEBUG = ROOT:GetCustomProperty("Debug")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local SPAWN_POINT_POSITION = ROOT.parent:GetWorldPosition()

local playerCheckRadius = 150
local swimXYRadius = 1500
local swimZRadius = 0
local swimAwayDistance = 2000
local maxPlayerDistance = 4000
local swimSpeed = 100

if not DEBUG then
    swimXYRadius = SPAWN_POINT:GetCustomProperty("XYRadius")
    swimZRadius = SPAWN_POINT:GetCustomProperty("ZRadius")
end

local nextMoveTime = 0
local updateHandle = nil
local currentBitePos = nil
local fishInstance = nil
local isFishAnimating = false
local isCircling = false
local moveTask = nil

function GetRandomPosAroundAPoint(XYradius, ZRadius, point)
    local x = point.x + math.random(-XYradius, XYradius)
    local y = point.y + math.random(-XYradius, XYradius)
    local z = point.z + math.random(-ZRadius, ZRadius)
    return Vector3.New(x, y, z)
end

function GetDistanceFromPlayer()
    return (LOCAL_PLAYER:GetWorldPosition() - ROOT:GetWorldPosition()).size
end

function GetRandomNextMoveTime()
    local result = time() + math.random() * 2.0

    -- Fish swims faster when local player swims
    if LOCAL_PLAYER.isSwimming then
        result = time()
    end
    return result
end

-- In world space, and moves "ROOT"
function SwimTo(startPosition, endPosition, duration)
    local startTime = time()

    -- Moving in "X", and "Y" is perpendicular
    local xOffset = endPosition - startPosition
    local yAmplitude = (xOffset ^ Vector3.UP):GetNormalized() * math.random() * 30.0
    local yCycleCount = math.random(0, math.floor(xOffset.size / 50.0))

    while time() <= startTime + duration do
        local t = (time() - startTime) / duration       -- [0.0, 1.0]
        local xt = -2.0 * t ^ 3.0 + 3.0 * t ^ 2.0       -- Cubic with 0 derivative at both ends (smoothest ease)
        local yt = math.sin(yCycleCount * t * math.pi)
        local position = startPosition + xt * xOffset + yt * yAmplitude
        ROOT:SetWorldPosition(position)

        if DEBUG then
            CoreDebug.DrawSphere(position, 2.0, {duration = 10.0})
        end

        Task.Wait()

        if not Object.IsValid(ROOT) then        -- The fish was caught
            return
        end
    end

    ROOT:SetWorldPosition(endPosition)

    if DEBUG then
        CoreDebug.DrawSphere(endPosition, 2.0, {duration = 10.0})
    end
end

function SwimTowardPosition(position, speed)
    if moveTask then
        moveTask:Cancel()
        moveTask = nil
    end

    local startPosition = ROOT:GetWorldPosition()
    local endPosition = position

    local hitResult = World.Raycast(startPosition, endPosition, {ignorePlayers = true})

    if hitResult then
        -- Don't swim within 1m of the shore
        local distanceToImpact = (hitResult:GetImpactPosition() - startPosition).size
        endPosition = startPosition + (endPosition - startPosition):GetNormalized() * (distanceToImpact - 100.0)
    end

    local duration = (startPosition - endPosition).size / speed
    moveTask = Task.Spawn(function() SwimTo(startPosition, endPosition, duration) end)
    nextMoveTime = duration + GetRandomNextMoveTime()
end

function DespawnFish(context)
    local fishProps = {
        areaId = context.areaId,
        spawnPointIndex = context.spawnPointIndex
    }
    FISH_SITE_LIBRARY.ClaimFish(fishProps)
end

function SwimAwayFromPlayer(despawnAtEnd)
    -- Vector that points from the player's position to the fish.
    local heading = ROOT:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()
    local distance = heading.size

    -- Player pos + direction * distance
    local nextPos = ROOT:GetWorldPosition() + (heading / distance) * swimAwayDistance

    -- Swim only in the same surface level
    nextPos.z = SPAWN_POINT_POSITION.z + math.random(-swimZRadius, swimZRadius)

    SwimTowardPosition(nextPos, swimSpeed * 4.0)

    if despawnAtEnd then
        local despawnDelay = distance / (swimSpeed * 4.0)
        Task.Spawn(function() DespawnFish(LOCAL_PLAYER.clientUserData.PI_FISHING_CONTEXT) end, despawnDelay)
    end
end

function CircleAroundBitePosition(circle)
    if not Object.IsValid(fishInstance) then return end

    if circle and not isCircling then
        fishInstance:SetPosition(Vector3.FORWARD * 30)
        FISH_ANCHOR:RotateContinuous(Rotation.New(0,0, swimSpeed), 2.5, true)
    elseif not circle and isCircling then
        fishInstance:SetPosition(Vector3.ZERO)
        FISH_ANCHOR:StopRotate()
    end
    isCircling = circle
end

function ToggleFishAnimation(toggle)
    if Object.IsValid(fishInstance) then
        local fishScript = fishInstance:FindDescendantByType("Script")
        if Object.IsValid(fishScript) then
            if toggle and not isFishAnimating then
                fishScript.context.EnableFishAnimation()
            elseif not toggle and isFishAnimating then
                fishScript.context.DisableFishAnimation()
            end
            isFishAnimating = toggle
        end
    end
end

function CheckNormalSwim()
    local bitePosition = ROOT.clientUserData.bitePosition

    if not currentBitePos and bitePosition then
        SwimTowardPosition(bitePosition, swimSpeed * 3.0)
        CircleAroundBitePosition(true)
        currentBitePos = bitePosition
    elseif currentBitePos and not bitePosition then
        CircleAroundBitePosition(false)
        SwimAwayFromPlayer(true)
        currentBitePos = nil
    end

    if time() >= nextMoveTime and not bitePosition then
        local nextPos = GetRandomPosAroundAPoint(swimXYRadius, swimZRadius, SPAWN_POINT_POSITION)
        SwimTowardPosition(nextPos, swimSpeed)
    end
end

function UpdateSwimPosition()
    -- Stop update task if root doesn't exist
    if not Object.IsValid(ROOT) then
        updateHandle:Cancel()
        return
    end

    local distanceFromPlayer = GetDistanceFromPlayer()

    -- return if player is far away
    if distanceFromPlayer > maxPlayerDistance then
        ROOT.visibility = Visibility.FORCE_OFF
        ToggleFishAnimation(false)
        return
    end

    ROOT.visibility = Visibility.INHERIT
    ToggleFishAnimation(true)

    if distanceFromPlayer < swimXYRadius then
        -- Fish swims away if player is either too close or walks too fast near it
        if distanceFromPlayer < playerCheckRadius then
            SwimAwayFromPlayer()
        elseif LOCAL_PLAYER:GetVelocity().size / LOCAL_PLAYER.maxWalkSpeed > .5 then
            SwimAwayFromPlayer(false)
        else
            CheckNormalSwim()
        end
    else
        CheckNormalSwim()
    end
end

local fishItem = nil
while not fishItem do
    if ROOT.clientUserData.fishId then
        fishItem = ITEM_LIBRARY.GetItem(ROOT.clientUserData.fishId)
    end
    if DEBUG then
        local rng = RandomStream.New(math.random(0,100))
        fishItem, id = ITEM_LIBRARY.GetRandomItemForFilter({areaId = "FISHINGALL"}, rng)
        ROOT.clientUserData.fishId = id
        ROOT.clientUserData.areaId = "FISHINGALL"
        ROOT.clientUserData.spawnPointIndex = 1
        SPAWN_POINT_POSITION = ROOT:GetWorldPosition()
    end
    Task.Wait()
end

fishInstance = World.SpawnAsset(fishItem.assetRef, {parent = FISH_ANCHOR})
fishInstance:SetPosition(Vector3.ZERO)

updateHandle = Task.Spawn(UpdateSwimPosition)
updateHandle.repeatCount = -1
updateHandle.repeatInterval = 1