Assets {
  Id: 2425308734960737394
  Name: "BonusAura"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9130042027336160825
      Objects {
        Id: 9130042027336160825
        Name: "BonusAura"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12924095944288175665
        ChildIds: 15207911948739362609
        ChildIds: 319353723336246138
        UnregisteredParameters {
          Overrides {
            Name: "cs:TargetPlayerId"
            String: ""
          }
          Overrides {
            Name: "cs:TargetPlayerId:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15207911948739362609
        Name: "BonusAura"
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
        ParentId: 9130042027336160825
        ChildIds: 9663659760438926050
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9663659760438926050
        Name: "Speed Bubble"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 9.22765541
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 15207911948739362609
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 4.69058
          }
          Overrides {
            Name: "bp:Surface Speed Y"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Front Fade"
            Float: 0.302921236
          }
          Overrides {
            Name: "bp:Erosion"
            Float: 0.215876594
          }
          Overrides {
            Name: "bp:Back Fade"
            Float: 0.110179529
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.0799999833
              G: 1
              B: 0.0860927105
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              G: 0.0576157942
              B: 0.87
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              G: 0.00105953193
              B: 0.159999967
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
        Blueprint {
          BlueprintAsset {
            Id: 14405571963383785613
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 319353723336246138
        Name: "GMC_FM_BuffAnim"
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
        ParentId: 9130042027336160825
        UnregisteredParameters {
          Overrides {
            Name: "cs:Socket"
            String: "root"
          }
        }
        WantsNetworking: true
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
        Script {
          ScriptAsset {
            Id: 2584991330074148452
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 14405571963383785613
      Name: "Speed Bubble"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_speed_bubble1"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
