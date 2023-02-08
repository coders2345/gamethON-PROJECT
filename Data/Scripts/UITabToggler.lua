local propButton1 = script:GetCustomProperty("Button1"):WaitForObject()
local propButton2 = script:GetCustomProperty("Button2"):WaitForObject()
local propButton3 = script:GetCustomProperty("Button3"):WaitForObject()

local propContent1 = script:GetCustomProperty("Content1"):WaitForObject()
local propContent2 = script:GetCustomProperty("Content2"):WaitForObject()
local propContent3 = script:GetCustomProperty("Content3"):WaitForObject()

local propActiveButtonExample = script:GetCustomProperty("ActiveButtonExample"):WaitForObject()
local propInactiveButtonExample = script:GetCustomProperty("InactiveButtonExample"):WaitForObject()

local ACTIVE_BUTTON_COLOR = propActiveButtonExample:GetButtonColor()
local INACTIVE_BUTTON_COLOR = propInactiveButtonExample:GetButtonColor()

local buttons = {}
table.insert(buttons, propButton1)
table.insert(buttons, propButton2)
table.insert(buttons, propButton3)

local contents = {}
table.insert(contents, propContent1)
table.insert(contents, propContent2)
table.insert(contents, propContent3)

function SetContent(contentIndex)
	for i=1,#contents,1 do
		if i == contentIndex then
			buttons[i]:SetButtonColor(ACTIVE_BUTTON_COLOR)
			contents[i].visibility = Visibility.INHERIT
		else
			buttons[i]:SetButtonColor(INACTIVE_BUTTON_COLOR)
			contents[i].visibility = Visibility.FORCE_OFF
		end
	end
end

propButton1.pressedEvent:Connect(function (button) SetContent(1) end)
propButton2.pressedEvent:Connect(function (button) SetContent(2) end)
propButton3.pressedEvent:Connect(function (button) SetContent(3) end)

SetContent(1)