local Poll = script.parent.parent
local PollResults = {}
PollResults[Poll.id] = {}
PollResults[Poll.id][1] = 0
PollResults[Poll.id][2] = 0
PollResults[Poll.id][3] = 0
PollResults[Poll.id][4] = 0
PollResults[Poll.id][5] = 0
PollResults[Poll.id][6] = 0

Poll:SetNetworkedCustomProperty("State", 1)
local Timer = Poll:GetCustomProperty("Timer") + 2

function ClearListeners(listeners)
    if listeners == nil then
        return
    end
    if listeners["All"] ~= nil then
        listeners["All"]:Disconnect()        
    end
    for _, listener in pairs(listeners) do
        listener:Disconnect()
    end
    listeners = {}
end
--[[
function OnResourceChanged(player, resourceId, newValue)
    if newValue > 0 then
        PollResults[Poll.id][player.id] = newValue
        player:RemoveResource(resourceId)
        resourceChangedListeners[player.id]:Disconnect()
        resourceChangedListeners[player.id] = nil
    end
end

local resourceChangedListeners = {}
for _, player in ipairs(Game.GetPlayers()) do
    player:SetResource("PollAnswer", 0)
    resourceChangedListeners[player.id] = player.resourceChangedEvent:Connect(OnResourceChanged)
end
]]

function OnPlayerAnswer(player, data)
    --print("Player ", player.name, " sent  data = ", data)    
    PollResults[Poll.id][data] = PollResults[Poll.id][data] + 1
    Poll:SetNetworkedCustomProperty("Result" .. tostring(data), PollResults[Poll.id][data])
    --print("Result", PollResults[Poll.id][data])
end

local connectForPlayerListener = Events.ConnectForPlayer("PollAnswer", OnPlayerAnswer)

local resultDisplayed = false
function Tick()
    if Timer > 0 then
        Timer = Timer - 1
        Task.Wait(1)
    else
        if not resultDisplayed then  
            resultDisplayed = true          
            DisplayResult()
        end
    end
end

function DisplayResult()
    connectForPlayerListener:Disconnect()
    for answer, total in ipairs(PollResults[Poll.id]) do
        print(answer, total)
    end
    Poll:SetNetworkedCustomProperty("State", 2)
end

function OnDestroyListener(obj)    
    connectForPlayerListener:Disconnect()
    print("Poll Destroyed")
end

Poll.destroyEvent:Connect(OnDestroyListener)