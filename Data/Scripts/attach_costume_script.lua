local sockets = script:GetChildren()
local propHumanGal = script:GetCustomProperty("HumanGal"):WaitForObject()

    for idx, child in pairs(sockets) do  --  for all the socket folders under the script node...
        propHumanGal:AttachCoreObject(child, child.name)
    end


