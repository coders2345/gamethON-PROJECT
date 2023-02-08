--[[
Copyright 2020 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()
local ROOT = script.parent

local BALLOON_GROUP = script:GetCustomProperty("BalloonGroup"):WaitForObject()
local STRING_GROUP = script:GetCustomProperty("StringGroup"):WaitForObject()
local BALLOON_GEOS = script:GetCustomProperty("BalloonGeos"):WaitForObject():GetChildren()

local STRING_LENGTH = 150.0
local BALLOON_RADIUS = 56.0
local BALLOON_LINEAR_DAMPING = 5.0
local BALLOON_K = 60.0
local BALLOON_ANGULAR_DAMPING = 40.0
local BALLOON_ROTATIONAL_INERTIA = 5.0
local HELIUM_FACTOR = 2000.0
local STRINGS = {}

local balloonPosition = nil
local balloonQuat = Quaternion.IDENTITY
local balloonVelocity = Vector3.ZERO
local balloonAngularVelocity = Vector3.ZERO
local previousAnimationStance = nil

function SetBalloon()
	local id = ROOT.id
	id = string.sub(id, 1, string.find(id, ":") - 1)
	local stream = RandomStream.New(tonumber(id, 16))
	local color = Color.New(stream:GetNumber(), stream:GetNumber(), stream:GetNumber())

	local balloonIndex = math.floor(stream:GetNumber(1,#BALLOON_GEOS))

	local ballonGroup = BALLOON_GEOS[balloonIndex]
	ballonGroup.visibility = Visibility.FORCE_ON

	for _, child in pairs(ballonGroup:GetChildren()) do
		if child:IsA("StaticMesh") then
			child:SetColor(color)
		end
	end
end

function Tick(deltaTime)
	local player = ROOT.clientUserData.owner

	if player then
		if not balloonPosition then
			balloonPosition = player:GetWorldPosition() + Vector3.UP * 300.0
		end
		-- Linear physics
		local handPosition = player:GetWorldPosition() + Vector3.UP * 50
		local deltaPosition = balloonPosition - handPosition
		deltaPosition = deltaPosition:GetNormalized() * math.max(0.0, deltaPosition.size - STRING_LENGTH)
		local stringForce = -deltaPosition * BALLOON_K
		local acceleration = stringForce - balloonVelocity * BALLOON_LINEAR_DAMPING + Vector3.UP * HELIUM_FACTOR
		balloonVelocity = balloonVelocity + acceleration * deltaTime
		balloonPosition = balloonPosition + balloonVelocity * deltaTime
		BALLOON_GROUP:SetWorldPosition(balloonPosition)

		-- Angular physics
		local stringToCenter = balloonQuat:GetUpVector()
		local torque = -stringToCenter ^ stringForce - balloonAngularVelocity * BALLOON_ANGULAR_DAMPING
		local angularAcceleration = torque / BALLOON_ROTATIONAL_INERTIA
		balloonAngularVelocity = balloonAngularVelocity + angularAcceleration * deltaTime
		balloonQuat = Quaternion.New(balloonAngularVelocity, deltaTime) * balloonQuat
		local newRotation = Rotation.New(balloonQuat)
		balloonQuat = Quaternion.New(newRotation)		-- Normalize
		BALLOON_GROUP:SetWorldRotation(newRotation)

		-- String physics (catenaries are hard, just using a parabola)
		local nStrings = #STRINGS
		local balloonOffset = balloonPosition - handPosition
		local rDirection = balloonOffset
		rDirection.z = 0.0
		if rDirection.size > 1 then
			rDirection = rDirection:GetNormalized()
		end
		-- Parabola z = f(r) = a(r - b)^2 + c. We pick a so that it has a nice upwards curve. r is a combination of x and y
		local a = 0.05

		if math.abs(balloonOffset .. rDirection) > 3.0 then
			a = a * CoreMath.Lerp(1.0, 0.1, math.min(1.0, math.abs(balloonOffset .. rDirection) - 3.0))
		end

		local numerPart1 = (balloonPosition.z - handPosition.z) / a
		local numerPart2 = (balloonPosition .. rDirection) ^ 2 - (handPosition .. rDirection) ^ 2
		local denom = 2.0 * ((handPosition .. rDirection) - (balloonPosition .. rDirection))
		local b = (numerPart1 - numerPart2) / denom
		local c = balloonPosition.z - a * ((balloonPosition .. rDirection) - b) ^ 2

		local points = {}

		for i = 1, nStrings + 1 do
			local x = handPosition.x + (i - 1) * balloonOffset.x / nStrings
			local y = handPosition.y + (i - 1) * balloonOffset.y / nStrings
			local r = (handPosition + (i - 1) * balloonOffset / nStrings) .. rDirection
			local z = a * (r - b) ^ 2 + c
			table.insert(points, Vector3.New(x, y, z))
		end

		for i = 1, nStrings do
			local newPosition = ((points[i] + points[i + 1]) / 2.0)
			local newScale = ((points[i + 1] - points[i]).size / 100.0 + 0.005)
			local newRotation = (points[i + 1] - points[i])
			if newRotation.size > 1 then
				newRotation = newRotation:GetNormalized()
			end

			if tostring(newPosition) == "-nan(ind)" or tostring(newScale) == "-nan(ind)" then
				break
			end

			STRINGS[i]:SetWorldPosition(newPosition)
			STRINGS[i]:SetWorldRotation(Rotation.New(Quaternion.New(Vector3.UP, newRotation)))
			STRINGS[i]:SetWorldScale(Vector3.New(0.02, 0.02, newScale))
		end
	end
end

function FloatBalloon()
	local position = BALLOON_GROUP:GetWorldPosition()
	STRING_GROUP:Destroy()
	BALLOON_GROUP:MoveTo(position + Vector3.UP * 4000, 30.0)
	BALLOON_GROUP:RotateTo(Rotation.ZERO, 10.0)
	Task.Wait(0.5)
	BALLOON_GROUP:Destroy()
end

function OnDestroyed(coreObject)
	Task.Spawn(FloatBalloon)
end

-- Initialize
SetBalloon()
BALLOON_GROUP.parent = World.GetRootObject()
STRING_GROUP.parent = World.GetRootObject()

for _, child in pairs(STRING_GROUP:GetChildren()) do
	table.insert(STRINGS, child)
end

ROOT.destroyEvent:Connect(OnDestroyed)
