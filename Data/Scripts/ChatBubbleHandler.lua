local propChatText = script:GetCustomProperty("ChatText"):WaitForObject()
local propTriangle = script:GetCustomProperty("Triangle"):WaitForObject()
local propBubble = script:GetCustomProperty("Bubble"):WaitForObject()
local propUIContainer = script:GetCustomProperty("UIContainer"):WaitForObject()
local propRoot = script:GetCustomProperty("root"):WaitForObject()

local MARGIN = 20

local targetPlayer = nil


local startTime = time()
local FADEOUT_START = 4
local FADEOUT_TIME = 2

propUIContainer:LookAtLocalView(true)

function SetText(newTargetPlayer, newText)
    targetPlayer = newTargetPlayer
	propChatText.text = newText
	
	local size = nil
	while size == nil do
		Task.Wait()
		size = propChatText:ComputeApproximateSize()
	end
	propBubble.width = size.x + MARGIN * 2
	propBubble.height = size.y + MARGIN
	
	if propTriangle.width > propBubble.width then
		propTriangle.width = propBubble.width - 20
	end
end

function Tick()
	--print(targetPlayer)
	if targetPlayer ~= nil and Object.IsValid(targetPlayer) then
		propRoot:SetWorldPosition(targetPlayer:GetWorldPosition())
	end
	local currentTime = time()
	if currentTime > startTime + FADEOUT_START then
		local opacity = 1 - (currentTime - (startTime + FADEOUT_START)) / FADEOUT_TIME
		if opacity < 0 then
			propRoot:Destroy()
			return
		else
			propUIContainer.opacity = opacity
		end
	
	end
end



--SetText("Lorem ipsum fred basl eril adso aytl asdfasdi ads fads f ye a sd g ayueaw tasd fasd fhj7y wer")



local listener = Events.Connect("Chatbubble_" .. propRoot.id, SetText)

script.parent.destroyEvent:Connect(function()
	listener:Disconnect()
end)