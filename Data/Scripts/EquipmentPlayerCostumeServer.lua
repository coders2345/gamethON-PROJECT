local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local IS_PLAYER_VISIBLE = EQUIPMENT:GetCustomProperty("IsPlayerVisible")

local equipped = false

function OnEquipped(equipment, player)
    
    player:SetVisibility(IS_PLAYER_VISIBLE, false)   -- NOTE: Deprecated command change to [player.isVisble]
    equipped = true
end

function OnUnequipped(equipment, player)
    
    player.isVisible = true
    equipped = false
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

if not equipped and Object.IsValid(EQUIPMENT.owner) then
    OnEquipped(EQUIPMENT, EQUIPMENT.owner)
end