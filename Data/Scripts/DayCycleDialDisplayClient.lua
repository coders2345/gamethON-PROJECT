local API = require(script:GetCustomProperty("APIDayNightCycle"))
local SUN_DIAL = script:GetCustomProperty("SunDialRotation"):WaitForObject()
local BACKGROUND = script:GetCustomProperty("DayNightBGBackground"):WaitForObject()
local DAY = script:GetCustomProperty("DayNightBGDay"):WaitForObject()
local NIGHT = script:GetCustomProperty("DayNightBGNight"):WaitForObject()
local SUNRISE = script:GetCustomProperty("DayNightBGSunrise"):WaitForObject()
local SUNSET = script:GetCustomProperty("DayNightBGSunset"):WaitForObject()
local SHINE = script:GetCustomProperty("GlobeShine"):WaitForObject()




function Tick(deltaTime)
    local state = API.GetCycleState()
    if not state then return end

	SUN_DIAL.rotationAngle = API.GetDayCycleTime() * -360
	local t = (1 + math.sin(math.rad(SUN_DIAL.rotationAngle - 90)))*0.5
	local t2 = (1 + math.sin(math.rad(SUN_DIAL.rotationAngle)))*0.5
	
	
	BACKGROUND:SetColor(Color.Lerp(Color.WHITE,Color.BLACK,t))
	
	
	local tempColor = DAY:GetColor()
	tempColor.a = 1-t
	DAY:SetColor(tempColor)
	
	tempColor = SHINE:GetColor()
	tempColor.a = 1-t
	SHINE:SetColor(tempColor)
	
	tempColor = NIGHT:GetColor()
	tempColor.a = t
	NIGHT:SetColor(tempColor)
	
	
	tempColor = SUNRISE:GetColor()
	tempColor.a = (-0.5+t2)*2
	SUNRISE:SetColor(tempColor)
	
	tempColor = SUNSET:GetColor()
	tempColor.a = (0.5-t2)*2
	SUNSET:SetColor(tempColor)
	
	
	
	
end