_G.players = {}
_G.props = {}
_G.poll = {}

--[[
Vehicle
Equipment
Props
Poll

]]

local StorageObject = script:GetCustomProperty("StorageObject"):WaitForObject()

StorageObject.serverUserData.initialValue = "Orange"

function ClearVehicle(player)
    if _G.players[player.id] then
        if _G.players[player.id].Vehicle then
            if Object.IsValid(_G.players[player.id].Vehicle) then
                _G.players[player.id].Vehicle:Destroy()
            end
        else
            return
        end
    else
        return
    end
end

function ClearEquipment(player, slot)
    if _G.players[player.id] then
        if _G.players[player.id].Equipment then
            if Object.IsValid(_G.players[player.id].Equipment) then
                _G.players[player.id].Equipment:Destroy()
            end
        else
            return
        end
    else
        return
    end
end

function OnPlayerJoined(player)
	print("player joined: " .. player.name)
    if _G.players[player.id] then
        --clear his state
    end
    _G.players[player.id] = player
end

function OnPlayerLeft(player)
	print("player left: " .. player.name)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)