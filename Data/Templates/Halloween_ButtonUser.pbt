Assets {
  Id: 18435834625667076468
  Name: "Halloween_ButtonUser"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2455877649599875475
      Objects {
        Id: 2455877649599875475
        Name: "Halloween_ButtonUser"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18372897638416357496
        ChildIds: 10550989861376985555
        UnregisteredParameters {
          Overrides {
            Name: "cs:SelectedColor"
            Color {
              R: 0.994000077
              G: 0.362888962
              A: 1
            }
          }
          Overrides {
            Name: "cs:UITeamLabel"
            ObjectReference {
              SubObjectId: 10550989861376985555
            }
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 185
          Height: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          IsHittable: true
          Button {
            Label: "AVeryLongUsername"
            FontColor {
              R: 0.0122864898
              G: 0.0273208916
              B: 0.0176419523
              A: 1
            }
            FontSize: 20
            ButtonColor {
              R: 0.991102397
              G: 0.509083211
              B: 0.110466592
              A: 1
            }
            HoveredColor {
              R: 1
              G: 0.428690791
              B: 0.0544802547
              A: 1
            }
            PressedColor {
              R: 0.991102397
              G: 0.509083211
              B: 0.110466592
              A: 1
            }
            DisabledColor {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Brush {
              Id: 841534158063459245
            }
            IsButtonEnabled: true
            ClickMode {
              Value: "mc:ebuttonclickmode:default"
            }
            Font {
              Id: 2288998074996219445
            }
            Justification {
              Value: "mc:etextjustify:center"
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              R: 1
              G: 0.428690791
              B: 0.0544802547
              A: 1
            }
            ShadowOffset {
              Y: 3
            }
            ScaleToFit: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10550989861376985555
        Name: "TeamLabel"
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
        ParentId: 2455877649599875475
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
          Width: 30
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Text {
            Label: "A"
            Color {
              R: 1
              G: 0.836821258
              B: 0.120000005
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11445976846433799414
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
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
      Id: 2288998074996219445
      Name: "Teko"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "TekoRegular_ref"
      }
    }
    Assets {
      Id: 11445976846433799414
      Name: "Roboto Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "RobotoBold_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
