Assets {
  Id: 1595759528913970588
  Name: "Shark Water"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 17196381966649663421
    ParameterOverrides {
      Overrides {
        Name: "opacity"
        Float: 1
      }
      Overrides {
        Name: "opacity distance"
        Float: 1000
      }
      Overrides {
        Name: "deep color"
        Color {
          G: 0.669999957
          B: 0.630066276
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.669999957
          B: 0.630066276
          A: 1
        }
      }
      Overrides {
        Name: "wind speed"
        Float: 0.444222152
      }
      Overrides {
        Name: "object displacement amount"
        Float: 1
      }
      Overrides {
        Name: "normal distance"
        Float: 5
      }
      Overrides {
        Name: "flow direction"
        Vector {
          X: 0.2
          Y: 0.2
          Z: 0.2
        }
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.591937184
      }
    }
    Assets {
      Id: 17196381966649663421
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
