Assets {
  Id: 8050662619100728515
  Name: "Custom Leaves from Kelp Tile 02"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 16108497759573435996
    ParameterOverrides {
      Overrides {
        Name: "wind_speed"
        Float: 0.05
      }
      Overrides {
        Name: "wind_intensity"
        Float: 0.2
      }
    }
    Assets {
      Id: 16108497759573435996
      Name: "Kelp (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_kelp_001_uv"
      }
    }
  }
}
