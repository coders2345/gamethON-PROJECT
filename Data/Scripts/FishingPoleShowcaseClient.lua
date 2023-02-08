local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))
local BOBBER = script:GetCustomProperty("Bobber"):WaitForObject()
local FISH_PARENT = BOBBER:GetCustomProperty("FishParent"):WaitForObject()

local GEO = script:GetCustomProperty("Geo"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local showCaseHandle = nil

function PullShowcase(player, id, duration)
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(player) then return end
    if EQUIPMENT.owner ~= player then return end

    if not duration then
        duration = .5
    end
    local assetRef = ITEM_LIBRARY.GetItem(id).assetRef
    local itemInstance = World.SpawnAsset(assetRef, {parent = FISH_PARENT})
    local fishScript = itemInstance:FindDescendantByType("Script")

    FISH_PARENT:SetPosition(Vector3.New(0,0,-45))

    if fishScript then
        fishScript.context.EnableFishAnimation()
    else
        -- if it's not fish, then reset rotation
        FISH_PARENT:SetRotation(Rotation.New(0,0,0))
    end

    local arcStartTime = time()
    local startPosition = BOBBER:GetWorldPosition()
    local endPosition = LOCAL_PLAYER:GetWorldPosition()
    local offset = endPosition - startPosition
    local zHat = ((offset ^ Vector3.UP) ^ offset):GetNormalized()

    while time() <= arcStartTime + duration do
        local t = (time() - arcStartTime) / duration
        local position = startPosition + t * offset + zHat * offset.size * (t - t ^ 2) * 0.4
        BOBBER:SetWorldPosition(position)
        Task.Wait()
    end

    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(player) then return end

    GEO.visibility = Visibility.FORCE_OFF

    BOBBER:AttachToPlayer(player, "right_prop")
    BOBBER:SetPosition(Vector3.ZERO)

    if fishScript then
        FISH_PARENT:SetRotation(Rotation.New(90,90,180))
        fishScript.context.DisableFishAnimation()
    end
end

function OnUnequipped()
	if showCaseHandle then
		showCaseHandle:Disconnect()
    end
end

showCaseHandle = Events.Connect("FishShowcase", PullShowcase)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)
EQUIPMENT.clientUserData.GetFishBitePosition = function ()
    if Object.IsValid(FISH_PARENT) then
        return FISH_PARENT:GetWorldPosition()
    else
        return nil
    end
end