Assets {
  Id: 17604792253842629305
  Name: "Custom Basic Hologram"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 11766648712828048493
    ParameterOverrides {
      Overrides {
        Name: "scanline speed"
        Float: 0
      }
      Overrides {
        Name: "scanline scale"
        Float: 0.1
      }
      Overrides {
        Name: "scanline min value"
        Float: 0
      }
      Overrides {
        Name: "flicker intensity"
        Float: 0
      }
      Overrides {
        Name: "fresnel power"
        Float: 1.37346935
      }
      Overrides {
        Name: "u_tiles"
        Float: 10.1508713
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.544571757
      }
      Overrides {
        Name: "linethickness"
        Float: 0.0981604382
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.883538127
          G: 0.979997933
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "emissiveboost"
        Float: -0.2
      }
      Overrides {
        Name: "specular"
        Float: 0.5
      }
      Overrides {
        Name: "roughness"
        Float: 1
      }
      Overrides {
        Name: "color_lights"
        Color {
          G: 0.003522
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "usealphafortransparency"
        Bool: true
      }
      Overrides {
        Name: "color_secondary"
        Color {
          R: 0.19
          G: 0.662052631
          B: 1
          A: 0.107000008
        }
      }
    }
    Assets {
      Id: 11766648712828048493
      Name: "Grid Lines Emissive Double-Sided"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_grid_unlit_emissive_uv_doublesided"
      }
    }
  }
}
