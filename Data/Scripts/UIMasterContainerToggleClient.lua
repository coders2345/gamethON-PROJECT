local container = script.parent
local propBinding = script:GetCustomProperty("Binding")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local isOn = true

function OnBindingPressed(whichPlayer, binding)
    if (binding == propBinding) and whichPlayer == LOCAL_PLAYER then
        if isOn then
            container.visibility = Visibility.FORCE_OFF
            isOn = false
        else
            container.visibility = Visibility.INHERIT
            isOn = true
        end
	end
end

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)