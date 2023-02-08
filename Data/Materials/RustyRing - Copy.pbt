Assets {
  Id: 8729102102049270657
  Name: "RustyRing - Copy"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 12080785671923079503
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 17620932415629123599
        }
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.302083343
          G: 0.256209284
          B: 0.0590528324
          A: 1
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 5592518353363018372
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.671875
          G: 0.538085282
          B: 0.345627546
          A: 1
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.327496976
      }
      Overrides {
        Name: "u_tiles"
        Float: 3
      }
      Overrides {
        Name: "v_tiles"
        Float: 3
      }
      Overrides {
        Name: "u_tiles2"
        Float: 3
      }
      Overrides {
        Name: "v_tiles2"
        Float: 3
      }
      Overrides {
        Name: "rotate_material"
        Float: 180
      }
      Overrides {
        Name: "rotate_material2"
        Float: 180
      }
      Overrides {
        Name: "mask_scale"
        Float: 0.5
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
      Id: 17620932415629123599
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 5592518353363018372
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
      }
    }
  }
}
