Assets {
  Id: 1164797525277967097
  Name: "Prop Mysterious Golden Relic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12865847642925784444
      Objects {
        Id: 12865847642925784444
        Name: "Prop Mysterious Golden Relic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1643026833837549424
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
        Id: 1643026833837549424
        Name: "GoldenTrinity"
        Transform {
          Location {
            X: 3.10049582
            Y: -4.53790153e-06
            Z: -8.97275066
          }
          Rotation {
            Pitch: 59.9997063
            Yaw: 89.9998169
            Roll: 89.9998856
          }
          Scale {
            X: 1.4484849
            Y: 1.4484849
            Z: 1.4484849
          }
        }
        ParentId: 12865847642925784444
        ChildIds: 786707255915842450
        ChildIds: 13198594301819812275
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
        Id: 786707255915842450
        Name: "Group"
        Transform {
          Location {
            X: 2.23517418e-07
            Y: -2.54313159e-06
            Z: -1.56458591e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1643026833837549424
        ChildIds: 71716281862253903
        ChildIds: 183413251103825441
        ChildIds: 10542915114561966441
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
        Id: 71716281862253903
        Name: "Prism - 3-Sided Polished"
        Transform {
          Location {
            X: 14.6478291
            Y: -8.27165699
            Z: 1.31678871e-06
          }
          Rotation {
          }
          Scale {
            X: 0.294282228
            Y: 0.294282228
            Z: 0.0628978461
          }
        }
        ParentId: 786707255915842450
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10333603302638640772
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8006029365187935077
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
      Objects {
        Id: 183413251103825441
        Name: "Prism - 3-Sided Polished"
        Transform {
          Location {
            X: -14.6162176
            Y: -8.33819866
            Z: 3.29197173e-05
          }
          Rotation {
          }
          Scale {
            X: 0.294282228
            Y: 0.294282228
            Z: 0.0628978461
          }
        }
        ParentId: 786707255915842450
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10333603302638640772
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8006029365187935077
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
      Objects {
        Id: 10542915114561966441
        Name: "Prism - 3-Sided Polished"
        Transform {
          Location {
            X: -0.0316101722
            Y: 16.6098537
            Z: 7.90073227e-06
          }
          Rotation {
          }
          Scale {
            X: 0.294282228
            Y: 0.294282228
            Z: 0.0628978461
          }
        }
        ParentId: 786707255915842450
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10333603302638640772
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8006029365187935077
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
      Objects {
        Id: 13198594301819812275
        Name: "Outline Object"
        Transform {
          Location {
            X: 0.761122644
            Y: -0.439439476
            Z: 8.22992945e-07
          }
          Rotation {
            Pitch: -90
            Yaw: 26.565033
            Roll: -56.5654
          }
          Scale {
            X: 0.69037652
            Y: 0.69037652
            Z: 0.69037652
          }
        }
        ParentId: 1643026833837549424
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 786707255915842450
            }
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.26
              G: 0.0464900732
              A: 0.8
            }
          }
          Overrides {
            Name: "bp:Multi-Color"
            Bool: true
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 2
              G: 0.610610127
              B: 0.301228762
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 1.6
              G: 2
              B: 0.99999994
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
            Id: 2608081004527580694
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
      Id: 8006029365187935077
      Name: "Prism - 3-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_hq_001"
      }
    }
    Assets {
      Id: 10333603302638640772
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 2608081004527580694
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Metal Detecting Props"
}
