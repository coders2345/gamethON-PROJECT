Assets {
  Id: 1840404813401423509
  Name: "ShieldActive"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 1588699781014221320
    ParameterOverrides {
      Overrides {
        Name: "overall brightness"
        Float: 4.0936265
      }
      Overrides {
        Name: "edge line brightness"
        Float: 0
      }
      Overrides {
        Name: "fresnel"
        Float: 3
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 50
      }
      Overrides {
        Name: "edge line sharpness"
        Float: 0.357246459
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.919999957
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          R: 0.840000033
          A: 1
        }
      }
      Overrides {
        Name: "edge line color"
        Color {
          R: 1
          G: 0.160000026
          B: 0.160000026
          A: 1
        }
      }
      Overrides {
        Name: "vertical fade"
        Float: 6.21758223
      }
      Overrides {
        Name: "noise spread"
        Float: 1000
      }
      Overrides {
        Name: "noise sharpness"
        Float: 0.0195417702
      }
    }
    Assets {
      Id: 1588699781014221320
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
  }
}
