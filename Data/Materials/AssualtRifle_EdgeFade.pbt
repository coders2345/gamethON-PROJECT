Assets {
  Id: 274476339247959659
  Name: "AssualtRifle_EdgeFade"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 1588699781014221320
    ParameterOverrides {
      Overrides {
        Name: "overall brightness"
        Float: 1.26711965
      }
      Overrides {
        Name: "edge line brightness"
        Float: 58.5782776
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
          G: 0.671324134
          B: 0.929999948
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          G: 0.258609176
          B: 0.710000038
          A: 1
        }
      }
      Overrides {
        Name: "edge line color"
        Color {
          G: 0.0352317654
          B: 0.190000057
          A: 1
        }
      }
      Overrides {
        Name: "vertical fade"
        Float: 6.05324507
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
