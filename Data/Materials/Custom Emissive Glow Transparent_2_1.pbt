Assets {
  Id: 725293991644591862
  Name: "Custom Emissive Glow Transparent_2"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8375575103126610230
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1.20316362
          G: 11.6172218
          B: 35.9167213
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0.5
      }
    }
    Assets {
      Id: 8375575103126610230
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
  }
}
