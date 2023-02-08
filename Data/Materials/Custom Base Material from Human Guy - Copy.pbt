Assets {
  Id: 10269178402320962899
  Name: "Custom Base Material from Human Guy - Copy"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8914596963613624531
    ParameterOverrides {
      Overrides {
        Name: "secondary color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 0.0373767167
      }
      Overrides {
        Name: "primary color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.409874201
      }
    }
    Assets {
      Id: 8914596963613624531
      Name: "Guy Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_guy_basic_skin_001_mi_ref"
      }
    }
  }
}
