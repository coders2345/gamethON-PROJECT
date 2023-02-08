Assets {
  Id: 811534292665269648
  Name: "Sparkle"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4866278571638600768
      Objects {
        Id: 4866278571638600768
        Name: "Sparkle"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6310197744687657764
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6310197744687657764
        Name: "Callout Sparkle"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4866278571638600768
        UnregisteredParameters {
          Overrides {
            Name: "bp:Density"
            Float: 0.321529865
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0.349272728
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 40
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.416666657
              G: 0.416666657
              B: 0.416666657
              A: 1
            }
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 2
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.76570189
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 4576336487085497817
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 4576336487085497817
      Name: "Callout Sparkle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sparkles_volume_vfx"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
