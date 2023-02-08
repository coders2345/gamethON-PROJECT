------------------------------------------------------------------------------------------------------------------------
-- Date & Time Module
-- Author: Morticai (META) (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 10/15/2020
-- Version 1.0
------------------------------------------------------------------------------------------------------------------------
-- Compresses dates to 6 characters EX => 0292 = October 18th 2020
-- Code will break in 10 years with current timestamping methods.
------------------------------------------------------------------------------------------------------------------------
local Api = {}
local yearSubtract = 2020

------------------------------------------------------------------------------------------------------------------------
-- Constants
------------------------------------------------------------------------------------------------------------------------
Api.SESSION = 9999
------------------------------------------------------------------------------------------------------------------------
-- Local Functions
------------------------------------------------------------------------------------------------------------------------

--@param int year, yearDay
--@return string year, yearDay EX => 0296 = October 22 2020
local function GetDateStr(year, yearDay)
    local year = year - yearSubtract
    return string.format("%s%s", year, yearDay)
end

--@param string dateStr
--@return string Full year, yearDay string EX=> 0296
local function GetDateString(dateStr)
    return dateStr:sub(1, 4)
end

--@param string dateStr
--@return string year int, currently compressed to 1 EX=> 2020 = 0, 2021 = 1
local function GetYearStr(dateStr)
    return dateStr:sub(1, 1)
end

--@param string dateStr
--@return string YearDay EX => 296 October 22, 2020
local function GetYearDayStr(dateStr)
    return dateStr:sub(2, 4)
end

--@param string dateStr
--@return string EX=> 0060 1min session, currently tracks up to 9999 seconds or 2 hours 45 mins.
local function GetSavedSessionTime(dateStr)
    return dateStr:sub(5, 8)
end

--@param int loginYear
--@param int currentYear
--@return int amount to add, to check next day.
local function CorrectForLeapYear(loginYear, currentYear)
    if loginYear ~= nil and math.tointeger((loginYear) / 4) and currentYear > loginYear then
        return 0.734
    elseif loginYear ~= nil and currentYear > loginYear then
        return 0.735
    else
        return 0.001
    end
end

--@param string dateStr
--@return string year, yearDay
local function ConvertDateStrToDate(dateStr)
    local year = GetYearStr(dateStr)
    year = year + 2000
    local yearDay = GetYearDayStr(dateStr)
    return year, yearDay
end

--@param int timestamp - get this using os.time()
--@return int tbl.month, tbl.day, tbl.year, tbl.yday
local function GetDateDataFromTimestamp(timestamp)
    local tbl = os.date("!*t", tonumber(timestamp))
    return tbl.month, tbl.day, tbl.year, tbl.yday
end

--@param int timestamp - get this using os.time()
--@return string year, yearDay
local function GetDateStrFromTimestamp(timestamp)
    local _, _, year, yearDay = GetDateDataFromTimestamp(timestamp)
    return GetDateStr(year, yearDay)
end

--@param table date - Uses os.date()
--@return int currentYear, currentDate, loginYear, loginDate
local function ConvertDateData(date)
    if date ~= nil and date ~= "" then
        local _, _, currentYear, currentDay = GetDateDataFromTimestamp(os.time())
        local currentDate = ((currentYear - yearSubtract) + (currentDay / 1000))
        local loginYear, loginDay = tonumber(GetYearStr(date)), tonumber(GetYearDayStr(date))
        local loginDate = loginYear + (loginDay / 1000)
        local currentYear = currentYear - yearSubtract
        return currentYear, currentDate, loginYear, loginDate
    end
end

--Used to check if it's been one day since player last logged in, accounts for leap years.
--@param table date - Uses os.date()
--@return bool
local function HasBeenOverOneDaySinceInitalLogin(date)
    local currentYear, currentDate, loginYear, loginDate = ConvertDateData(date)
    if loginDate ~= nil and loginDate < currentDate then
        return true
    end
    return false
end

--Used to check if it's been one day since player last logged in, accounts for leap years.
--@param table date - Uses os.date()
--@return bool
local function HasDayOneTestCompleted(date)
    local currentYear, currentDate, loginYear, loginDate = ConvertDateData(date)
    if loginDate ~= nil and loginDate + CorrectForLeapYear(loginYear, currentYear) < currentDate then
        return true
    end
    return false
end

--@param table date - Uses os.date()
--@return bool
local function PreviousDayNewPlayers(date)
    local currentYear, currentDate, loginYear, loginDate = ConvertDateData(date)
    if currentDate ~= nil and tostring(loginDate + CorrectForLeapYear(loginYear, currentYear)) == tostring(currentDate) then
        return true
    end
    return false
end

--@param table date - Uses os.date()
--@return bool
local function IsFirstLoginDay(date)
    local _, currentDate, _, loginDate = ConvertDateData(date)
    if tostring(loginDate) == tostring(currentDate) then
        return true
    end
    return false
end

-- @param object Player
-- @return string - Player session time in seconds
local function SetSessionTime(Player, tbl)
    if tbl[Player] ~= nil then
        local tempTime = os.time() - tonumber(tbl[Player])
        local sessionTime = 0
        if tempTime < 10 then
            sessionTime = "000" .. tostring(tempTime)
        elseif tempTime >= 10 and tempTime <= 99 then
            sessionTime = "00" .. tostring(tempTime)
        elseif tempTime >= 100 and tempTime <= 999 then
            sessionTime = "0" .. tostring(tempTime)
        elseif tempTime > 9999 then
            sessionTime = "9999"
        else
            sessionTime = tostring(tempTime)
        end
        return sessionTime
    else
        return "0"
    end
end

------------------------------------------------------------------------------------------------------------------------
-- Global functions
------------------------------------------------------------------------------------------------------------------------
function Api.GetInitialLoginDate()
    return GetDateStrFromTimestamp(os.time())
end

function Api.HasBeenOverOneDaySinceInitalLogin(date)
    return HasBeenOverOneDaySinceInitalLogin(date)
end

function Api.IsFirstLoginDay(date)
    return IsFirstLoginDay(date)
end

function Api.SetSessionTime(Player, tbl)
    return SetSessionTime(Player, tbl)
end

function Api.GetSavedSessionTime(dateStr)
    return GetSavedSessionTime(dateStr)
end

function Api.PreviousDayNewPlayers(date)
    return PreviousDayNewPlayers(date)
end

function Api.HasDayOneTestCompleted(date)
    return HasDayOneTestCompleted(date)
end
------------------------------------------------------------------------------------------------------------------------
return Api
------------------------------------------------------------------------------------------------------------------------
