Assets {
  Id: 3954476878258033627
  Name: "Custom Base Material from Human Gal"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 2013938131850343682
    ParameterOverrides {
      Overrides {
        Name: "secondary color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "primary color"
        Color {
          R: 0.682291687
          G: 0.45772934
          B: 0.351806641
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.475722224
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
    }
    Assets {
      Id: 2013938131850343682
      Name: "Human Gal 001 Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_gal_basic_skin_001_mi_ref"
      }
    }
  }
}
