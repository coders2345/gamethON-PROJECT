Assets {
  Id: 14529376067677604187
  Name: "Custom Composite Mask Blend_2"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 12080785671923079503
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 3536103591030830654
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 2484821050945621908
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.325674951
      }
      Overrides {
        Name: "mask_scale"
        Float: 3.12815285
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.255208343
          G: 0.113607138
          B: 0.0276065785
          A: 1
        }
      }
      Overrides {
        Name: "invert_height"
        Float: 0.66
      }
      Overrides {
        Name: "u_tiles2"
        Float: 9.52425385
      }
      Overrides {
        Name: "v_tiles2"
        Float: 9.12000656
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
      Id: 3536103591030830654
      Name: "Stucco Tintable"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stucco_tint_001_uv"
      }
    }
    Assets {
      Id: 2484821050945621908
      Name: "Tech Panel 05"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sf_gen_tech-panel_005"
      }
    }
  }
}
