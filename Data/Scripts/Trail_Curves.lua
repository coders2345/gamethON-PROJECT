-------------------------------------------------------------------------
--This script uses the latest 2D Curve editor!




-------------------------------------------------------------------------

--SimpleCurves are created as custom properties on the script with ------

local ROOT = script:GetCustomProperty("ROOT"):WaitForObject()
local Trail_Pivot_Drag = script:GetCustomProperty("Trail_Pivot_Drag"):WaitForObject()
local Trail_Rotation_Pivot_Parent = script:GetCustomProperty("Trail_Rotation_Pivot_Parent"):WaitForObject()
local Trail_Rotation_Pivot = script:GetCustomProperty("Trail_Rotation_Pivot"):WaitForObject()
local Trail = script:GetCustomProperty("Trail"):WaitForObject()
local Parent = script.parent


-- Set the bullet speed to match the guns. IF this isn't set correctly, the trail won't follow along the curve correctly.
local Bullet_Speed = ROOT:GetCustomProperty("Bullet_Speed")


--Booleans for enabling which Position Curve to use on the trail.

--Booleans to turn on/off which direction the VFX should animate in.
local Enable_Drag = ROOT:GetCustomProperty("Enable_Drag")
local Enable_RIGHT_Curve = ROOT:GetCustomProperty("Enable_RIGHT_Curve")
local Enable_UP_Curve = ROOT:GetCustomProperty("Enable_UP_Curve")

--Booleans to turn on/off which arc you want to use.
local Enable_FORWARD_Arc_Rotation = ROOT:GetCustomProperty("Enable_FORWARD_Arc_Rotation")
local Enable_RIGHT_Arc_Curve = ROOT:GetCustomProperty("Enable_RIGHT_Arc_Curve")
local Enable_UP_Arc_Curve = ROOT:GetCustomProperty("Enable_UP_Arc_Curve")

--Boolean for randomness in initial Arc.
local Enable_RANDOM_Arcing = ROOT:GetCustomProperty("Enable_RANDOM_Arcing")



-- This is used to 'fake' drag i.e. acceleration and decceleration of the projectile.
local DRAG_Curve = ROOT:GetCustomProperty("DRAG_Curve")
-- These curves are used on the VFX itself, create interesting ossilating patterns with this. 

local VFX_RIGHT_Curve = ROOT:GetCustomProperty("VFX_RIGHT_Curve")
local VFX_UP_Curve = ROOT:GetCustomProperty("VFX_UP_Curve")



local FORWARD_Arc_Curve_Rotation = ROOT:GetCustomProperty("FORWARD_Arc_Curve_Rotation")
local RIGHT_Arc_Curve = ROOT:GetCustomProperty("RIGHT_Arc_Curve")
local UP_Arc_Curve = ROOT:GetCustomProperty("UP_Arc_Curve")




local currentTime = 0
local distance = 0

-----------Raycast------------
-- In this function we are storing 

local function RaycastPlease(transform)
    --Uncomment any code below to get a CoreDebug.DrawLine to visualize the raycast!
    
    -- !!!DON'T UNCOMMENT ACTUAL CODE COMMENTS!!! --


    -- local debugTable = {
    --     duration = 10000,
    --     thickness = 5,
    --     color = Color.PURPLE
    -- }
    

    --We are getting a position as well as a foward vector 
    local originalOrigin = transform:GetPosition()
    local originDirection = transform:GetForwardVector()

    local hitResult = World.Raycast(originalOrigin, originalOrigin + originDirection * 99999999999)

    
    -- If the Raycast does not intersect or 'hit' an object then the result won't be created!
    if hitResult == nil then
        return
    end
    

    
    distance = (originalOrigin - hitResult:GetImpactPosition()).size

    -- CoreDebug.DrawLine(originalOrigin, originalOrigin + originDirection * distance, debugTable)

end



--This calls the function to cast the ray from the script's parent.
RaycastPlease(Parent:GetWorldTransform())
-------------------------------------------------------------------



-- This is used in 
local timeTillImpact = distance / Bullet_Speed

print(timeTillImpact,"TIME TILL IMPACT")

--This adds randomness to the FORWARD vector so the trail gets shot out at a random direction.
if Enable_RANDOM_Arcing then
    Trail_Rotation_Pivot:SetRotation(Rotation.New(math.random(0,360),0,0))
end


function Tick(deltaTime)
    
    if timeTillImpact > 0 then
        if currentTime >= timeTillImpact then
            Trail_Pivot_Drag:SetPosition(Vector3.New(0,0,0))
            Trail_Rotation_Pivot_Parent:SetRotation(Rotation.New(0, 0, 0))
            Parent:SetPosition(Vector3.New(0,0,0))
            Trail:SetPosition(Vector3.New(0, 0, 0))
            return
        end
    end


    currentTime = currentTime + deltaTime
    --Our booleans for Arcs curves, if true use Curve, if false (unchecked), use 0.
    local x_arc = Enable_FORWARD_Arc_Rotation and FORWARD_Arc_Curve_Rotation:GetValue(currentTime / timeTillImpact) or 0
    local y_arc = Enable_RIGHT_Arc_Curve and RIGHT_Arc_Curve:GetValue(currentTime / timeTillImpact) or 0
    local z_arc = Enable_UP_Arc_Curve and UP_Arc_Curve:GetValue(currentTime / timeTillImpact) or 0

    --Our booleans and curves, if true use Curve. if false (unchecked), use 0.
    local x = Enable_Drag and DRAG_Curve:GetValue(currentTime /  timeTillImpact) or 0
    local y = Enable_RIGHT_Curve and VFX_RIGHT_Curve:GetValue(currentTime) or 0
    local z = Enable_UP_Curve and VFX_UP_Curve:GetValue(currentTime) or 0
    ---------------------------------------------------------------------------
    
    --All motions for curves are being applied here.
    Trail_Pivot_Drag:SetPosition(Vector3.New(x,0,0))
    Trail_Rotation_Pivot_Parent:SetRotation(Rotation.New(x_arc, 0, 0))
    Parent:SetPosition(Vector3.New(0,y_arc,z_arc))
    Trail:SetPosition(Vector3.New(0, y, z))

    
end