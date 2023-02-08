local isFishAnimationEnabled = false
local isFishOrientationEnabled = false

local timeSinceAnimationStatusChanged = time()
local lastAnimationStatus = isFishAnimationEnabled
local animationSwitchLerpProgress = 0
local timeSinceOrientationStatusChanged = time()
local lastOrientationStatus = isFishAnimationEnabled
local orientationSwitchLerpProgress = 0
local MAINSETTINGS = script:GetCustomProperty("root"):WaitForObject()
local ORIENTATIONOBJECT = MAINSETTINGS:GetCustomProperty("main_orientation"):WaitForObject()
local userAuthoredSpeedAdjustment = MAINSETTINGS:GetCustomProperty("SwimCycleSpeedAdjustment")
local speedMult = 1
local speedOffset = 0
local zDegreesPerDistance = 0
local yDegreesPerDistance = 0
local worldPosSaved = MAINSETTINGS:GetWorldPosition()
local fwdVectorSaved = ORIENTATIONOBJECT:GetTransform():GetForwardVector()
local worldQuatTargetSaved = Quaternion.IDENTITY
local rightVectorSaved = ORIENTATIONOBJECT:GetWorldTransform():GetRightVector()
local propertyTable = MAINSETTINGS:GetCustomProperties()
local partsTable ={}
local VELOCITY_THRESHOLD = 0.1

-- Find the parts of the fish from the Custom Properties on the MAINSETTINGS node
for name, value in pairs(propertyTable) do
    if string.match(name, "pivot")  ~= nil then
        local sourceString, _ = string.gsub(name, "_pivot", "")
        if partsTable[sourceString] == nil then
            partsTable[sourceString] ={}
        end
        
        -- fill the table of properties per part from custom properties authored on each part.
        partsTable[sourceString]["PART"] = MAINSETTINGS:GetCustomProperty(name):WaitForObject()
        partsTable[sourceString]["USE_ROT"] = partsTable[sourceString]["PART"]:GetCustomProperty("useRotation")
        partsTable[sourceString]["CURVEMAX"] = partsTable[sourceString]["PART"]:GetCustomProperty("curveMax")
        partsTable[sourceString]["OFFSET"] = partsTable[sourceString]["PART"]:GetCustomProperty("curveOffset")
        partsTable[sourceString]["YAWTURNOFFSET"] = partsTable[sourceString]["PART"]:GetCustomProperty("yawTurnOffsetValue")
        partsTable[sourceString]["PITCHTURNOFFSET"] = partsTable[sourceString]["PART"]:GetCustomProperty("pitchTurnOffsetValue")
        partsTable[sourceString]["ORIGINALTRANSFORM"] = partsTable[sourceString]["PART"]:GetTransform()
    end
end

function AnimatePart(part, useRot, offset, curveMax, yawTurnOffsetValue, pitchTurnOffsetValue, originalTransform, waveValueTurnMultiplier, yawTurnMultiplierClamped, pitchTurnMultiplierClamped)
    if isFishAnimationEnabled == true then
        -- handle the pivots that use rotation only to make the swimming animation  
        if useRot == true then
        
            -- yawTurnValue and pitchTurnValue are used during gross "turns" to bend the fish in the direction of the turn.
            local pitchTurnValue = pitchTurnMultiplierClamped * pitchTurnOffsetValue
            local yawTurnValue = yawTurnMultiplierClamped * yawTurnOffsetValue
            
            -- waveValue is the raw value for the base Swim animation
            local waveValue = math.cos((time() * speedMult) - offset + speedOffset) * curveMax * waveValueTurnMultiplier
            local rot = part:GetRotation()
            if animationSwitchLerpProgress >= 1 then 
                part:SetRotation(Rotation.New(rot.x, pitchTurnValue, waveValue + yawTurnValue))
            else
                -- lerp from the original rotations per part.  This is used if the swim animation is activated
                -- using the clientUserData.isFishAnimationEnabled bool on the root object of the template.
                local waveQuat = Quaternion.New(Rotation.New(rot.x, pitchTurnValue, waveValue + yawTurnValue))
                local currentQuat = part:GetTransform():GetQuaternion()
                local targetWaveQuat = Quaternion.Slerp(currentQuat, waveQuat, animationSwitchLerpProgress)
                part:SetRotation(targetWaveQuat:GetRotation())
            end
        -- handle the main_translate which translates the entire fish geo laterally as part of the swim animation
        else
            local amplitude = CoreMath.Lerp(curveMax, curveMax / 2, CoreMath.Clamp(speedMult / 20))
            local waveValue = math.sin((time() * speedMult) + offset + speedOffset) * amplitude * waveValueTurnMultiplier
            local currentPos = part:GetPosition()
            local wavePos = Vector3.New(currentPos.x, waveValue, currentPos.z)
            
            if animationSwitchLerpProgress >= 1 then
                part:SetPosition(wavePos)       
            else
                -- lerp from the original position per part.  This is used if the swim animation is activated
                -- using the clientUserData.isFishAnimationEnabled bool on the root object of the template.
                local targetPos = Vector3.Lerp(currentPos, wavePos, animationSwitchLerpProgress)
                part:SetPosition(targetPos)
            end
            
        end
    else
        -- lerp part back to original transform if fish animation is deactivated using the 
        -- clientUserData.isFishAnimationEnabled bool on the root object of the template.
        local originalQuat = originalTransform:GetQuaternion()
        local originalPos = originalTransform:GetPosition() 
        local currentQuat = part:GetTransform():GetQuaternion()
        local currentPos = part:GetTransform():GetPosition()
        if originalQuat ~= currentQuat then
            local targetQuat = Quaternion.Slerp(originalQuat, currentQuat, animationSwitchLerpProgress)
            local targetPos = Vector3.Lerp(originalPos, currentPos, animationSwitchLerpProgress)
            
            local targetTransform = Transform.New(targetQuat, targetPos, Vector3.New(1,1,1))
            
            part:SetTransform( targetTransform )
        end
    end
end

function Tick(deltaTime)
    
    if not MAINSETTINGS:IsVisibleInHierarchy() then return end
    
    -- handle the behavior for enabling/disabling fish animation based on clientUserData.isFishAnimationEnabled.
    if isFishAnimationEnabled ~= lastAnimationStatus then
        timeSinceAnimationStatusChanged = time()
        if isFishAnimationEnabled == true then
            animationSwitchLerpProgress = 0
        else
            animationSwitchLerpProgress = 1
        end
        lastAnimationStatus = isFishAnimationEnabled
    end
    
    if time() - timeSinceAnimationStatusChanged < 1.1 then   
        if isFishAnimationEnabled == true then
            animationSwitchLerpProgress =  CoreMath.Clamp((time() - timeSinceAnimationStatusChanged)/1)
        else
            animationSwitchLerpProgress = CoreMath.Clamp(1- (time() - timeSinceAnimationStatusChanged)/1)
        end
    end
    -- handle the behavior for enabling/disabling fish orientation based on clientUserData.isFishAnimationEnabled.
    if isFishOrientationEnabled ~= lastOrientationStatus then
        timeSinceOrientationStatusChanged = time()
        if isFishOrientationEnabled == true then
            orientationSwitchLerpProgress = 0
        else
            orientationSwitchLerpProgress = 1
        end
        lastOrientationStatus = isFishOrientationEnabled
    end
    
    if time() - timeSinceOrientationStatusChanged < 0.6 then 
        if isFishOrientationEnabled == true then
            orientationSwitchLerpProgress =  CoreMath.Clamp((time() - timeSinceOrientationStatusChanged)/0.5)
        else
            orientationSwitchLerpProgress = CoreMath.Clamp(1- (time() - timeSinceOrientationStatusChanged)/0.5)
        end
    end
    -- handle the fish orient and swim variables
    local worldPos =  MAINSETTINGS:GetWorldPosition()
    local worldPosDelta = (worldPos - worldPosSaved)
    local worldVelocity = Vector3.ZERO
    if deltaTime > 0 then
        worldVelocity = worldPosDelta / deltaTime
    end
    local worldQuatTarget = Quaternion.IDENTITY
    local angleRelativeToVerticalAdjustmentFactor = 1
    local yawTurnMultiplierClamped = 0
    local waveValueTurnMultiplier = 1
    local pitchTurnMultiplierClamped = 0
    local fishScaleAdjustment = CoreMath.Clamp((MAINSETTINGS:GetWorldScale().x)/3)
    -- orient the fish in the direction of its world velocity.
    -- fake a small velocity in the fish's forward direction in the xy plane if it isn't moving (seek "flat")
    local worldVelocityTemp = worldVelocity
    if worldVelocity.size < VELOCITY_THRESHOLD then
        local fwdVector = ORIENTATIONOBJECT:GetWorldTransform():GetForwardVector()
        fwdVector.z = 0
        worldVelocityTemp = fwdVector:GetNormalized()
        -- if there is no velocity in the xy plane, then just use forward dir       
        if worldVelocityTemp.size < VELOCITY_THRESHOLD then
            worldVelocityTemp = ORIENTATIONOBJECT:GetWorldTransform():GetForwardVector()
        end
    end
    
    local worldRotTarget = Rotation.New(0,0,0)
    if math.abs((worldVelocityTemp:GetNormalized()..Vector3.UP)) > 0.999 then
        local worldRotTransform = Transform.New(worldVelocityTemp:GetNormalized(), rightVectorSaved:GetNormalized(), (worldVelocityTemp ^ rightVectorSaved):GetNormalized(), Vector3.ZERO)
        worldRotTarget = worldRotTransform:GetRotation()
    else
        rightVectorSaved = ORIENTATIONOBJECT:GetWorldTransform():GetRightVector()
        worldRotTarget = Rotation.New(worldVelocityTemp, Vector3.UP)
    end
    local slerpThreshold = math.acos(CoreMath.Clamp(worldVelocityTemp:GetNormalized() .. ORIENTATIONOBJECT:GetWorldTransform():GetForwardVector(), -1, 1))
    local slerpProgressAdjustmentFactor = CoreMath.Lerp(0.05, 0.03, fishScaleAdjustment)
    local slerpProgress = CoreMath.Lerp( 1, 0.1, CoreMath.Clamp( (slerpThreshold ^ slerpProgressAdjustmentFactor)/(math.pi ^ slerpProgressAdjustmentFactor) ) )
    
    -- angleRelativeToVerticalAdjustmentFactor will adjust a value by how close it is to vertical.
    if worldVelocity.size > VELOCITY_THRESHOLD then
        angleRelativeToVerticalAdjustmentFactor = math.max (0.5, 1 - math.abs(worldVelocity:GetNormalized()..Vector3.UP))
    else
        angleRelativeToVerticalAdjustmentFactor = 1
    end
    slerpProgress = slerpProgress * angleRelativeToVerticalAdjustmentFactor
    
    worldQuatTarget = Quaternion.Slerp(worldQuatTargetSaved, Quaternion.New(worldRotTarget), slerpProgress)
    worldQuatTargetSaved = worldQuatTarget
    -- orient the fish.
    
    if isFishOrientationEnabled == true then
        if orientationSwitchLerpProgress >= 1 then
        
            ORIENTATIONOBJECT:SetWorldRotation(worldQuatTarget:GetRotation())
        else
        
            local targetRot = Quaternion.Slerp(Quaternion.IDENTITY, worldQuatTarget, orientationSwitchLerpProgress):GetRotation()
            ORIENTATIONOBJECT:SetWorldRotation(targetRot)
        end
    else
        local originalQuat = Quaternion.IDENTITY
        local currentQuat = ORIENTATIONOBJECT:GetTransform():GetQuaternion()
        local targetRot =Quaternion.Slerp(originalQuat, currentQuat, .9):GetRotation()
        ORIENTATIONOBJECT:SetRotation(targetRot)
    end
    
    local localVelocity = ORIENTATIONOBJECT:GetWorldTransform():GetInverse():TransformDirection(worldVelocityTemp)
    -- determine the z (yaw/horizontal) and y (pitch/vertical) axis degrees per distance of the fish
    if worldVelocity.size > VELOCITY_THRESHOLD then
        local fwdVector = ORIENTATIONOBJECT:GetWorldTransform():GetForwardVector()
        local upVector = ORIENTATIONOBJECT:GetWorldTransform():GetUpVector()
        local rightVector = ORIENTATIONOBJECT:GetWorldTransform():GetRightVector()
        local fwdVectorInFishXYPlane = fwdVector
        local fwdVectorInFishXYPlaneSaved = (fwdVectorSaved - (fwdVectorSaved .. upVector) * upVector):GetNormalized()
        local zRotDelta = math.deg(math.acos(CoreMath.Clamp(fwdVectorInFishXYPlane .. fwdVectorInFishXYPlaneSaved, -1, 1)))

        if zRotDelta > 0.09 then
            if (fwdVectorInFishXYPlane ^ fwdVectorInFishXYPlaneSaved) .. upVector > 0 then
                zRotDelta = -zRotDelta
            end
            zDegreesPerDistance = CoreMath.Round(CoreMath.Lerp(zDegreesPerDistance, CoreMath.Clamp((zRotDelta/worldPosDelta.size) * angleRelativeToVerticalAdjustmentFactor, -1, 1), .15), 2)
        else 
            zDegreesPerDistance = CoreMath.Lerp(zDegreesPerDistance, 0, .1)
        end

        local fwdVectorInFishXZPlane = fwdVector
        local fwdVectorInFishXZPlaneSaved = (fwdVectorSaved - (fwdVectorSaved .. rightVector) * rightVector):GetNormalized()
        local yRotDelta = math.deg(math.acos(CoreMath.Clamp(fwdVectorInFishXZPlane .. fwdVectorInFishXZPlaneSaved, -1, 1)))
        if yRotDelta > 0.1 then
            if (fwdVectorInFishXZPlane ^ fwdVectorInFishXZPlaneSaved) .. rightVector > 0 then
                yRotDelta = -yRotDelta
            end
            --local yDegreesPerDistanceProgress = CoreMath.Lerp(.05, .1, CoreMath.Clamp((MAINSETTINGS:GetWorldScale().x)/3))

            local yDegreesPerDistanceProgress = .25
            yDegreesPerDistance = CoreMath.Round(CoreMath.Lerp(yDegreesPerDistance, CoreMath.Clamp((yRotDelta/worldPosDelta.size), -1, 1), yDegreesPerDistanceProgress), 2)
        else 
            yDegreesPerDistance = CoreMath.Lerp(yDegreesPerDistance, 0, .1)
        end
    else
        zDegreesPerDistance = CoreMath.Lerp(zDegreesPerDistance, 0, .1)
        yDegreesPerDistance = CoreMath.Lerp(yDegreesPerDistance, 0, .1)
    end

    -- store values to modify the swim animation when turning.
    yawTurnMultiplierClamped = CoreMath.Clamp(zDegreesPerDistance, -.6, .6)

    -- waveValueTurnMultiplier is used to reduce the influence of the base swim animation when turning sharply in yaw/z axis
    waveValueTurnMultiplier = CoreMath.Clamp((0.65 - math.abs(yawTurnMultiplierClamped))/0.65)

    pitchTurnMultiplierClamped = CoreMath.Clamp(yDegreesPerDistance, -1, 1)

    fwdVectorSaved = ORIENTATIONOBJECT:GetWorldTransform():GetForwardVector()

    -- speedOffset is used to preserve the position on the sine/cosine curves of the animated pieces when the speed of the fish changes. 
    local speedMultNew = math.max((localVelocity.x/100), 1) * userAuthoredSpeedAdjustment

    speedOffset = speedOffset + (speedMult - speedMultNew) * time()
    speedMult = speedMultNew
    -- animate the parts of the fish:
    for _, table in pairs(partsTable) do
        AnimatePart(table.PART, table.USE_ROT, table.OFFSET, table.CURVEMAX, table.YAWTURNOFFSET, table.PITCHTURNOFFSET, table.ORIGINALTRANSFORM,  waveValueTurnMultiplier, yawTurnMultiplierClamped, pitchTurnMultiplierClamped)
    end

    worldPosSaved = worldPos
end

function EnableFishAnimation()
	isFishAnimationEnabled = true
	isFishOrientationEnabled = true
end

function DisableFishAnimation()
	isFishAnimationEnabled = false
	isFishOrientationEnabled = false
end