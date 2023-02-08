Assets {
  Id: 8309301352058992642
  Name: "Custom Composite Mask Blend"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 12080785671923079503
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 5583178703186586891
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 7762953221240424154
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.291883379
      }
      Overrides {
        Name: "mask_scale"
        Float: 3
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.472151518
          G: 0.536458313
          B: 0.013970023
          A: 1
        }
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.5625
          G: 0.53873831
          B: 0.454101741
          A: 1
        }
      }
    }
    Assets {
      Id: 12080785671923079503
      Name: "Composite Mask Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_mask_blend_001_uv"
      }
    }
    Assets {
      Id: 5583178703186586891
      Name: "Bark Pine 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_pine_001_uv"
      }
    }
    Assets {
      Id: 7762953221240424154
      Name: "Moss 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_moss_001_uv"
      }
    }
  }
}
