local Poll = script.parent.parent
local UIHostPanel = script:GetCustomProperty("UIHostPanel"):WaitForObject()
local UIPlayerPanel = script:GetCustomProperty("UIPlayerPanel"):WaitForObject()
local UIResultPanel = script:GetCustomProperty("UIResultPanel"):WaitForObject()
local UICloseResultButton = script:GetCustomProperty("UICloseResultButton"):WaitForObject()

UIHostPanel.visibility = Visibility.FORCE_OFF
UIPlayerPanel.visibility = Visibility.FORCE_OFF

local defaultCursorVisible = UI.IsCursorVisible()
local defaultCursorInteract = UI.CanCursorInteractWithUI()

local state = 0

local Question = Poll:GetCustomProperty("Question")
local Option1 = Poll:GetCustomProperty("Option1")
local Option2 = Poll:GetCustomProperty("Option2")
local Option3 = Poll:GetCustomProperty("Option3")
local Option4 = Poll:GetCustomProperty("Option4")
local Option5 = Poll:GetCustomProperty("Option5")
local Option6 = Poll:GetCustomProperty("Option6")
local State = Poll:GetCustomProperty("State")
local Timer = Poll:GetCustomProperty("Timer")

local HostUIHeaderTextBox = UIHostPanel:GetCustomProperty("UIHeaderTextBox"):WaitForObject()
local HostUIQuestionTextBox = UIHostPanel:GetCustomProperty("UIQuestionTextBox"):WaitForObject()
local HostUIOption1TextBox = UIHostPanel:GetCustomProperty("UIOption1TextBox"):WaitForObject()
local HostUIOption2TextBox = UIHostPanel:GetCustomProperty("UIOption2TextBox"):WaitForObject()
local HostUIOption3TextBox = UIHostPanel:GetCustomProperty("UIOption3TextBox"):WaitForObject()
local HostUIOption4TextBox = UIHostPanel:GetCustomProperty("UIOption4TextBox"):WaitForObject()
local HostUIOption5TextBox = UIHostPanel:GetCustomProperty("UIOption5TextBox"):WaitForObject()
local HostUIOption6TextBox = UIHostPanel:GetCustomProperty("UIOption6TextBox"):WaitForObject()

local PlayerUIHeaderTextBox = UIPlayerPanel:GetCustomProperty("UIHeaderTextBox"):WaitForObject()
local PlayerUIQuestionTextBox = UIPlayerPanel:GetCustomProperty("UIQuestionTextBox"):WaitForObject()
local PlayerUIOption1Button = UIPlayerPanel:GetCustomProperty("UIOption1Button"):WaitForObject()
local PlayerUIOption2Button = UIPlayerPanel:GetCustomProperty("UIOption2Button"):WaitForObject()
local PlayerUIOption3Button = UIPlayerPanel:GetCustomProperty("UIOption3Button"):WaitForObject()
local PlayerUIOption4Button = UIPlayerPanel:GetCustomProperty("UIOption4Button"):WaitForObject()
local PlayerUIOption5Button = UIPlayerPanel:GetCustomProperty("UIOption5Button"):WaitForObject()
local PlayerUIOption6Button = UIPlayerPanel:GetCustomProperty("UIOption6Button"):WaitForObject()
local PlayerUITimerTextBox = UIPlayerPanel:GetCustomProperty("UITimerTextBox"):WaitForObject()

local ResultUIHeaderTextBox = UIResultPanel:GetCustomProperty("UIHeaderTextBox"):WaitForObject()
local ResultUIQuestionTextBox = UIResultPanel:GetCustomProperty("UIQuestionTextBox"):WaitForObject()
local ResultUIOption1TextBox = UIResultPanel:GetCustomProperty("UIOption1TextBox"):WaitForObject()
local ResultUIOption2TextBox = UIResultPanel:GetCustomProperty("UIOption2TextBox"):WaitForObject()
local ResultUIOption3TextBox = UIResultPanel:GetCustomProperty("UIOption3TextBox"):WaitForObject()
local ResultUIOption4TextBox = UIResultPanel:GetCustomProperty("UIOption4TextBox"):WaitForObject()
local ResultUIOption5TextBox = UIResultPanel:GetCustomProperty("UIOption5TextBox"):WaitForObject()
local ResultUIOption6TextBox = UIResultPanel:GetCustomProperty("UIOption6TextBox"):WaitForObject()
--local ResultUITimerTextBox = UIPlayerPanel:GetCustomProperty("UITimerTextBox"):WaitForObject()

HostUIQuestionTextBox.text = Question
HostUIOption1TextBox.text = Option1
HostUIOption2TextBox.text = Option2
HostUIOption3TextBox.text = Option3
HostUIOption4TextBox.text = Option4
HostUIOption5TextBox.text = Option5
HostUIOption6TextBox.text = Option6

ResultUIQuestionTextBox.text = Question
ResultUIOption1TextBox.text = Option1
ResultUIOption2TextBox.text = Option2
ResultUIOption3TextBox.text = Option3
ResultUIOption4TextBox.text = Option4
ResultUIOption5TextBox.text = Option5
ResultUIOption6TextBox.text = Option6

PlayerUIQuestionTextBox.text = Question

if Option1 == "" then
    PlayerUIOption1Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption1Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option1
end
if Option2 == "" then
    PlayerUIOption2Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption2Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option2
end
if Option3 == "" then
    PlayerUIOption3Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption3Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option3
end
if Option4 == "" then
    PlayerUIOption4Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption4Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option4
end
if Option5 == "" then
    PlayerUIOption5Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption5Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option5
end
if Option6 == "" then
    PlayerUIOption6Button.visibility = Visibility.FORCE_OFF
else
    PlayerUIOption6Button:GetCustomProperty("UIOptionTextBox"):WaitForObject().text = Option6
end

PlayerUIOption1Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF
PlayerUIOption2Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF
PlayerUIOption3Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF
PlayerUIOption4Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF
PlayerUIOption5Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF
PlayerUIOption6Button:GetCustomProperty("UICheckImage"):WaitForObject().visibility = Visibility.FORCE_OFF

PlayerUITimerTextBox.text = tostring(math.floor(Timer))


local winner = 1
Poll.networkedPropertyChangedEvent:Connect(function(coreObject, propertyName)    
    local newValue = Poll:GetCustomProperty("State")
    if newValue == 1 then
        state = 1
    end
    if newValue == 2 then
        local scores = {
            Poll:GetCustomProperty("Result1"),
            Poll:GetCustomProperty("Result2"),
            Poll:GetCustomProperty("Result3"),
            Poll:GetCustomProperty("Result4"),
            Poll:GetCustomProperty("Result5"),
            Poll:GetCustomProperty("Result6")
        }
        
        local greatest = 0
        for index = 1, 6, 1 do
            local score = Poll:GetCustomProperty("Result" .. tostring(index))
            local thistextbox = UIResultPanel:GetCustomProperty("UIOption" .. index .. "TextBox"):WaitForObject()
            thistextbox:SetColor(Color.BLACK)
            if score > greatest then
                greatest = score
                winner = index
            end
        end        

        local textbox = UIResultPanel:GetCustomProperty("UIOption" .. winner .. "TextBox"):WaitForObject()
        textbox:SetColor(Color.YELLOW)
        UIResultPanel.visibility = Visibility.INHERIT
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    end
end)

UI.SetCursorVisible(true)
UI.SetCanCursorInteractWithUI(true)

function Tick(deltaTime)
    if PlayerUITimerTextBox.text ~= "Poll Over" and Poll:GetCustomProperty("State") == 1 then
        --UIHostPanel.visibility = Visibility.INHERIT
        UIPlayerPanel.visibility = Visibility.INHERIT

        if Timer >= 0 then
            Timer = Timer - deltaTime
            if Timer < 0 then
                --Poll:SetNetworkedCustomProperty("Timer", 0)
                PlayerUITimerTextBox.text = "0"
            else
                --Poll:SetNetworkedCustomProperty("Timer", Timer)
                PlayerUITimerTextBox.text = tostring(math.ceil(Timer))
            end
        else
            if not PlayerUIOption1Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 1)
            elseif not PlayerUIOption2Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 2)
            elseif not PlayerUIOption3Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 3)
            elseif not PlayerUIOption4Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 4)
            elseif not PlayerUIOption5Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 5)
            elseif not PlayerUIOption6Button.isInteractable then
                Events.BroadcastToServer("PollAnswer", 6)
            else
                --no answer
            end

            PlayerUIOption1Button.isInteractable = false
            PlayerUIOption2Button.isInteractable = false
            PlayerUIOption3Button.isInteractable = false
            PlayerUIOption4Button.isInteractable = false
            PlayerUIOption5Button.isInteractable = false
            PlayerUIOption6Button.isInteractable = false
            
            PlayerUITimerTextBox.text = "Poll Over"

            Task.Wait(1)  
            UI.SetCursorVisible(defaultCursorVisible)
            UI.SetCanCursorInteractWithUI(defaultCursorInteract)        
            UIPlayerPanel.visibility = Visibility.FORCE_OFF
        end        
    end
end

function OnCloseClicked(whichButton)
	print("button clicked: " .. whichButton.name)

    UI.SetCursorVisible(defaultCursorVisible)
    UI.SetCanCursorInteractWithUI(defaultCursorInteract)        
    UIPlayerPanel.visibility = Visibility.FORCE_OFF
    UIResultPanel.visibility = Visibility.FORCE_OFF
end

UICloseResultButton.clickedEvent:Connect(OnCloseClicked)
