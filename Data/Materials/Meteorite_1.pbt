Assets {
  Id: 4459233386307737521
  Name: "Meteorite_1"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8131686913581624651
    ParameterOverrides {
      Overrides {
        Name: "cmp:Top"
        AssetReference {
          Id: 16446490414905128251
        }
      }
      Overrides {
        Name: "cmp:Sides"
        AssetReference {
          Id: 7414574211974261385
        }
      }
      Overrides {
        Name: "edge_wear"
        Float: 0.422466546
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.28594777
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.113815404
      }
      Overrides {
        Name: "direction"
        Float: 0.190978184
      }
      Overrides {
        Name: "density"
        Float: 0.339368165
      }
      Overrides {
        Name: "splotchiness"
        Float: 0.915121257
      }
      Overrides {
        Name: "top_scale"
        Float: 5
      }
      Overrides {
        Name: "side_scale"
        Float: 5
      }
      Overrides {
        Name: "cmpc:Sides"
        Color {
          R: 1
          G: 0.341721892
          B: 0.3
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.130208328
          G: 0.075020723
          A: 1
        }
      }
    }
    Assets {
      Id: 8131686913581624651
      Name: "Composite Triplanar Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_triplanar_wa"
      }
    }
    Assets {
      Id: 16446490414905128251
      Name: "Rock Obsidian 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fresnel_rock_obsidian_001_uv"
      }
    }
    Assets {
      Id: 7414574211974261385
      Name: "Cliff 03"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_003"
      }
    }
  }
}
