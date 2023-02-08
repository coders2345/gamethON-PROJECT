local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local SpecialAbility = script:GetCustomProperty("SpecialAbility"):WaitForObject()
local SaberGeo = script:GetCustomProperty("SaberGeo"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local EventListeners = {}

function OnSpecialAbilityExecute(thisAbility)
    SaberGeo.isEnabled = false
	--[[SpecialAbility.clientUserData.isSteering = true

    Task.Spawn(function ()
        if Object.IsValid(SpecialAbility) then
            SpecialAbility.clientUserData.isSteering = false
        end
    end, 10)]]
end

function OnSpecialAbilityCooldown(thisAbility)
	SaberGeo.isEnabled = true
end

function OnEquip(equipment, player)
    table.insert(EventListeners, SpecialAbility.executeEvent:Connect(OnSpecialAbilityExecute))
    table.insert(EventListeners, SpecialAbility.cooldownEvent:Connect( OnSpecialAbilityCooldown ))
    table.insert(EventListeners, Equipment.unequippedEvent:Connect(OnUnequip))
end

function OnUnequip(equipment, player)
	for _, listener in pairs(EventListeners) do
		listener:Disconnect()
	end
	EventListeners = nil
end

if Equipment.owner then
    OnEquip(Equipment, Equipment.owner)
else 
    table.insert(EventListeners, Equipment.equippedEvent:Connect(OnEquip))
end
