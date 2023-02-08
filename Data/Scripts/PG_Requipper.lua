local function Requip()

--[[
    for key, targetPlayer in pairs(Game.GetPlayers()) do
        local PG = World.SpawnAsset(_G.PG_GUN)
        PG:Equip(targetPlayer)
        targetPlayer.animationStance = PG.animationStance

        local pull = PG:FindDescendantByName("Pull")
        pull:Equip(targetPlayer)
    end
]]
end


local listener = script.destroyEvent:Connect(Requip)

--[[
Events.Connect("SwappedToWeapon", function()
    listener:Disconnect()
    print("Destroying spawner...")
    script.parent:Destroy()
end)
]]