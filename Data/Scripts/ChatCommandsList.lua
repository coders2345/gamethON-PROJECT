local AdminData = require(script:GetCustomProperty("AdminData"))
local commands = {}
local messagePrefix = "[SERVER]"

local ragdollData = {}

commands = {
    ["/adminall"] = {
        OnCommandCalledClient = function (player, message)
        end,
        OnCommandCalledServer = function (player, message)
            local split = {CoreString.Split(message)}
            local trimMessage = CoreString.Trim(message, split[1])
            local players = Game.FindPlayersInSphere(player:GetWorldPosition(), 3000)
            Chat.BroadcastMessage(string.format("[ADMIN] %s:%s", player.name, trimMessage), {players = players})
        end,
        OnCommandReceivedClient = function (player, message)
            local split = {CoreString.Split(message)}
            local trimMessage = CoreString.Trim(message, split[1])
            local players = Game.FindPlayersInSphere(player:GetWorldPosition(), 3000)
            -- Events.Broadcast("SpawnChatMessage", player, trimMessage, Color.ORANGE, players)
        end,
        description = "Shows admin message in chat to all players",
        requireMessage = true,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.Admin
    },
    
    ["/tp"] = {
        OnCommandCalledClient = function (player, message)       
        end,
        OnCommandCalledServer = function (player, message)
        	local playerName = CoreString.Trim(message, message)
        	print(playerName)
        	for _, p in ipairs(Game.GetPlayers()) do
        		if string.find(p.name, playerName) then
        			local vehicle = player.occupiedVehicle
        			local otherVehicle = p.occupiedVehicle
        			vehicle:SetWorldPosition(otherVehicle:GetWorldPosition() + Vector3.New(500, 500, 500))
        		end
        	end
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "teleport to selected player. Format: /tp <otherPlayerName>",
        requireMessage = false,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.Admin
    },

    ["/xp"] = {
        OnCommandCalledClient = function (player, message)
        
            local resourceFound = nil
        	local number = nil
        	
        	for section in (message.." "):gmatch("(.-) ") do
        	
        		number = tonumber(section)
        	
        		if number then
        		
        			if number > 0 and number < 33 then
        		
        				resourceFound = section
        				
        			elseif resourceFound then
        				
        				Chat.LocalMessage("Setting T_" .. resourceFound .. "XP resource to " .. tostring(number))
        				
        				return
        			end
        		
        		end
        	
        	end
        	
        	
        	
        	Chat.LocalMessage("ERROR: command does not contain a tankID or valid resource amount. Format: /xp <tankID> <RPvalue>")
        end,
        OnCommandCalledServer = function (player, message)
        
        	local resourceFound = nil
        	local number = nil
        	
        	for section in (message.." "):gmatch("(.-) ") do
        	
        		number = tonumber(section)
        	
        		if number then
        		
        			if number > 0 and number < 33 then
        		
        				resourceFound = section
        				
        			elseif resourceFound then
        			
        				player:SetResource("T_" .. resourceFound .. "RP", number)
        				
        			end
        		
        		end
        	
        	end
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "Set the XP resource of a tank. Format: /xp <tankID> <RPvalue>",
        requireMessage = false,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.HigherAdmin
    },
    
    ["/sl"] = {
        OnCommandCalledClient = function (player, message)
        	
        	for section in (message.." "):gmatch("(.-) ") do

        		if tonumber(section) then
        		
        			Chat.LocalMessage("Setting Silver resource to " .. section)
        			
        			return
        			
        		end
        	
        	end

        	Chat.LocalMessage("ERROR: command does not contain a valid resource amount. Format: /sl <SilverValue>")
        end,
        OnCommandCalledServer = function (player, message)
        	
        	for section in (message.." "):gmatch("(.-) ") do

        		if tonumber(section) then
        		
        			player:SetResource("Silver", tonumber(section))
        			
        			return
        			
        		end
        	
        	end
        	
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "Set the Silver resource of the player. Format: /sl <SilverValue>",
        requireMessage = false,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.HigherAdmin
    },
    
    ["/equip"] = {
        OnCommandCalledClient = function (player, message)       
        end,
        OnCommandCalledServer = function (player, message)
        	local number = nil
        	local upgradeAppled = false
        	
        	player.serverUserData.TankUpgradeOverride = {}
        	
        	for section in (message.." "):gmatch("(.-) ") do
        		if upgradeAppled then
	        		number = tonumber(section)
	        		if number and number > 0 and number < 34 then
	        			Events.Broadcast("SET_EQUIPPED_TANK", player, section)
	        			return
	        		end
	        	elseif section == "0" then
        			player.serverUserData.TankUpgradeOverride = {0, 0, 0}
        			upgradeAppled = true
        		elseif section == "1" then
        			player.serverUserData.TankUpgradeOverride = {2, 2, 2}
        			upgradeAppled = true
        		elseif string.find(section, ",") then
        			for _, part in pairs{CoreString.Split(section, ",")} do
        				number = tonumber(part)
        				if number and number == 1 then
        					number = 2
        				end
        				if number then
        					table.insert(player.serverUserData.TankUpgradeOverride, number)
        				end
        			end
        			upgradeAppled = true
	        	end
        	end 
        	
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "Equip a specific tank with a specified upgrade. 0 for no upgrades, 1 for all upgrades, and x,x,x for specific upgrades. Format: /equip <upgrade> <tankID>",
        requireMessage = false,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.Admin
    },
    
    ["/respawn"] = {
        OnCommandCalledClient = function (player, message)       
        end,
        OnCommandCalledServer = function (player, message)
        	player:Respawn()        	
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "Respawn (for casese when falling through the map).",
        requireMessage = false,
        adminOnly = true,
        adminRank = AdminData.AdminRanks.Admin
    },
    ["/fps"] = {
        OnCommandCalledClient = function (player, message)
        end,
        OnCommandCalledServer = function (player, message)
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "shows a list of available commands",
        requireMessage = false,
        adminOnly = false,
        adminRank = AdminData.AdminRanks.None
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
        adminOnly = false,
        adminRank = AdminData.AdminRanks.None
    },
--[[     ["/ragdoll"] = {
        OnCommandCalledClient = function (player, message)
            Chat.LocalMessage(messagePrefix.." toggle player ragdoll")
        end,
        OnCommandCalledServer = function (player, message)
            if not ragdollData[player] then
                player:EnableRagdoll("lower_spine", .4)
                player:EnableRagdoll("right_shoulder", .2)
                player:EnableRagdoll("left_shoulder", .6)
                player:EnableRagdoll("right_hip", .6)
                player:EnableRagdoll("left_hip", .6)
                ragdollData[player] = true
            else
                player:DisableRagdoll()
                ragdollData[player] = nil
            end
        end,
        OnCommandReceivedClient = function (player, message)
        end,
        description = "ragdoll player",
        requireMessage = false,
        adminOnly = false
    },
]]



}

return commands