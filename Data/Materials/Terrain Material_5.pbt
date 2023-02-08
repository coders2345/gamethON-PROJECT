Assets {
  Id: 15035373956795866932
  Name: "Terrain Material_5"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 9011167536773111557
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 16939877575243345507
        }
      }
      Overrides {
        Name: "cmp:Material1_Sides"
        AssetReference {
          Id: 2008579393308256661
        }
      }
      Overrides {
        Name: "material1_scale"
        Float: 0.02
      }
      Overrides {
        Name: "material1side_scale"
        Float: 0.02
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 10108466381634675134
        }
      }
      Overrides {
        Name: "material2_scale"
        Float: 0.5
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
      Id: 16939877575243345507
      Name: "Snow 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_snow_001_uv"
      }
    }
    Assets {
      Id: 2008579393308256661
      Name: "Cliff 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_cliff_001_uv"
      }
    }
    Assets {
      Id: 10108466381634675134
      Name: "Rocks River Bed 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "puddle_river_bed_001"
      }
    }
  }
}
