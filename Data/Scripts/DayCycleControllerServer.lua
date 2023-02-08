local API = require(script:GetCustomProperty("APIDayNightCycle"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local DAY_LENGTH_MINUTES = COMPONENT_ROOT:GetCustomProperty("DayLengthMinutes")

function GetState()
	local result = {}

    result.serverStartOSTime = script:GetCustomProperty("ServerStartOSTime")
	result.currentTime = time() + result.serverStartOSTime
    result.dayLengthMinutes = DAY_LENGTH_MINUTES

    return result
end

script:SetNetworkedCustomProperty("ServerStartOSTime", os.time())

local functionTable = {}
functionTable.GetState = GetState

API.RegisterDayNightCycle(functionTable)