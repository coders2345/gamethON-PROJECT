local propList = script:GetCustomProperties()

propAssets = {}

for k,v in pairs(propList) do
  table.insert(propAssets, v)
end

function GetRandomProp()
  return propAssets[math.random(1, #propAssets)]
end

return {
  allProps = propList,
  GetRandomProp = GetRandomProp,
}