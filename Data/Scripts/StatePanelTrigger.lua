local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local StorageObject = script:GetCustomProperty("StorageObject"):WaitForObject()

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		for playerId, playerObjects in pairs(_G.props) do
            for objectId, object in pairs(playerObjects) do
                print(playerId, object.name)
            end
        end
        
        print("Initial value", StorageObject.serverUserData.initialValue)
        print("---End of State---")
    end

end

trigger.interactedEvent:Connect(OnInteracted)

