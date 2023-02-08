
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local BALLOON_GROUP = script:GetCustomProperty("BalloonGroup"):WaitForObject()
local BALLOON_CENTER = script:GetCustomProperty("BalloonCenter"):WaitForObject()
local BALLOON_POP_VFX = script:GetCustomProperty("BalloonExplode")

function GetOwner()
	return ROOT.clientUserData.owner
end

function GetBalloonCenter()
	return BALLOON_CENTER:GetWorldPosition()
end

function FloatBalloon()
	if Object.IsValid(BALLOON_GROUP) then
		BALLOON_GROUP:ScaleTo(Vector3.ONE * 0.1, 1.0)
	end
	Task.Wait(1.0)
	ROOT:Destroy()
end

function PopBalloon(player, otherPlayer)
	local popVFX = World.SpawnAsset(BALLOON_POP_VFX, {position = BALLOON_GROUP:GetWorldPosition()})

	ROOT:Destroy()
end

-- Provide some functions for other scripts to use
ROOT.clientUserData.GetBalloonCenter = GetBalloonCenter
ROOT.clientUserData.GetOwner = GetOwner
ROOT.clientUserData.PopBalloon = PopBalloon
ROOT.clientUserData.FloatBalloon = FloatBalloon





