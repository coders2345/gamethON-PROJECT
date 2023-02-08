local propUIButton = script:GetCustomProperty("UIButton"):WaitForObject()
local spawnAreaButton = script:GetCustomProperty("SpawnAreaButton"):WaitForObject()
local sellButton = script:GetCustomProperty("SellButton"):WaitForObject()

local areaIndex = nil
local depth = 5
local size = 1

function updateSimParams(optionIndex, newValueIndex)
print("Client UPdateParam " .. optionIndex .. " " .. newValueIndex)
	if optionIndex == 1 then
		areaIndex = newValueIndex
	elseif optionIndex == 2 then
		depth = newValueIndex
	elseif optionIndex == 3 then
		size = newValueIndex
	end
end

function HandleSimOne(button)
	Events.BroadcastToServer("S1", Game.GetLocalPlayer(), areaIndex, depth, size)
end

function HandleSimArea(button)
	Events.BroadcastToServer("SA", Game.GetLocalPlayer(), areaIndex, depth)
end

function HandleSell(button)
	Events.BroadcastToServer("CSell")
end

propUIButton.clickedEvent:Connect(HandleSimOne)
spawnAreaButton.clickedEvent:Connect(HandleSimArea)
sellButton.clickedEvent:Connect(HandleSell)

function HandleBindingPressed(player, binding)
	if binding == "ability_feet" then
		UI.SetCanCursorInteractWithUI(true)
		UI.SetCursorVisible(true)
	end
end

function HandlePlayerJoined(player)
	player.bindingPressedEvent:Connect(HandleBindingPressed)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)