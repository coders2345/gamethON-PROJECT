local STATS_LIBRARY = require(script:GetCustomProperty("StatsLibrary"))
local API_BARN_STORAGE = require(script:GetCustomProperty("APIBarnStorage"))

local propProgressBar = script:GetCustomProperty("ProgressBar"):WaitForObject()
local propCapacityText = script:GetCustomProperty("CapacityText"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function Refresh()
    local barnLevel = STATS_LIBRARY.GetStat(LOCAL_PLAYER, "BarnLevel")
    local barnCurrentStorage = API_BARN_STORAGE.GetBarnCurrentStorage(LOCAL_PLAYER)
    local barnMaxStorage = API_BARN_STORAGE.GetBarnMaxStorage(barnLevel)
    propProgressBar.progress = CoreMath.Clamp(barnCurrentStorage / barnMaxStorage)
    propCapacityText.text = string.format("%d / %d", barnCurrentStorage, barnMaxStorage)
end

function OnStatChanged(player, statId, value)
    if statId == "BarnLevel" or API_BARN_STORAGE.IsResourceValid(statId) then
        Refresh()
    end
end

Events.Connect("StatChangedEvent", OnStatChanged)
Refresh()