
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local ITEM_LIBRARY = require(script:GetCustomProperty("ItemLibrary"))

local propDigSuccessSFX = script:GetCustomProperty("DigSuccessSFX")

local propContentRoot = COMPONENT_ROOT:GetCustomProperty("ContentRoot"):WaitForObject()
local propContentToSpawn = COMPONENT_ROOT:GetCustomProperty("ContentToSpawn")

local hasSpawned = false
function spawnContent()
	local item = ITEM_LIBRARY.GetItem(propContentToSpawn)
	if item then
		local assetToSpawn = item.assetRef
		World.SpawnAsset(assetToSpawn, { parent = propContentRoot })
	--	World.SpawnAsset(propDigSuccessSFX, { parent = propContentRoot })
		hasSpawned = true
	end
end

function HandleNetworkedPropertyChanged(obj, property)
	if property == "ContentToSpawn" then
		propContentToSpawn = obj:GetCustomProperty(property)
		if propContentToSpawn ~= nil then
			spawnContent()
		end
	end
end

if propContentToSpawn ~= nil and propContentToSpawn ~= "" then
	spawnContent()
else
	COMPONENT_ROOT.networkedPropertyChangedEvent:Connect(HandleNetworkedPropertyChanged)
end