Assets {
  Id: 10643714208177761484
  Name: "CostumeManagerScriptClient"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14943134382874647666
      Objects {
        Id: 14943134382874647666
        Name: "CostumeManagerScriptClient"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13578035218629933222
        UnregisteredParameters {
          Overrides {
            Name: "cs:Costume"
            AssetReference {
              Id: 13169799920114410108
            }
          }
          Overrides {
            Name: "cs:PelvisZOffset"
            Float: -12
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
        Script {
          ScriptAsset {
            Id: 18216611112279469471
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
