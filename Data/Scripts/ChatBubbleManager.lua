local propChatBubbleTemplate = script:GetCustomProperty("ChatBubbleTemplate")

local playerBubbles = {}

function OnMessageReceived(speaker, params)
	if Object.IsValid(playerBubbles[speaker.id]) then
		print("destroyed!")
		playerBubbles[speaker.id]:Destroy()
	end
	local newBubble = World.SpawnAsset(propChatBubbleTemplate)
--	newBubble:AttachToPlayer(speaker, "nameplate")
	Events.Broadcast("Chatbubble_" .. newBubble.id, speaker, params.message)
	playerBubbles[speaker.id] = newBubble
end





Chat.receiveMessageHook:Connect(OnMessageReceived)

