Assets {
  Id: 13399453730767335238
  Name: "Custom Grass from Grass Tall"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 10753667160308124248
    ParameterOverrides {
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.161458328
          G: 0.106940262
          B: 0.00253390172
          A: 1
        }
      }
      Overrides {
        Name: "wind_weight"
        Float: 0
      }
    }
    Assets {
      Id: 10753667160308124248
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
