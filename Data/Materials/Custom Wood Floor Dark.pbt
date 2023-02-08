Assets {
  Id: 8602437283895818373
  Name: "Custom Wood Floor Dark"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 10402083861819122460
    ParameterOverrides {
      Overrides {
        Name: "material_scale"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.694039762
          B: 0.160000026
          A: 1
        }
      }
      Overrides {
        Name: "rotate_material"
        Float: 90
      }
      Overrides {
        Name: "u_tiles"
        Float: 0.125
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.125
      }
    }
    Assets {
      Id: 10402083861819122460
      Name: "Wood Floor Dark"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_floor_dark_001_uv"
      }
    }
  }
}
