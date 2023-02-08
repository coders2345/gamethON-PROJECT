local FISH_SITE_LIBRARY = require(script:GetCustomProperty("FishSiteLibrary"))
local FISH_ROD_UPGRADES = require(script:GetCustomProperty("FishingRodUpgradesList"))
local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))

local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()
local ROD = script:GetCustomProperty("Rod"):WaitForObject()
local BOBBER = script:GetCustomProperty("Bobber"):WaitForObject()
local EXECUTE_THROW_SOUND = script:GetCustomProperty("ExecuteThrowSound"):WaitForObject()
local CAST_THROW_SOUND = script:GetCustomProperty("CastThrowSound"):WaitForObject()
local ROD_SEGMENT_TEMPLATE = script:GetCustomProperty("RodSegmentTemplate")
local EYELET_TEMPLATE = script:GetCustomProperty("EyeletTemplate")
local LINE_SEGMENT_TEMPLATE = script:GetCustomProperty("LineSegmentTemplate")
local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local SPLASH_EFFECT = script:GetCustomProperty("SplashEffect")

local TOTAL_LENGTH = EQUIPMENT:GetCustomProperty("RodLength")
local EYELET_COUNT = EQUIPMENT:GetCustomProperty("EyeletCount")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local ROD_SEGMENT_COUNT = 10
local LINE_SEGMENT_COUNT = 10
local BASE_SEGMENT_THICKNESS = 4.5		-- cm
local MIN_SEGMENT_SCALE = 0.25
local MIN_EYELET_SCALE = 0.25
local LINE_HORIZONTAL_SCALE = 0.01
local TENSION_K = 0.05					-- Hooke's law constant for line
local LINE_SPEED = 400.0

local rodSegments = {}
local eyelets = {}
local lineSegments = {}

local tipPosition = Vector3.ZERO
local castForward = Vector3.ZERO
local lineTension = 0.0
local bobberProjectile = nil
local currentLineLength = 0.0

local castHandle = nil
local executeHandle = nil
local pullCastHandle = nil

function UpdateBend()
	if not Object.IsValid(ROD) then return end
	if not Object.IsValid(BOBBER) then return end

	local totalAngle = math.deg(math.atan(lineTension / 4.0))
	local tipWorldPosition = ROD:GetWorldTransform():TransformPosition(tipPosition)
	local lineOffset = BOBBER:GetWorldPosition() - tipWorldPosition

	local rodInverseTransform = ROD:GetWorldTransform():GetInverse()
	local tensionDirection = Vector3.UP

	if lineOffset.size > 0.1 then
		tensionDirection = rodInverseTransform:TransformDirection(lineOffset):GetNormalized()
	end

	local totalQuaternion = Quaternion.New(Vector3.UP, tensionDirection)
	local tensionAngle = math.deg(math.acos(tensionDirection.z))
	local curveStep = 2.0 * totalAngle / ROD_SEGMENT_COUNT / (ROD_SEGMENT_COUNT - 1)

	local currentPosition = Vector3.ZERO
	local currentQuaternion = Quaternion.IDENTITY
	local eyeletIndex = 1

	for i = 1, ROD_SEGMENT_COUNT do
		local segment = rodSegments[i]
		local rotation = Rotation.New(currentQuaternion)
		segment:SetPosition(currentPosition)
		segment:SetRotation(rotation)

		if i * EYELET_COUNT >= eyeletIndex * ROD_SEGMENT_COUNT then
			local eyelet = eyelets[eyeletIndex]
			eyelet:SetPosition(currentPosition)
			eyelet:SetRotation(rotation)
			eyeletIndex = eyeletIndex + 1
		end

		currentPosition = currentPosition + currentQuaternion:GetUpVector() * TOTAL_LENGTH / ROD_SEGMENT_COUNT
		local t = i * curveStep / tensionAngle
		currentQuaternion = currentQuaternion * Quaternion.Slerp(Quaternion.IDENTITY, totalQuaternion, t)
		-- Normalize
		currentQuaternion = Quaternion.New(Rotation.New(currentQuaternion))
	end

	tipPosition = currentPosition
end

function SetLineVisibility(isVisible)
	if not Object.IsValid(EQUIPMENT) then return end
	if not Object.IsValid(BOBBER) then return end

	for _, segment in pairs(lineSegments) do
		if Object.IsValid(segment) then
			if isVisible then
				segment.visibility = Visibility.INHERIT
			else
				segment.visibility = Visibility.FORCE_OFF
			end
		end
	end

	if isVisible then
		BOBBER.visibility = Visibility.INHERIT
	else
		BOBBER.visibility = Visibility.FORCE_OFF
	end
end

function UpdateLine()
	if not Object.IsValid(ROD) then return end
	if not Object.IsValid(BOBBER) then return end

	-- Line is invisible otherwise
	if currentLineLength == 0.0 then
		SetLineVisibility(false)
	else
		SetLineVisibility(true)
		-- Basically we are scaling y = 4x(x - 1), y in [-1, 0], x in [0, 1] to the place we'd like
		-- This exact transform of the parabola ensures both ends line up
		-- We scale y based on tension to make it look good
		-- get the local position of the bobber in the space of the segments we are moving
		local rodInverseTransform = ROD:GetWorldTransform():GetInverse()
		local bobberPosition = rodInverseTransform:TransformPosition(BOBBER:GetWorldPosition())
		local xHat = (bobberPosition - tipPosition):GetNormalized()
		local xScale = (bobberPosition - tipPosition).size
		local localUp = rodInverseTransform:GetUpVector()
		local yHat = (xHat ^ localUp) ^ xHat
		local yScale = xScale / (lineTension + 8.0)
		local positions = {}

		for i = 0, LINE_SEGMENT_COUNT do
			local segment = lineSegments[i]
			local x = i / LINE_SEGMENT_COUNT
			local y = 4 * x * (x - 1.0)
			positions[i] = tipPosition + x * xScale * xHat + y * yScale * yHat
		end

		for i = 1, LINE_SEGMENT_COUNT do
			local segment = lineSegments[i]
			segment:SetPosition(positions[i - 1])
			segment:SetRotation(Rotation.New(Quaternion.New(Vector3.UP, positions[i] - positions[i - 1])))
			local zScale = (positions[i] - positions[i - 1]).size / 100.0
			segment:SetScale(Vector3.New(LINE_HORIZONTAL_SCALE, LINE_HORIZONTAL_SCALE, zScale))
		end
	end
end

function UpdateTension(deltaTime)
	if currentLineLength > 0.0 then
		local tipWorldPosition = ROD:GetWorldTransform():TransformPosition(tipPosition)
		local actualLength = (BOBBER:GetWorldPosition() - tipWorldPosition).size
		-- Using Hooke's law
		local dx = actualLength - currentLineLength
		lineTension = math.max(0.0, 25.0 + dx * TENSION_K)

		-- If there is a projectile, OnExecute() is handling currentLineLength for us
		if not Object.IsValid(bobberProjectile) then
			local lineStep = LINE_SPEED * deltaTime

			if dx > lineStep then
				currentLineLength = currentLineLength + lineStep
			elseif dx < -lineStep then
				currentLineLength = currentLineLength - lineStep
			else
				currentLineLength = actualLength
			end
		end
	end
end

function RemoveLine()
	if Object.IsValid(bobberProjectile) then
		bobberProjectile:Destroy()
	end

	bobberProjectile = nil
	currentLineLength = 0.0
	lineTension = 0.0
end

function UpdateProjectileCollision()
	if not Object.IsValid(BOBBER) then return end

	if bobberProjectile then
		if Object.IsValid(bobberProjectile) then
			BOBBER:SetWorldPosition(bobberProjectile:GetWorldPosition())
			local collisionPoint = FISH_SITE_LIBRARY.GetCollisionPointWithWater(bobberProjectile:GetWorldPosition())

			if collisionPoint then
				Events.Broadcast("FishingBobberOnWater", EQUIPMENT.id, true)
				BOBBER:SetWorldPosition(collisionPoint)
				bobberProjectile:Destroy()
				bobberProjectile = nil
				if SPLASH_EFFECT then
					World.SpawnAsset(SPLASH_EFFECT, {position = collisionPoint})
				end
			end
		else
			-- We hit something other than water
			Events.Broadcast("FishingBobberOnWater", EQUIPMENT.id, false)
			RemoveLine()
		end
	end
end

function OnCast(ability)
	RemoveLine()
	if not Object.IsValid(ROD) then return end
	local castQuat = nil

	if ability.owner == LOCAL_PLAYER then
		local aimRotation = LOCAL_PLAYER:GetViewWorldRotation()
		castRotation = Rotation.New(0.0, math.min(aimRotation.y + 35.0, 60.0), aimRotation.z)
	else
		-- Look at the angle of the rod handle, then angle up a bit to get a reasonable launch angle
		local rodRotation = ROD:GetWorldRotation()
		castRotation = Rotation.New(0.0, math.min(rodRotation.y + 65.0, 60.0), rodRotation.z)
	end

	castForward = castRotation * Vector3.FORWARD

end

function OnExecute(ability)
	CAST_THROW_SOUND:Play()
	Task.Wait(0.08)		-- Specifically tuned to get the right part of the swing
	if not Object.IsValid(ROD) then return end

	local currentLevel = STATS_LIBRARY.GetStat(ability.owner, "FishingRodLevel")
	local castSpeed = FISH_ROD_UPGRADES[currentLevel].rodData.castSpeed
	local player = ability.owner
	local approximateTipOffset = (Vector3.UP + player:GetWorldRotation() * Vector3.FORWARD) * 260.0
	local projectileStart = player:GetWorldPosition() + approximateTipOffset

	projectileStart = projectileStart + castForward * 50.0
	bobberProjectile = Projectile.Spawn(PROJECTILE_TEMPLATE, projectileStart, castForward)
	bobberProjectile.speed = castSpeed
	local castTime = time()

	EXECUTE_THROW_SOUND:Play()

	while Object.IsValid(bobberProjectile) do
		currentLineLength = (time() - castTime) * castSpeed
		Task.Wait()
	end
end

function GetFishingEquipment(player)
	if not Object.IsValid(player) then return nil end
    local equipments = player:GetEquipment()
    for _, equipment in pairs(equipments) do
        if equipment:GetCustomProperty("FishingEquipment") then
            return equipment
        end
    end
end

function OnUnequipped()
	if Object.IsValid(BOBBER) then
		BOBBER:Destroy()
	end
	if castHandle then
		castHandle:Disconnect()
	end
	if executeHandle then
		executeHandle:Disconnect()
	end
	if pullCastHandle then
		pullCastHandle:Disconnect()
	end
end

function Tick(deltaTime)
	if not Object.IsValid(EQUIPMENT) then return end
	if not Object.IsValid(ROD) then return end
	if not Object.IsValid(BOBBER) then return end

	UpdateProjectileCollision()
	UpdateLine()
	UpdateBend()
	UpdateTension(deltaTime)
end

-- Create pieces of curves
for i = 1, ROD_SEGMENT_COUNT do
	local segment = World.SpawnAsset(ROD_SEGMENT_TEMPLATE, {parent = ROD})
	local horizontalScale = CoreMath.Lerp(1.0, MIN_SEGMENT_SCALE, (i - 1) / (ROD_SEGMENT_COUNT - 1))
	horizontalScale = horizontalScale * BASE_SEGMENT_THICKNESS / 100.0
	segment:SetScale(Vector3.New(horizontalScale, horizontalScale, TOTAL_LENGTH / ROD_SEGMENT_COUNT / 100.0))
	table.insert(rodSegments, segment)
end

for i = 1, EYELET_COUNT do
	local eyelet = World.SpawnAsset(EYELET_TEMPLATE, {parent = ROD})
	local scale = CoreMath.Lerp(1.0, MIN_EYELET_SCALE, (i - 1) / (EYELET_COUNT - 1))
	eyelet:SetScale(Vector3.New(scale))
	table.insert(eyelets, eyelet)
end

for i = 1, LINE_SEGMENT_COUNT do
	local segment = World.SpawnAsset(LINE_SEGMENT_TEMPLATE, {parent = ROD})
	table.insert(lineSegments, segment)
end

-- Events setup
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

-- Setup pole before we wait for an owner
UpdateBend()

-- Get the fishing interaction equipment
local fishingEquipment = nil
while not Object.IsValid(fishingEquipment) do
	fishingEquipment = GetFishingEquipment(EQUIPMENT.owner)
	Task.Wait()
end

local CAST_ABILITY = fishingEquipment:GetCustomProperty("CastAbility"):WaitForObject()
local PULL_ABILITY = fishingEquipment:GetCustomProperty("PullAbility"):WaitForObject()
castHandle = CAST_ABILITY.castEvent:Connect(OnCast)
executeHandle = CAST_ABILITY.executeEvent:Connect(OnExecute)
pullCastHandle = PULL_ABILITY.castEvent:Connect(function() CAST_THROW_SOUND:Play() end)

-- Setup visibility
if Object.IsValid(BOBBER) then
	BOBBER.parent = World.GetRootObject()
end

SetLineVisibility(false)
