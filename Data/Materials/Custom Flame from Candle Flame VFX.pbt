Assets {
  Id: 13074360668504999056
  Name: "Custom Flame from Candle Flame VFX"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 5576678980466740314
    ParameterOverrides {
      Overrides {
        Name: "color a"
        Color {
          R: 0.85
          B: 0.726158679
          A: 1
        }
      }
      Overrides {
        Name: "color b"
        Color {
          R: 0.350000024
          B: 0.340728283
          A: 1
        }
      }
      Overrides {
        Name: "color c"
        Color {
          R: 0.960000038
          B: 0.324238151
          A: 1
        }
      }
    }
    Assets {
      Id: 5576678980466740314
      Name: "Candle Flame"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_candleflame_a"
      }
    }
  }
}
