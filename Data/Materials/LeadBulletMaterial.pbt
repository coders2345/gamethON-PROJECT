Assets {
  Id: 9587265445693208112
  Name: "LeadBulletMaterial"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 17456517187884617211
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 10144532496502484114
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 8923328253657399777
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 8
          G: 8
          B: 8
          A: 1
        }
      }
      Overrides {
        Name: "material1_scale"
        Float: 5
      }
      Overrides {
        Name: "material2_scale"
        Float: 5
      }
      Overrides {
        Name: "u_tiles2"
        Float: 4
      }
      Overrides {
        Name: "v_tiles2"
        Float: 1
      }
      Overrides {
        Name: "rotate_material2"
        Float: 90
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.339368165
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 5
          G: 5
          B: 5
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 2
      }
    }
    Assets {
      Id: 17456517187884617211
      Name: "Composite Mask Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_mask_blend_001_uv"
      }
    }
    Assets {
      Id: 10144532496502484114
      Name: "Cliff 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_cliff_001_uv"
      }
    }
    Assets {
      Id: 8923328253657399777
      Name: "Cliff 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_002"
      }
    }
  }
}
