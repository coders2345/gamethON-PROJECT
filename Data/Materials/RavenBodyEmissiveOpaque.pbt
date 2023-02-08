Assets {
  Id: 12893126735451529690
  Name: "RavenBodyEmissiveOpaque"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 5351428073291024820
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.05
          G: 0.05
          B: 0.05
          A: 1
        }
      }
      Overrides {
        Name: "emissiveboost"
        Float: 0.6
      }
    }
    Assets {
      Id: 5351428073291024820
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
  }
}
