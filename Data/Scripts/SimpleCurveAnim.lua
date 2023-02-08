--[[
Copyright 2021 Manticore Games, Inc.
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local OBJECT = script:GetCustomProperty("OBJECT"):WaitForObject()
local CURRENT_TIME = 0
local BOOLEAN_Pos_X_Curve = script:GetCustomProperty("BOOLEAN_Pos_X_Curve")
local BOOLEAN_Pos_Y_Curve = script:GetCustomProperty("BOOLEAN_Pos_Y_Curve")
local BOOLEAN_Pos_Z_Curve = script:GetCustomProperty("BOOLEAN_Pos_Z_Curve")
local Pos_X_Curve = script:GetCustomProperty("Pos_X_Curve")
local Pos_Y_Curve = script:GetCustomProperty("Pos_Y_Curve")
local Pos_Z_Curve = script:GetCustomProperty("Pos_Z_Curve")
local BOOLEAN_Rot_X_Curve = script:GetCustomProperty("BOOLEAN_Rot_X_Curve")
local BOOLEAN_Rot_Y_Curve = script:GetCustomProperty("BOOLEAN_Rot_Y_Curve")
local BOOLEAN_Rot_Z_Curve = script:GetCustomProperty("BOOLEAN_Rot_Z_Curve")
local Rot_X_Curve = script:GetCustomProperty("Rot_X_Curve")
local Rot_Y_Curve = script:GetCustomProperty("Rot_Y_Curve")
local Rot_Z_Curve = script:GetCustomProperty("Rot_Z_Curve")
local BOOLEAN_Scale_Curve = script:GetCustomProperty("BOOLEAN_Scale_Curve")
local Scale_Curve = script:GetCustomProperty("Scale_Curve")

function Tick(deltaTime)
    CURRENT_TIME = CURRENT_TIME + deltaTime
    --Our booleans and curves, if true use Curve. if false (unchecked), use 0.
    local Pos_X = BOOLEAN_Pos_X_Curve and Pos_X_Curve:GetValue(CURRENT_TIME) or 0
    local Pos_Y = BOOLEAN_Pos_Y_Curve and Pos_Y_Curve:GetValue(CURRENT_TIME) or 0
    local Pos_Z = BOOLEAN_Pos_Z_Curve and Pos_Z_Curve:GetValue(CURRENT_TIME) or 0

    local Rot_X = BOOLEAN_Rot_X_Curve and Rot_X_Curve:GetValue(CURRENT_TIME) or 0
    local Rot_Y = BOOLEAN_Rot_Y_Curve and Rot_Y_Curve:GetValue(CURRENT_TIME) or 0
    local Rot_Z = BOOLEAN_Rot_Z_Curve and Rot_Z_Curve:GetValue(CURRENT_TIME) or 0

    local Scale = BOOLEAN_Scale_Curve and Scale_Curve:GetValue(CURRENT_TIME) or 1

    OBJECT:SetPosition(Vector3.New(Pos_X, Pos_Y, Pos_Z))
    OBJECT:SetRotation(Rotation.New(Rot_X, Rot_Y, Rot_Z))
    OBJECT:SetScale(Vector3.New(Scale))

end