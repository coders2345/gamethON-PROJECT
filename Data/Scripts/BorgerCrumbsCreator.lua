local CRUMBS = script:GetCustomProperty("Crumbs")
local EAT_BURGER_ABILITY = script:GetCustomProperty("EatBorger"):WaitForObject()
local BURGER_EQUIPMENT = script:GetCustomProperty("BurgerEquipment"):WaitForObject()
local FART_SOUND = script:GetCustomProperty("FartSound")

EAT_BURGER_ABILITY.executeEvent:Connect(function()
    if Object.IsValid(EAT_BURGER_ABILITY.owner) then
        local crumbs = World.SpawnAsset(CRUMBS,{ position = EAT_BURGER_ABILITY.owner:GetWorldPosition() + Vector3.UP * 20 + EAT_BURGER_ABILITY.owner:GetWorldTransform():GetForwardVector() * 20 })
        Task.Spawn(function()
            local owner = EAT_BURGER_ABILITY.owner
            Task.Wait(math.random(3,10))
            -- Fart. Lol.
            if Object.IsValid(owner) then
                World.SpawnAsset(FART_SOUND,{ position = owner:GetWorldPosition() + Vector3.UP * -15 + owner:GetWorldTransform():GetForwardVector() * -25 })
            end
        end)
    end
end)