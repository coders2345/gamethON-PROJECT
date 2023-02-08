Assets {
  Id: 13552129801998434089
  Name: "Halloween_Command"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7286553819722505963
      Objects {
        Id: 7286553819722505963
        Name: "Halloween_Command"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3639645339005330847
        UnregisteredParameters {
          Overrides {
            Name: "cs:DefaultColor"
            Color {
              R: 0.991102397
              G: 0.509083211
              B: 0.110466592
              A: 1
            }
          }
          Overrides {
            Name: "cs:SelectedColor"
            Color {
              R: 0.642708302
              G: 0.183630928
              A: 1
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
          AddSizeToParentIfUsingParentSize: true
          IsHittable: true
          Button {
            Label: "Command"
            FontColor {
              R: 0.0757143795
              B: 0.0900001526
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
              R: 0.994000077
              G: 0.362888962
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
