local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))

local OBJECT = script:GetCustomProperty("Object"):WaitForObject()
local COMPONENT_ROOT = script:GetCustomProperty("Root"):WaitForObject()

local OBSERVE_DURATION = 4

local vel = Vector3.ZERO
local desiredVelocity = Vector3.ZERO
local desVel = 0
local acc = Vector3.ZERO
local force = 0
local mass = 1
local steering = Vector3.ZERO
local maxSpeed = 50
local maxForce = 10
local pos = Vector3.New()
local toPlayer = nil

function GetVfxForRarity(rarity)
	if rarity == ITEM_LIBRARY.RARITY_COMMON then
		return script:GetCustomProperty("CommonItemVFX")
	elseif rarity == ITEM_LIBRARY.RARITY_UNCOMMON then
		return script:GetCustomProperty("UncommonItemVFX")
	elseif rarity == ITEM_LIBRARY.RARITY_RARE then
		return script:GetCustomProperty("RareItemVFX")
	elseif rarity == ITEM_LIBRARY.RARITY_LEGENDARY then
		return script:GetCustomProperty("LegendaryItemVFX")
	end
	
	return nil
end

function Start()
    toPlayer = GetFollowPlayer()
end

function Stop()
    if Object.IsValid(OBJECT) then
    	local itemId = COMPONENT_ROOT:GetCustomProperty("ContentToSpawn")
    	local item = ITEM_LIBRARY.GetItem(itemId)
    	if item ~= nil then
    		local vfx = GetVfxForRarity(item.itemRarity)
	    	if vfx ~= nil then
		        World.SpawnAsset(vfx, { position = OBJECT:GetWorldPosition()})
		    end
		end
        OBJECT:Destroy()
    end
end

function IsNearlyEqual(lhs, rhs)
    local epsilon = 10
    return math.abs(lhs - rhs) < epsilon
end

function mapRange( a1, a2, b1, b2, s )
    return b1 + (s-a1)*(b2-b1)/(a2-a1)
end

function ApplyForce(inForce)
    force = inForce
end

function Seek(target)
    local desiredVelocity = (target - OBJECT:GetWorldPosition() ):GetNormalized() * maxSpeed
    steering = desiredVelocity - vel
    -- clamp steer to max force
    if steering.size > maxForce then
        steering = steering:GetNormalized() * maxForce
    end
    ApplyForce(steering)
end

function Arrive(target)
    local desiredVelocity = target - OBJECT:GetWorldPosition()
    if desiredVelocity.size < 50 then
        -- arrived
        local m = mapRange(0, maxSpeed, 0, 50, desiredVelocity.size)
        desiredVelocity = desiredVelocity:GetNormalized() * m 
    else
        desiredVelocity = desiredVelocity:GetNormalized() * maxSpeed
    end

    steering = desiredVelocity - vel
    -- clamp steer to max force
    if steering.size > maxForce then
        steering = steering:GetNormalized() * maxForce
    end
    ApplyForce(steering)
end

local etime = 0
function Tick(dt)
    if toPlayer and Object.IsValid(OBJECT)then
        local target = toPlayer:GetWorldPosition()
        local pos = OBJECT:GetWorldPosition()
        local desiredVelocity = target - pos
        if IsNearlyEqual(desiredVelocity.size, 0.0) then
            Stop()
            return
        end
        
        etime = etime + dt
        Arrive(target)
        -- acc
        acc = force / mass
        -- vel
        vel = vel + acc * etime
        if vel.size > maxSpeed then
            vel = vel:GetNormalized() * maxForce
        end
        
        pos = pos + vel
        OBJECT:SetWorldPosition(pos)
        acc = acc * 0
    end
end

function GetFollowPlayer()
    for _, player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT_ROOT:GetCustomProperty("PlayerId") then
            return player
        end
    end
end

Task.Wait(OBSERVE_DURATION)
Start()
