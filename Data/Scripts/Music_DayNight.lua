local propDayMusic = script:GetCustomProperty("DayMusic"):WaitForObject()
local propNightMusic = script:GetCustomProperty("NightMusic"):WaitForObject()
local propCrickets = script:GetCustomProperty("Crickets"):WaitForObject()
local propBirds = script:GetCustomProperty("Birds"):WaitForObject()
local propRooster = script:GetCustomProperty("Rooster"):WaitForObject()
local propWolfHowl = script:GetCustomProperty("WolfHowl"):WaitForObject()
local day = false
local night = false

local currentDayMusic = 1
local currentnightMusic = 1

local dayMusicSet = propDayMusic:GetChildren()
local nightMusicSet = propNightMusic:GetChildren()

function Dawn()
	currentDayMusic = currentDayMusic+1
	if currentDayMusic > #dayMusicSet then
		currentDayMusic = 1
	end
	dayMusicSet[currentDayMusic]:FadeIn(4)
	propBirds:FadeIn(4)
	propRooster:Play()
	day = true;
	night = false;
	nightMusicSet[currentnightMusic]:FadeOut(4)
	propCrickets:FadeOut(4)
end

function Noon()
	if not day then
		dayMusicSet[currentDayMusic]:FadeIn(1)
		propBirds:FadeIn(1)
		day = true
	end
end

function Dusk()
	dayMusicSet[currentDayMusic]:FadeOut(4)
	propBirds:FadeOut(4)
	day = false
	night = true
	currentnightMusic = currentnightMusic+1
	if currentnightMusic > #nightMusicSet then
		currentnightMusic = 1
	end
	nightMusicSet[currentnightMusic]:FadeIn(4)
	propCrickets:FadeIn(4)
end

function Midnight()
	
	propWolfHowl:Play()
	if not night then
		nightMusicSet[currentnightMusic]:FadeIn(1)
		propCrickets:FadeIn(1)
		night = true
	end

	
end

Events.Connect("Dawn", Dawn)
Events.Connect("Noon", Noon)
Events.Connect("Dusk", Dusk)
Events.Connect("Midnight", Midnight)