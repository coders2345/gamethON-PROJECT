Assets {
  Id: 8825525415457218684
  Name: "Custom Tech Panel 02_awk"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 681238876931730005
    ParameterOverrides {
      Overrides {
        Name: "color_lights"
        Color {
          R: 0.013702089
          G: 0.473531336
          B: 0.70837605
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.013702089
          G: 0.473531336
          B: 0.70837605
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          Z: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.970882654
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.8
      }
    }
    Assets {
      Id: 681238876931730005
      Name: "Tech Panel 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sf_gen_tech-panel_002_uv"
      }
    }
  }
}
