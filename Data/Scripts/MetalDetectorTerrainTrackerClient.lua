local EQUIPMENT = script:GetCustomProperty("Equipment"):WaitForObject()
local DETECTOR_HEAD = script:GetCustomProperty("DetectorHead"):WaitForObject()
local TELESCOPE = script:GetCustomProperty("Telescope"):WaitForObject()
local TELESCOPE_END_HELPER = script:GetCustomProperty("TelescopeEndHelper"):WaitForObject()
local CABLE = script:GetCustomProperty("Cable"):WaitForObject()

local TELESCOPE_SCALE = TELESCOPE:GetScale()
local CABLE_SCALE = CABLE:GetScale()
local LERP_TIME = 0.1

function Tick(deltaTime)
	if EQUIPMENT.owner ~= nil then
		local pivotPosition = DETECTOR_HEAD:GetWorldPosition()
		local hitResult = World.Raycast(pivotPosition + Vector3.UP * 200.0, pivotPosition - Vector3.UP * 200.0, {ignorePlayers = true})

		if hitResult then
			local normal = hitResult:GetImpactNormal()
			local forward = EQUIPMENT.owner:GetWorldRotation() * Vector3.FORWARD
			local pitch = math.deg(math.acos(normal .. forward))
			pitch = CoreMath.Clamp(90.0 - pitch, -45.0, 45.0)
			DETECTOR_HEAD:RotateTo(Rotation.New(0.0, pitch, 0.0), LERP_TIME, true)

			local distance = (hitResult:GetImpactPosition() - pivotPosition).size
			local telescopeTargetScale = Vector3.New(TELESCOPE_SCALE.x, TELESCOPE_SCALE.y, distance * TELESCOPE_SCALE.z / 50.0)
			local cableTargetScale = Vector3.New(CABLE_SCALE.x, CABLE_SCALE.y, distance * CABLE_SCALE.z / 50.0)
			TELESCOPE:ScaleTo(telescopeTargetScale, LERP_TIME, true)
			CABLE:ScaleTo(cableTargetScale, LERP_TIME, true)
		else
			DETECTOR_HEAD:RotateTo(Rotation.ZERO, LERP_TIME, true)
			TELESCOPE:ScaleTo(TELESCOPE_SCALE, LERP_TIME, true)
			CABLE:ScaleTo(CABLE_SCALE, LERP_TIME, true)
		end

		DETECTOR_HEAD:SetWorldPosition(TELESCOPE_END_HELPER:GetWorldPosition())
	end
end
