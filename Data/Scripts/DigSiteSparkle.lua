
local SPARKLE = script:GetCustomProperty("Sparkle")
local SPARKLE_SHOW_DIST_SQR = 200 * 200

local sparkle = World.SpawnAsset(SPARKLE)
local isPlaying = false

function PlayVFX(obj)
	if Object.IsValid(obj) then
        if obj:IsA('Vfx') then
            obj:Play()
            isPlaying = true
		end
		
		for _, child in ipairs(obj:GetChildren()) do
			PlayVFX(child)
		end
	end
end

function StopVFX(obj)
	if Object.IsValid(obj) then
        if obj:IsA('Vfx') then
            obj:Stop()
            isPlaying = false
		end
		
		for _, child in ipairs(obj:GetChildren()) do
			StopVFX(child)
		end
	end
end

function HandleDigSiteUpdated(player, site, distToSite, canDig)
    if player ~= Game.GetLocalPlayer() then return end
    if not site then return end
    local dist = (player:GetWorldPosition() - site.position).sizeSquared

    if dist < SPARKLE_SHOW_DIST_SQR and not isPlaying then
        sparkle:SetWorldPosition(site.position)
        PlayVFX(sparkle)
    end
    
    if dist > SPARKLE_SHOW_DIST_SQR and isPlaying then
        if Object.IsValid(sparkle) then
            StopVFX(sparkle)
        end
    end
end

function InteractionChnaged()
    StopVFX(sparkle)
end

StopVFX(sparkle)
Events.Connect("DetectorSignalUpdated", HandleDigSiteUpdated)
Events.Connect("StartDigging", InteractionChnaged)
Events.Connect("StopMetalDetection", InteractionChnaged)