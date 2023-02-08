
local INTERACTION_LIBRARY = require(script:GetCustomProperty("PlayerInteractionLibrary"))

local function StopServerInteraction(player, interactionId)
	-- stop current interaction on server
	if interactionId > 0 then
		local currentInteraction = require(INTERACTION_LIBRARY[interactionId])

		currentInteraction.ServerStopInteraction(player)
	end
end

local function RequestInteraction(player, interactionId, metaData)
	local currentInteractionId = player:GetResource(INTERACTION_LIBRARY.RESOURCE_ID)

	if currentInteractionId ~= interactionId then
		local newInteraction = require(INTERACTION_LIBRARY[interactionId])

		-- validate request
		if newInteraction.ServerCanStartInteraction(player, metaData) then
			-- signal clients of new interaction
			Events.BroadcastToPlayer(player, "BPI", currentInteractionId, interactionId, metaData)

			StopServerInteraction(player, currentInteractionId)

			player:SetResource(INTERACTION_LIBRARY.RESOURCE_ID, interactionId)

			-- start new interaction on server
			newInteraction.ServerStartInteraction(player, metaData)
			_G.AnalyticsFacade.InteractionTracking(player, interactionId)
		end
	end
end

function HandlePlayerJoined(player)
	player.bindingPressedEvent:Connect(function (player, binding)
		local currentInteractionId = player:GetResource(INTERACTION_LIBRARY.RESOURCE_ID)
		if currentInteractionId > 0 then
			local currentInteraction = require(INTERACTION_LIBRARY[currentInteractionId])
			if currentInteraction ~= nil then
				currentInteraction.ServerHandleBindingPressed(player, binding)
			end
		end
	end)

	-- delay initiation of default state to allow manager systems to boot up
	Task.Wait(.5)

	RequestInteraction(player, INTERACTION_LIBRARY.DEFAULT)
end

function HandlePlayerLeft(player)
	local currentInteractionId = player:GetResource(INTERACTION_LIBRARY.RESOURCE_ID)

	StopServerInteraction(player, currentInteractionId)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)
Game.playerLeftEvent:Connect(HandlePlayerLeft)

Events.Connect("RequestInteraction", RequestInteraction)