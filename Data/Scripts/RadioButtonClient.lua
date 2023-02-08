local Button = script.parent
--local PanelGroup = Button:FindAncestorByType("UIPanel") or Button:FindAncestorByType("UIScrollPanel")
local PanelGroup = nil
local Label = Button:GetCustomProperty("UIOptionTextBox"):WaitForObject()
local Check = Button:GetCustomProperty("UICheckImage"):WaitForObject()
local foundPanel = false
local ButtonColor = Button:GetButtonColor()
local ButtonHoveredColor = Button:GetHoveredColor()
local ButtonPressedColor = Button:GetPressedColor()
local LabelColor = Label:GetColor()

local temp = Button.parent
if not foundPanel and (temp:IsA("UIPanel") or temp:IsA("UIScrollPanel")) then
    PanelGroup = temp
    foundPanel = true
end

local temp = Button.parent.parent
if not foundPanel and (temp:IsA("UIPanel") or temp:IsA("UIScrollPanel")) then
    PanelGroup = temp
    foundPanel = true
end

local temp = Button.parent.parent.parent
if not foundPanel and (temp:IsA("UIPanel") or temp:IsA("UIScrollPanel")) then
    PanelGroup = temp
    foundPanel = true
end

local transparent = Color.New(0, 0, 0, 0)
Button:SetFontColor(transparent)
Button:SetButtonColor(transparent)
Button:SetHoveredColor(transparent)
Button:SetPressedColor(transparent)
Button:SetDisabledColor(transparent)

function ToggleAllOff()
    for _, child in ipairs(PanelGroup:GetChildren()) do
        if child:GetCustomProperty("UICheckImage") then            
            local temp = child:GetCustomProperty("UICheckImage"):WaitForObject()
            child.isInteractable = true
            temp.visibility = Visibility.FORCE_OFF
        end
    end
end

function OnClicked(whichButton)
    ToggleAllOff()
    Check.parent.isInteractable = false
    Check.visibility = Visibility.INHERIT
end

function OnHovered(whichButton)
	if Label == nil then
        --do nothing
    else
        --print("hover")
        Label:SetColor(ButtonHoveredColor)
    end
end

function OnUnhovered(whichButton)	
    if Label == nil then
        --do nothing
    else
        Label:SetColor(LabelColor)
    end
end

Button.clickedEvent:Connect(OnClicked)
Button.hoveredEvent:Connect(OnHovered)
Button.unhoveredEvent:Connect(OnUnhovered)