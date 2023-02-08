--[[
	FPS Meter - Client
	v1.0
	by: standardcombo
	
	See the FPSMeter_README for information about this module.
--]]
--local COMMANDS_LIST = require(script:GetCustomProperty("FPSMeterCommandsAPI"))

local UI_TEXT = script:GetCustomProperty("UIText")
if UI_TEXT and UI_TEXT.isAssigned then
	UI_TEXT = UI_TEXT:WaitForObject()
else
	UI_TEXT = nil
end

local ROOT = script:GetCustomProperty("FPSMeter_v2"):WaitForObject()
local ShouldDebug = ROOT:GetCustomProperty("ShouldDebug")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local PARENT_PANEL = script:GetCustomProperty("UIPanel"):WaitForObject()

local OverallMin = script:GetCustomProperty("OverallMin_FPS"):WaitForObject()
local OverallMax = script:GetCustomProperty("OverallMax_FPS"):WaitForObject()
local AverageSinceLoad = script:GetCustomProperty("AverageSinceLoad_FPS"):WaitForObject()
local LastFiveSec = script:GetCustomProperty("LastFiveSec_FPS"):WaitForObject()
local LastFiveSecAverageMin = script:GetCustomProperty("LastFiveSecAverageMin_FPS"):WaitForObject()
local LastFiveSecAverageMax = script:GetCustomProperty("LastFiveSecAverageMax_FPS"):WaitForObject()
local TimerText = script:GetCustomProperty("TimerText"):WaitForObject()
local LoggingText = script:GetCustomProperty("LoggingText"):WaitForObject()

local WRITE_TO_GLOBAL = script:GetCustomProperty("WriteToGlobal")
local PRINT_TO_SCREEN = script:GetCustomProperty("PrintToScreen")

local WEIGHT = script:GetCustomProperty("RollingWeight") or 0.2

local averageDeltaTime = 1 / 60
local printToScreenDelay = 0

local frameCount = 1
local totalFrames = 0
local minOverall = 100
local maxOverall = 0

local fiveSecondCount = time() + 5
local fiveSecondMin = minOverall
local fiveSecondMax = maxOverall
local fiveSecondFrames = 0
local fiveSecondFrameCount = 1

local startTime = time()

local shouldLog = false

local function ResetData()
	frameCount = 1
	totalFrames = 0
	minOverall = 100
	maxOverall = 0
	startTime = time()
end

local function ConvertTime(tenths)
	local mm = (tenths // 60) % 60
	local ss = (tenths) % 60

	return string.format("%02d:%02d", mm, ss)
end

function GetAverageFrameRate()
	if averageDeltaTime <= 0 then
		return 999
	end
	local fps = 1 / averageDeltaTime
	if fps > 999 then
		return 999
	end
	return fps
end

function GetFrameRateString()
	local fps = GetAverageFrameRate()
	return string.format("%.2f", fps)
end

local function OnFrameRateRequest()
	local fps = GetAverageFrameRate()
	Events.BroadcastToServer("FrameRate", fps)
end

-- Chat Command

function IsNameCommand(text)
	local split = {CoreString.Split(text)}
	local players = Game.GetPlayers()

	for _, player in ipairs(players) do
		if string.format("/%s", player.name) == split[1] then
			return true, split[1] .. " ", player.name
		end
	end

	return false
end

function OnReceiveMessage(player, params)
	if player == LOCAL_PLAYER then
		local splitMessage = {CoreString.Split(string.lower(params.message))}
		if splitMessage[1] == "/fps" then
			if splitMessage[2] == "show" then
				PARENT_PANEL.visibility = Visibility.FORCE_ON
				return
			elseif splitMessage[2] == "hide" then
				PARENT_PANEL.visibility = Visibility.FORCE_OFF
				return
			elseif splitMessage[2] == "reset" then
				ResetData()
				return
			elseif splitMessage[2] == "log" then
				if splitMessage[3] == "reset" then
					ResetData()
					shouldLog = true
					LoggingText.visibility = Visibility.INHERIT
					return
				end
				shouldLog = shouldLog and false or not shouldLog and true
				if shouldLog then
					LoggingText.visibility = Visibility.INHERIT
				else
					LoggingText.visibility = Visibility.FORCE_OFF
				end
				return
			end
		end
	end
end

function OnBindingPressed(player, string)
	if string == "ability_extra_61" then
		if not PARENT_PANEL:IsVisibleInHierarchy() then
			PARENT_PANEL.visibility = Visibility.FORCE_ON
		else
			PARENT_PANEL.visibility = Visibility.FORCE_OFF
		end
	end
end

function Tick(deltaTime)
	averageDeltaTime = averageDeltaTime * (1 - WEIGHT) + deltaTime * WEIGHT
	local averageFps = GetAverageFrameRate()

	if WRITE_TO_GLOBAL then
		_G.FPS = averageFps
	end

	totalFrames = totalFrames + averageFps
	fiveSecondFrames = fiveSecondFrames + averageFps

	if averageFps < minOverall then
		minOverall = averageFps
		OverallMin.text = string.format("%.2f", minOverall)
	end

	if averageFps < fiveSecondMin then
		fiveSecondMin = averageFps
	end

	if averageFps > fiveSecondMax then
		fiveSecondMax = averageFps
	end

	if averageFps > maxOverall then
		maxOverall = averageFps
		OverallMax.text = string.format("%.2f", maxOverall)
	end

	AverageSinceLoad.text = string.format("%.2f", totalFrames / frameCount)

	if time() > fiveSecondCount then
		local fiveAvg = fiveSecondFrames / fiveSecondFrameCount
		LastFiveSecAverageMin.text = string.format("%.2f", fiveSecondMin)
		LastFiveSecAverageMax.text = string.format("%.2f", fiveSecondMax)
		LastFiveSec.text = string.format("%.2f", fiveAvg)
		if shouldLog then
			local currentTime = ConvertTime(CoreMath.Round(time() - startTime))
			print(
				string.format(
					"[FPS METER] (" ..
						currentTime ..
							") " ..
								LOCAL_PLAYER.name ..
									" - 5s Avg: %.2f | 5s Min: %.2f | 5s Max: %.2f | Total Avg: %.2f | Total Max: %.2f | Total Min: %.2f",
					fiveAvg,
					fiveSecondMin,
					fiveSecondMax,
					averageFps,
					maxOverall,
					minOverall
				)
			)
			Events.BroadcastToServer(
				"FPS_Meter_Log",
				fiveSecondFrames / fiveSecondFrameCount,
				fiveSecondMin,
				fiveSecondMax,
				totalFrames / frameCount,
				maxOverall,
				minOverall,
				currentTime
			)
		end
		fiveSecondCount = time() + 5
		fiveSecondMin = 1000
		fiveSecondMax = 0
		fiveSecondFrames = 0
		fiveSecondFrameCount = 1
	end

	if UI_TEXT then
		UI_TEXT.text = GetFrameRateString() .. " fps"
	elseif PRINT_TO_SCREEN then
		printToScreenDelay = printToScreenDelay - deltaTime
		if printToScreenDelay <= 0 then
			printToScreenDelay = 3

			UI.PrintToScreen(GetFrameRateString() .. " fps")
		end
	end
	frameCount = frameCount + 1
	fiveSecondFrameCount = fiveSecondFrameCount + 1
	TimerText.text = ConvertTime(CoreMath.Round(time() - startTime))
end

--LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
Chat.receiveMessageHook:Connect(OnReceiveMessage)
Events.Connect("FrameRateRequest", OnFrameRateRequest)
