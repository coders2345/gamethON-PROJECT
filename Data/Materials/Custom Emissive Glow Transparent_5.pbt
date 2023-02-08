Assets {
  Id: 3002261056686395095
  Name: "Custom Emissive Glow Transparent"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8375575103126610230
    ParameterOverrides {
      Overrides {
        Name: "emissive_boost"
        Float: 3.21940255
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.554000139
          G: 0.175873056
          A: 1
        }
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
