local API = require(script:GetCustomProperty("API"))

local LocalPlayer = Game.GetLocalPlayer()

function OnEscPressed(player, params)
    if UI.IsCursorVisible() then
        params.openPauseMenu = false
        Events.Broadcast("ToggleUI", "", false)
        UI.SetCanCursorInteractWithUI(false)
        UI.SetCursorVisible(false)
        if LocalPlayer:GetOverrideCamera() then
            LocalPlayer:ClearOverrideCamera()
            Events.BroadcastToServer("RequestInteraction", LocalPlayer, API.DEFAULT)
        end
    end
end

Input.escapeHook:Connect(OnEscPressed)
