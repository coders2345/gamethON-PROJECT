Assets {
  Id: 13235592136068060647
  Name: "Rifle Muzzle Flash"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11736491869790306490
      Objects {
        Id: 11736491869790306490
        Name: "Rifle Muzzle Flash"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 14954116362281898619
        ChildIds: 10002870687909774377
        ChildIds: 13614593215932494344
        UnregisteredParameters {
        }
        Lifespan: 2.5
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
        Id: 14954116362281898619
        Name: "Gunshot Assault Rifle Carbine Set 01 SFX"
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
        ParentId: 11736491869790306490
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Dynamic Distant Sound"
            Bool: true
          }
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_gunshot_assaultrifle_carbine:35"
            }
          }
          Overrides {
            Name: "bp:Main Sound Mix Medium Distance Type"
            Enum {
              Value: "mc:esfx_gunshot_assaultrifle_carbine:3"
            }
          }
          Overrides {
            Name: "bp:Medium Sound Cutoff Distance"
            Float: 2500
          }
          Overrides {
            Name: "bp:Far Sound Cutoff Distance"
            Float: 3500
          }
          Overrides {
            Name: "bp:Main Sound Mix Far Distance Type"
            Enum {
              Value: "mc:esfx_gunshot_assaultrifle_carbine:17"
            }
          }
          Overrides {
            Name: "bp:Far Distant Sound Type"
            Enum {
              Value: "mc:esfx_distant_gunshot_set:29"
            }
          }
          Overrides {
            Name: "bp:Main Sound Mix Medium Distance Volume"
            Float: 15.7181482
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
            Id: 8182959108075168199
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Pitch: 2072.16162
            Volume: 1
            Falloff: 5500
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
        Id: 10002870687909774377
        Name: "Gunshot Assault Rifle Carbine Set 01 SFX"
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
        ParentId: 11736491869790306490
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Dynamic Distant Sound"
            Bool: false
          }
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_gunshot_assaultrifle_carbine:34"
            }
          }
          Overrides {
            Name: "bp:Main Sound Mix Medium Distance Type"
            Enum {
              Value: "mc:esfx_gunshot_assaultrifle_carbine:3"
            }
          }
          Overrides {
            Name: "bp:Medium Sound Cutoff Distance"
            Float: 2500
          }
          Overrides {
            Name: "bp:Far Sound Cutoff Distance"
            Float: 3500
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
            Id: 8182959108075168199
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Pitch: 2022.29883
            Volume: 0.9
            Falloff: 1200
            Radius: 800
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
        Id: 13614593215932494344
        Name: "Generic Muzzleflash VFX"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11736491869790306490
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Size Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.596026301
              B: 0.9
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
            Id: 16322635077100878811
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
      Id: 8182959108075168199
      Name: "Gunshot Assault Rifle Carbine Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_gunshot_assaultrifle_carbine_ref"
      }
    }
    Assets {
      Id: 16322635077100878811
      Name: "Generic Muzzle Flash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_generic_muzzleflash"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
