local propCostumePiece = script:GetCustomProperty("CostumePiece"):WaitForObject()
local propAnimatedMesh = script:GetCustomProperty("AnimatedMesh"):WaitForObject()
local propSocket = script:GetCustomProperty("Socket")

propAnimatedMesh:AttachCoreObject(propCostumePiece, propSocket)