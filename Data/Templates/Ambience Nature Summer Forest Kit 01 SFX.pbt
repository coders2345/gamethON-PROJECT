Assets {
  Id: 10217048163511119698
  Name: "Ambience Nature Summer Forest Kit 01 SFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5758534473589344472
      Objects {
        Id: 5758534473589344472
        Name: "Ambience Nature Summer Forest Kit 01 SFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15305085807154963628
        ChildIds: 17674475982379461345
        ChildIds: 821019779908444476
        ChildIds: 6566188125238828844
        UnregisteredParameters {
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17674475982379461345
        Name: "Ambience Nature Cicadas Set 01 SFX"
        Transform {
          Location {
            X: -130.396545
            Y: 8.22819519
            Z: 66.734993
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5758534473589344472
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_nature_cicadas:18"
            }
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
        Blueprint {
          BlueprintAsset {
            Id: 15234553642973347520
          }
          AudioBP {
            AutoPlay: true
            Volume: 0.683413267
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 821019779908444476
        Name: "Ambience Nature Wind and Trees Set 01 SFX"
        Transform {
          Location {
            X: -130.396545
            Y: 8.22819519
            Z: 66.734993
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5758534473589344472
        UnregisteredParameters {
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
        Blueprint {
          BlueprintAsset {
            Id: 7724989921381923917
          }
          AudioBP {
            AutoPlay: true
            Volume: 0.300845742
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6566188125238828844
        Name: "Ambience Nature Forest Birds Set 01 SFX"
        Transform {
          Location {
            X: -130.396545
            Y: 225.858871
            Z: 111.25219
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5758534473589344472
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_nature_forest_birds:16"
            }
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
        Blueprint {
          BlueprintAsset {
            Id: 15172180549504871240
          }
          AudioBP {
            AutoPlay: true
            Volume: 0.499214083
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 15234553642973347520
      Name: "Ambience Nature Cicadas Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_cicadas_ref"
      }
    }
    Assets {
      Id: 7724989921381923917
      Name: "Ambience Nature Wind and Trees Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_windytrees_ref"
      }
    }
    Assets {
      Id: 15172180549504871240
      Name: "Ambience Nature Forest Birds Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_forestbirds_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Ambience_Nature_Summer_Forest_Kit_01_SFX"
    }
  }
  SerializationVersion: 123
}
