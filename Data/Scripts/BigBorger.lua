local TRIGGER = script:GetCustomProperty("BoxTrigger"):WaitForObject()
local BURGER_EQUIPMENT = script:GetCustomProperty("BurgerEquipment"):WaitForObject()
local EAT_BORGER_ABILITY = script:GetCustomProperty("EatBorger"):WaitForObject()
local BURGER_CLIENT_CONTEXT_FOLDER = script:GetCustomProperty("BurgerClientContetFolder"):WaitForObject()
local EATING_CLIENT_CONTEXT_FOLDER  = script:GetCustomProperty("EatingClientContextFolder"):WaitForObject()

local BURGER_FX = script:GetCustomProperty("BurgerFX")

local originalTransform = BURGER_CLIENT_CONTEXT_FOLDER:GetTransform()

BURGER_EQUIPMENT.equippedEvent:Connect(function(_,player)
    player.animationStance = "unarmed_carry_object_heavy"
end)

BURGER_EQUIPMENT.unequippedEvent:Connect(function(_,player)
    if player.animationStance == "unarmed_carry_object_heavy" then
        player.animationStance = "unarmed_stance"
    end
end)

EAT_BORGER_ABILITY.executeEvent:Connect(function()
    BURGER_CLIENT_CONTEXT_FOLDER:SetTransform(EATING_CLIENT_CONTEXT_FOLDER:GetTransform())
end)

EAT_BORGER_ABILITY.cooldownEvent:Connect(function()
    if EAT_BORGER_ABILITY.owner.animationStance == "unarmed_carry_object_heavy" then
        EAT_BORGER_ABILITY.owner.animationStance = "unarmed_stance"
    end
    if Object.IsValid(BURGER_EQUIPMENT) then
        BURGER_EQUIPMENT:Destroy()
    end
end)