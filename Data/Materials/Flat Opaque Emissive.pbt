Assets {
  Id: 14291807793979895864
  Name: "Flat Opaque Emissive"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 5351428073291024820
    ParameterOverrides {
      Overrides {
        Name: "direction"
        Bool: false
      }
      Overrides {
        Name: "wave_height"
        Float: 3
      }
      Overrides {
        Name: "Gradient Exponent"
        Float: 0.390988529
      }
      Overrides {
        Name: "Smooth Glaze"
        Float: 0
      }
      Overrides {
        Name: "Smooth Glaze Roughness"
        Float: 0
      }
      Overrides {
        Name: "Specular"
        Float: 1
      }
      Overrides {
        Name: "Scale"
        Float: 0
      }
      Overrides {
        Name: "Inner Color"
        Color {
          G: 0.362443
          B: 0.385417
          A: 1
        }
      }
      Overrides {
        Name: "Roughness"
        Float: 1
      }
      Overrides {
        Name: "Metallic"
        Float: 0
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
