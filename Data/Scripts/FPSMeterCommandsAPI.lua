local commands = {}
local messagePrefix = "[SERVER]"

local ragdollData = {}

commands = {
    ["/fps"] = {
        OnCommandCalledClient = function (player, message)
        end,
        OnCommandCalledServer = function (player, message)
            local split = {CoreString.Split(message)}
            local trimMessage = CoreString.Trim(message, split[1])
            local players = Game.FindPlayersInSphere(player:GetWorldPosition(), 3000)
            Chat.BroadcastMessage(string.format("[ADMIN] %s:%s", player.name, trimMessage), {players = players})
        end,
        OnCommandReceivedClient = function (player, message, data, panel)
            print(data)
            local split = {CoreString.Split(message)}
            if split[2] == "on" then
                panel.visibility = Visibility.FORCE_ON
            elseif split[2] == "off" then
                panel.visibility = Visibility.FORCE_OFF
            end

        end,
        description = "Shows admin message in chat to all players",
        requireMessage = true,
        adminOnly = true
    },

    ["/help"] = {
        OnCommandCalledClient = function (player, message)
            for i, v in pairs(commands) do
                if (i ~= "/adminall") then
                    Chat.LocalMessage(i .. ": " .. v.description)
                end
            end
        end,
        OnCommandCalledServer = function (player, message)
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "shows a list of available commands",
        requireMessage = false,
        adminOnly = false
    },


}

return commands