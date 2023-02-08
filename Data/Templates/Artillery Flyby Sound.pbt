Assets {
  Id: 10278051425795831540
  Name: "Artillery Flyby Sound"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13527468519304252950
      Objects {
        Id: 13527468519304252950
        Name: "Artillery Flyby Sound"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
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
        AudioInstance {
          AudioAsset {
            Id: 959042790367080031
          }
          AutoPlay: true
          Transient: true
          Volume: 1
          Falloff: 4000
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 959042790367080031
      Name: "Cannon Artillery Shell Whiz Flyby Passby 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cannon_artillery_whiz_passby_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
