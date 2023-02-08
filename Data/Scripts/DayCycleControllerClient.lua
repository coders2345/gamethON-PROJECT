local API = require(script:GetCustomProperty("APIDayNightCycle"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local ENVIRONMENT_FOG = script:GetCustomProperty("EnvironmentFog"):WaitForObject()
local MOON = script:GetCustomProperty("Moon"):WaitForObject()
local SKY_DOME = script:GetCustomProperty("SkyDome"):WaitForObject()
local SKYLIGHT = script:GetCustomProperty("Skylight"):WaitForObject()
local STAR_DOME = script:GetCustomProperty("StarDome"):WaitForObject()
local SUNLIGHT = script:GetCustomProperty("SunLight"):WaitForObject()
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

local DAY_LENGTH_MINUTES = COMPONENT_ROOT:GetCustomProperty("DayLengthMinutes")
local USE_REAL_MOON_TIMING = COMPONENT_ROOT:GetCustomProperty("UseRealMoonTiming")
local currentState = "Undef"

-- Day
local DAY_FOG_DENSITY = 0.0
local DAY_FOG_FALLOFF = 0.2
local DAY_FOG_START = 3000.0
local DAY_FOG_OPACITY = 1.0
local DAY_SKY_DOME_ZENITH_COLOR = Color.New(0.024, 0.063, 0.212, 0.886)
local DAY_SKYLIGHT_INTENSITY = 3.0
local DAY_SKYLIGHT_TINT_COLOR = Color.WHITE
local DAY_STAR_DOME_VISIBILITY = 0.0
local DAY_SUNLIGHT_INTENSITY = 3.5
local DAY_SUNLIGHT_COLOR = Color.New(1.0, 0.96, 0.74)
local DAY_SUNLIGHT_DISC_COLOR = Color.New(3.0, 2.88, 2.22)
local DAY_SUNDISC_SIZE = 20.0
local DAY_MOON_SIZE = 3.0
-- Dusk
local DUSK_FOG_DENSITY = 2.0
local DUSK_FOG_FALLOFF = 0.2
local DUSK_FOG_START = 3000.0
local DUSK_FOG_OPACITY = 1.0
local DUSK_SKY_DOME_ZENITH_COLOR = Color.New(0.120, 0.217, 0.495, 0.6)
local DUSK_SKYLIGHT_INTENSITY = 3.0
local DUSK_SKYLIGHT_TINT_COLOR = Color.New(1.0, 0.33, 0.2)
local DUSK_STAR_DOME_VISIBILITY = 0.02
local DUSK_SUNLIGHT_INTENSITY = 3.5
local DUSK_SUNLIGHT_COLOR = Color.New(1.0, 0.18, 0.1)
local DUSK_SUNLIGHT_DISC_COLOR = Color.New(1.0, 0.18, 0.1)
local DUSK_SUNDISC_SIZE = 40.0
local DUSK_MOON_SIZE = 8.0
-- Night
local NIGHT_FOG_DENSITY = 2.0
local NIGHT_FOG_FALLOFF = 0.5
local NIGHT_FOG_START = 0.0
local NIGHT_FOG_OPACITY = 0.5
local NIGHT_SKY_DOME_ZENITH_COLOR = Color.New(0.031, 0.03, 0.047, 0.183)
local NIGHT_SKYLIGHT_INTENSITY = 1.0
local NIGHT_SKYLIGHT_TINT_COLOR = Color.WHITE
local NIGHT_STAR_DOME_VISIBILITY = 1.0
local NIGHT_SUNLIGHT_INTENSITY = 1.0
local NIGHT_SUNLIGHT_COLOR = Color.New(0.68, 0.8, 1.0)
local NIGHT_SUNLIGHT_DISC_COLOR = Color.New(1.0, 0.96, 0.74)
local NIGHT_SUNDISC_SIZE = 0.0
local NIGHT_MOON_SIZE = 3.0
-- Dawn
local DAWN_FOG_DENSITY = 2.0
local DAWN_FOG_FALLOFF = 0.2
local DAWN_FOG_START = 3000.0
local DAWN_FOG_OPACITY = 1.0
local DAWN_SKY_DOME_ZENITH_COLOR = Color.New(0.120, 0.217, 0.495, 0.6)
local DAWN_SKYLIGHT_INTENSITY = 3.0
local DAWN_SKYLIGHT_TINT_COLOR = Color.New(1.0, 0.81, 0.56)
local DAWN_STAR_DOME_VISIBILITY = 0.02
local DAWN_SUNLIGHT_INTENSITY = 3.5
local DAWN_SUNLIGHT_COLOR = Color.New(1, 0, 0.1)
local DAWN_SUNLIGHT_DISC_COLOR = Color.New(1, 0.44, 0.13)
local DAWN_SUNDISC_SIZE = 40.0
local DAWN_MOON_SIZE = 8.0

local sunT = os.time()

-- 0.0  - noon
-- 0.25 - dusk
-- 0.5  - midnight
-- 0.75 - dawn
function GetDayCycleTime()
	return sunT % 1.0
end

function InterpolateIntensity(a, t)
	return a * (1 - t) ^ 6.0
end

function Tick(deltaTime)
	local serverStartOSTime = SERVER_SCRIPT:GetCustomProperty("ServerStartOSTime")
	sunT = (time() + serverStartOSTime) / 60.0 / DAY_LENGTH_MINUTES
	local moonT = sunT * 0.9633
	local sunAngle = sunT % 1.0 * 360.0
	local moonAngle = moonT % 1.0 * 360.0

	if sunAngle > 270.0 or sunAngle < 90.0 then
		SUNLIGHT:SetRotation(Rotation.New(0.0, sunAngle + 270.0, 90.0))

		for _, child in pairs(SUNLIGHT:GetChildren()) do
			child.visibility = Visibility.INHERIT
		end
	else
		SUNLIGHT:SetRotation(Rotation.New(0.0, sunAngle + 90.0, 90.0))

		for _, child in pairs(SUNLIGHT:GetChildren()) do
			child.visibility = Visibility.FORCE_OFF
		end
	end

	if USE_REAL_MOON_TIMING then
		MOON:SetRotation(Rotation.New(0.0, moonAngle, 90.0))
		local lightDirection = Rotation.New(sunT * 360.0, 0.0, 180.0) * -Vector3.UP
		MOON:SetSmartProperty("Light Direction", lightDirection)
	else
		MOON:SetRotation(Rotation.New(0.0, sunAngle + 90.0, 90.0))
		local lightDirection = Rotation.New(sunT * 1.04 * 360.0, 0.0, 180.0) * -Vector3.UP	-- Moon cycles
		MOON:SetSmartProperty("Light Direction", lightDirection)
	end

	if sunAngle < 90.0 then			-- Noon until mid dusk
		if currentState ~= "Noon" then
			BroadcastNoon()
		end
		local t = CoreMath.Clamp((sunAngle - 50.0) / 30.0)
		ENVIRONMENT_FOG:SetSmartProperty("Fog Density", CoreMath.Lerp(DAY_FOG_DENSITY, DUSK_FOG_DENSITY, t))
		ENVIRONMENT_FOG:SetSmartProperty("Falloff", CoreMath.Lerp(DAY_FOG_FALLOFF, DUSK_FOG_FALLOFF, t))
		ENVIRONMENT_FOG:SetSmartProperty("Start", CoreMath.Lerp(DAY_FOG_START, DUSK_FOG_START, t))
		ENVIRONMENT_FOG:SetSmartProperty("Opacity", CoreMath.Lerp(DAY_FOG_OPACITY, DUSK_FOG_OPACITY, t))
		SKY_DOME:SetSmartProperty("Zenith Color", Color.Lerp(DAY_SKY_DOME_ZENITH_COLOR, DUSK_SKY_DOME_ZENITH_COLOR, t))
		SKYLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(DAY_SKYLIGHT_INTENSITY, DUSK_SKYLIGHT_INTENSITY, t))
		SKYLIGHT:SetSmartProperty("Tint Color", Color.Lerp(DAY_SKYLIGHT_TINT_COLOR, DUSK_SKYLIGHT_TINT_COLOR, t))
		STAR_DOME:SetSmartProperty("Star Visibility", CoreMath.Lerp(DAY_STAR_DOME_VISIBILITY, DUSK_STAR_DOME_VISIBILITY, t))
		
		if sunAngle > 80.0 then
			local intensityT = CoreMath.Clamp((sunAngle - 80.0) / 10.0)
			SUNLIGHT:SetSmartProperty("Intensity", InterpolateIntensity(DUSK_SUNLIGHT_INTENSITY, intensityT))
		else
			SUNLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(DAY_SUNLIGHT_INTENSITY, DUSK_SUNLIGHT_INTENSITY, t))
		end

		SUNLIGHT:SetSmartProperty("Light Color", Color.Lerp(DAY_SUNLIGHT_COLOR, DUSK_SUNLIGHT_COLOR, t))
		SUNLIGHT:SetSmartProperty("Sun Disc Color" , Color.Lerp(DAY_SUNLIGHT_DISC_COLOR, DUSK_SUNLIGHT_DISC_COLOR, t))
		SUNLIGHT:SetSmartProperty("Size" , CoreMath.Lerp(DAY_SUNDISC_SIZE, DUSK_SUNDISC_SIZE, t))
		MOON:SetSmartProperty("Scale" , CoreMath.Lerp(DAY_MOON_SIZE, DUSK_MOON_SIZE, t))
	elseif sunAngle < 180.0 then	-- Mid dusk until midnight
		if currentState ~= "Dusk" then
			BroadcastDusk()
		end
		local t = CoreMath.Clamp((sunAngle - 90.0) / 25.0)
		ENVIRONMENT_FOG:SetSmartProperty("Fog Density", CoreMath.Lerp(DUSK_FOG_DENSITY, NIGHT_FOG_DENSITY, t))
		ENVIRONMENT_FOG:SetSmartProperty("Falloff", CoreMath.Lerp(DUSK_FOG_FALLOFF, NIGHT_FOG_FALLOFF, t))
		ENVIRONMENT_FOG:SetSmartProperty("Start", CoreMath.Lerp(DUSK_FOG_START, NIGHT_FOG_START, t))
		ENVIRONMENT_FOG:SetSmartProperty("Opacity", CoreMath.Lerp(DUSK_FOG_OPACITY, NIGHT_FOG_OPACITY, t))
		SKY_DOME:SetSmartProperty("Zenith Color", Color.Lerp(DUSK_SKY_DOME_ZENITH_COLOR, NIGHT_SKY_DOME_ZENITH_COLOR, t))
		SKYLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(DUSK_SKYLIGHT_INTENSITY, NIGHT_SKYLIGHT_INTENSITY, t))
		SKYLIGHT:SetSmartProperty("Tint Color", Color.Lerp(DUSK_SKYLIGHT_TINT_COLOR, NIGHT_SKYLIGHT_TINT_COLOR, t))
		STAR_DOME:SetSmartProperty("Star Visibility", CoreMath.Lerp(DUSK_STAR_DOME_VISIBILITY, NIGHT_STAR_DOME_VISIBILITY, t))
		SUNLIGHT:SetSmartProperty("Intensity", InterpolateIntensity(NIGHT_SUNLIGHT_INTENSITY, 1.0 - t))
		SUNLIGHT:SetSmartProperty("Light Color", Color.Lerp(DUSK_SUNLIGHT_COLOR, NIGHT_SUNLIGHT_COLOR, t))
		SUNLIGHT:SetSmartProperty("Sun Disc Color" , Color.Lerp(DUSK_SUNLIGHT_DISC_COLOR, NIGHT_SUNLIGHT_DISC_COLOR, t))
		SUNLIGHT:SetSmartProperty("Size" , CoreMath.Lerp(DUSK_SUNDISC_SIZE, NIGHT_SUNDISC_SIZE, t))
		MOON:SetSmartProperty("Scale" , CoreMath.Lerp(DUSK_MOON_SIZE, NIGHT_MOON_SIZE, t))
	elseif sunAngle < 270.0 then	-- Midnight until mid dawn
		if currentState ~= "Midnight" then
			BroadcastMidnight()
		end
		local t = CoreMath.Clamp((sunAngle - 245.0) / 25.0)
		ENVIRONMENT_FOG:SetSmartProperty("Fog Density", CoreMath.Lerp(NIGHT_FOG_DENSITY, DAWN_FOG_DENSITY, t))
		ENVIRONMENT_FOG:SetSmartProperty("Falloff", CoreMath.Lerp(NIGHT_FOG_FALLOFF, DAWN_FOG_FALLOFF, t))
		ENVIRONMENT_FOG:SetSmartProperty("Start", CoreMath.Lerp(NIGHT_FOG_START, DAWN_FOG_START, t))
		ENVIRONMENT_FOG:SetSmartProperty("Opacity", CoreMath.Lerp(NIGHT_FOG_OPACITY, DAWN_FOG_OPACITY, t))
		SKY_DOME:SetSmartProperty("Zenith Color", Color.Lerp(NIGHT_SKY_DOME_ZENITH_COLOR, DAWN_SKY_DOME_ZENITH_COLOR, t))
		SKYLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(NIGHT_SKYLIGHT_INTENSITY, DAWN_SKYLIGHT_INTENSITY, t))
		SKYLIGHT:SetSmartProperty("Tint Color", Color.Lerp(NIGHT_SKYLIGHT_TINT_COLOR, DAWN_SKYLIGHT_TINT_COLOR, t))
		STAR_DOME:SetSmartProperty("Star Visibility", CoreMath.Lerp(NIGHT_STAR_DOME_VISIBILITY, DAWN_STAR_DOME_VISIBILITY, t))
		SUNLIGHT:SetSmartProperty("Intensity", InterpolateIntensity(NIGHT_SUNLIGHT_INTENSITY, t))
		SUNLIGHT:SetSmartProperty("Light Color", Color.Lerp(NIGHT_SUNLIGHT_COLOR, DAWN_SUNLIGHT_COLOR, t))
		SUNLIGHT:SetSmartProperty("Sun Disc Color" , Color.Lerp(NIGHT_SUNLIGHT_DISC_COLOR, DAWN_SUNLIGHT_DISC_COLOR, t))
		SUNLIGHT:SetSmartProperty("Size" , CoreMath.Lerp(NIGHT_SUNDISC_SIZE, DAWN_SUNDISC_SIZE, t))
		MOON:SetSmartProperty("Scale" , CoreMath.Lerp(NIGHT_MOON_SIZE, DAWN_MOON_SIZE, t))
	else							-- Mid dawn until noon
		if currentState ~= "Dawn" then
			BroadcastDawn()
		end
		local t = CoreMath.Clamp((sunAngle - 280.0) / 30.0)
		ENVIRONMENT_FOG:SetSmartProperty("Fog Density", CoreMath.Lerp(DAWN_FOG_DENSITY, DAY_FOG_DENSITY, t))
		ENVIRONMENT_FOG:SetSmartProperty("Falloff", CoreMath.Lerp(DAWN_FOG_FALLOFF, DAY_FOG_FALLOFF, t))
		ENVIRONMENT_FOG:SetSmartProperty("Start", CoreMath.Lerp(DAWN_FOG_START, DAY_FOG_START, t))
		ENVIRONMENT_FOG:SetSmartProperty("Opacity", CoreMath.Lerp(DAWN_FOG_OPACITY, DAY_FOG_OPACITY, t))
		SKY_DOME:SetSmartProperty("Zenith Color", Color.Lerp(DAWN_SKY_DOME_ZENITH_COLOR, DAY_SKY_DOME_ZENITH_COLOR, t))
		SKYLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(DAWN_SKYLIGHT_INTENSITY, DAY_SKYLIGHT_INTENSITY, t))
		SKYLIGHT:SetSmartProperty("Tint Color", Color.Lerp(DAWN_SKYLIGHT_TINT_COLOR, DAY_SKYLIGHT_TINT_COLOR, t))
		STAR_DOME:SetSmartProperty("Star Visibility", CoreMath.Lerp(DAWN_STAR_DOME_VISIBILITY, DAY_STAR_DOME_VISIBILITY, t))
	
		if sunAngle < 280.0 then
			local intensityT = 1.0 - CoreMath.Clamp((sunAngle - 270.0) / 10.0)
			SUNLIGHT:SetSmartProperty("Intensity", InterpolateIntensity(DUSK_SUNLIGHT_INTENSITY, intensityT))
		else
			SUNLIGHT:SetSmartProperty("Intensity", CoreMath.Lerp(DAWN_SUNLIGHT_INTENSITY, DAY_SUNLIGHT_INTENSITY, t))
		end

		SUNLIGHT:SetSmartProperty("Light Color", Color.Lerp(DAWN_SUNLIGHT_COLOR, DAY_SUNLIGHT_COLOR, t))
		SUNLIGHT:SetSmartProperty("Sun Disc Color" , Color.Lerp(DAWN_SUNLIGHT_DISC_COLOR, DAY_SUNLIGHT_DISC_COLOR, t))
		SUNLIGHT:SetSmartProperty("Size" , CoreMath.Lerp(DAWN_SUNDISC_SIZE, DAY_SUNDISC_SIZE, t))
		MOON:SetSmartProperty("Scale" , CoreMath.Lerp(DAWN_MOON_SIZE, DAY_MOON_SIZE, t))
	end
end

function GetState()
	local result = {}

    result.serverStartOSTime = SERVER_SCRIPT:GetCustomProperty("ServerStartOSTime")
	result.currentTime = time() + result.serverStartOSTime
    result.dayLengthMinutes = DAY_LENGTH_MINUTES
    result.currentState = currentState
    result.sunTime = sunT

    return result
end

function BroadcastNoon()
	currentState = "Noon"
	Events.Broadcast(currentState)
end

function BroadcastDusk()
	currentState = "Dusk"
	Events.Broadcast(currentState)
end

function BroadcastMidnight()
	currentState = "Midnight"
	Events.Broadcast(currentState)
end

function BroadcastDawn()
	currentState = "Dawn"
	Events.Broadcast(currentState)
end

local functionTable = {}
functionTable.GetState = GetState
functionTable.GetDayCycleTime = GetDayCycleTime

API.RegisterDayNightCycle(functionTable)
