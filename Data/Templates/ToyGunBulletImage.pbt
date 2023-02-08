Assets {
  Id: 3022158333754371212
  Name: "ToyGunBulletImage"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12867387038737237623
      Objects {
        Id: 12867387038737237623
        Name: "ToyGunBulletImage"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3122017997268103685
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 43.6378784
          UIY: -52.5145798
          RotationAngle: 315
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14595022622111833134
            }
            Color {
              R: 0.70837605
              G: 0.644479871
              B: 0.0168073755
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 0.452000022
            }
            ShadowOffset {
              X: 4
              Y: 4
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 14595022622111833134
      Name: "Bullet 1"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Military_Icon_019"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
