Assets {
  Id: 8744355431441767289
  Name: "PistolHeartStopper_EdgeFade"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 1588699781014221320
    ParameterOverrides {
      Overrides {
        Name: "overall brightness"
        Float: 1.54041231
      }
      Overrides {
        Name: "edge line brightness"
        Float: 33.5889473
      }
      Overrides {
        Name: "fresnel"
        Float: 2.99630785
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
          R: 1
          G: 0.290000021
          B: 0.910662293
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          R: 1
          B: 0.933774471
          A: 1
        }
      }
      Overrides {
        Name: "edge line color"
        Color {
          R: 0.77
          B: 0.122384042
          A: 1
        }
      }
      Overrides {
        Name: "vertical fade"
        Float: 5.71673632
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
