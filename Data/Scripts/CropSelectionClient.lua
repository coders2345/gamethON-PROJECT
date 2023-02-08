local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local DEFAULT_PLANT_PREVIEW_ASSET = COMPONENT_ROOT:GetCustomProperty("DefaultPreviewPlantAsset")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function SetCurrentPlantPreview(plantResource)
    LOCAL_PLAYER.clientUserData.currentPlantResource = plantResource
end

LOCAL_PLAYER.clientUserData.currentPlantResource = "ResourceStrawberry"
Events.Connect("CurrentPlantPreview", SetCurrentPlantPreview)