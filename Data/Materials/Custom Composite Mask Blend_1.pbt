Assets {
  Id: 11924334970229091609
  Name: "Custom Composite Mask Blend_1"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 12080785671923079503
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 11965130095444097864
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 5183913681281705082
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.609911799
      }
      Overrides {
        Name: "invert_height"
        Float: 1
      }
      Overrides {
        Name: "mask_scale"
        Float: 0.973889351
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 1
          G: 1
          B: 1
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
      Id: 11965130095444097864
      Name: "Gold Treasure 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_treasure_001"
      }
    }
    Assets {
      Id: 5183913681281705082
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
  }
}
