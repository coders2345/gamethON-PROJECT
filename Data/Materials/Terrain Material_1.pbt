Assets {
  Id: 11656947505752626
  Name: "Terrain Material_1"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 9011167536773111557
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 3068202945768084270
        }
      }
      Overrides {
        Name: "material1_scale"
        Float: 0.2
      }
      Overrides {
        Name: "cmp:Material1_Sides"
        AssetReference {
          Id: 7414574211974261385
        }
      }
      Overrides {
        Name: "material1side_scale"
        Float: 0.1
      }
    }
    Assets {
      Id: 9011167536773111557
      Name: "Terrain Composite Triplanar Complex Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_composite_triplanar_blend_001_wa"
      }
    }
    Assets {
      Id: 3068202945768084270
      Name: "Grass Clumps"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_002_uv"
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
