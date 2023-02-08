Assets {
  Id: 12670326445640211234
  Name: "GM_Asset_BreadCrumbsCookie"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3212659792600373028
      Objects {
        Id: 3212659792600373028
        Name: "GM_Asset_BreadCrumbsVeggie"
        Transform {
          Scale {
            X: 0.075518392
            Y: 0.0998252
            Z: 0.316992819
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6288126632229478104
        UnregisteredParameters {
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:1"
            }
          }
          Overrides {
            Name: "bp:Angle Min"
            Float: 46.2012062
          }
          Overrides {
            Name: "bp:Angle Max"
            Float: 57.5799141
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.98
              G: 0.433895558
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale"
            Float: 0
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.427147865
          }
          Overrides {
            Name: "bp:Dust Color"
            Color {
              R: 0.65
              G: 0.246709645
              A: 1
            }
          }
          Overrides {
            Name: "bp:Packing Peanut Color"
            Color {
              R: 0.200000048
              G: 0.0849470347
              A: 1
            }
          }
          Overrides {
            Name: "bp:Packing Peanut Scale"
            Float: 1.2051791
          }
          Overrides {
            Name: "bp:Life"
            Float: 10
          }
          Overrides {
            Name: "bp:Enable Box Shards"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Dust"
            Bool: false
          }
          Overrides {
            Name: "bp:Upward Velocity Max"
            Float: 3.49064589
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 2.13574791
          }
          Overrides {
            Name: "bp:Volume Color"
            Color {
              R: 1
              G: 1
              B: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 4827378552350790537
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
      Objects {
        Id: 6288126632229478104
        Name: "Food Eat Bite Crunch Short 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.61887276
            Y: 1.61887276
            Z: 1.61887276
          }
        }
        ParentId: 3212659792600373028
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
        AudioInstance {
          AudioAsset {
            Id: 6814164547208568542
          }
          AutoPlay: true
          Transient: true
          Pitch: 675.966064
          Volume: 1
          Falloff: 300
          Radius: -1
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
      Id: 4827378552350790537
      Name: "Box Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_box_impact_sm"
      }
    }
    Assets {
      Id: 6814164547208568542
      Name: "Food Eat Bite Crunch Short 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_food_eat_bite_crunch_short_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
