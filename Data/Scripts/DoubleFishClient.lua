local EQUIPMENT = script:FindAncestorByType("Equipment")

function DoubleFish(player)
    print("doublefish received")
    
    if Object.IsValid(EQUIPMENT) and EQUIPMENT.owner then
        Events.Broadcast("RequestInteraction", player, 5)
        Task.Wait(1)
        UI.ShowFlyUpText("x2", EQUIPMENT.owner:GetWorldPosition() + (Vector3.UP * 50), {color = Color.GREEN, isBig = true})
    end
end

Events.Connect("DoubleFish", DoubleFish)