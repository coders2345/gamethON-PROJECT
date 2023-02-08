Assets {
  Id: 15686264561720596310
  Name: "Trail_TRIANGLE"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13411923018958376010
      Objects {
        Id: 13411923018958376010
        Name: "Trail_TRIANGLE"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11644455166242207958
        UnregisteredParameters {
          Overrides {
            Name: "cs:Bullet_Speed"
            Int: 10000
          }
          Overrides {
            Name: "cs:Enable_FORWARD_Arc_Rotation"
            Bool: true
          }
          Overrides {
            Name: "cs:Enable_RIGHT_Arc_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:Enable_UP_Arc_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:Enable_RANDOM_Arcing"
            Bool: true
          }
          Overrides {
            Name: "cs:Enable_Drag"
            Bool: false
          }
          Overrides {
            Name: "cs:Enable_RIGHT_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:Enable_UP_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:VFX_RIGHT_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.006
                Value: 50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.03
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.036
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cyclewithoffset"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cyclewithoffset"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:VFX_UP_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: -4.87656507e-06
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 3.96883115e-06
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.006
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.018
                Value: 50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.03
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.036
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cyclewithoffset"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cyclewithoffset"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:FORWARD_Arc_Curve_Rotation"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.1667
                Value: 50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.833
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 1
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:RIGHT_Arc_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                ArriveTangent: 7512.03906
                LeaveTangent: 7512.03906
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 1
                ArriveTangent: 7293.17432
                LeaveTangent: 7293.17432
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:UP_Arc_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                ArriveTangent: 198.500198
                LeaveTangent: 198.500198
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 0.587354541
                Value: -985.640625
                ArriveTangent: -1269.79504
                LeaveTangent: -1269.79504
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 1
                ArriveTangent: 10000
                LeaveTangent: 10000
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:DRAG_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 1
                Value: 1
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_constant"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Enable_RANDOM_Arcing:tooltip"
            String: "This applies a random rotation to the FORWARD vector when the projectile exits the barrel. The result is a random arcing projectile, in order to see this effect be sure to enable \"Use_Z_Arc_Curve\" aswell has make a Arc_Z_Curve."
          }
          Overrides {
            Name: "cs:Enable_Drag:tooltip"
            String: "This does not modify the VFX positions in anyway unlike the two booleans below. This is used for simulating \'drag\' where the projectile can be faked to accelerate or deaccelerate."
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
        Id: 11644455166242207958
        Name: "Trail_Pivot_Drag"
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
        ParentId: 13411923018958376010
        ChildIds: 6940319989565288306
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
          IsFilePartition: true
          FilePartitionName: "Trail_Pivot_Drag_1"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6940319989565288306
        Name: "Trail_Rotation_Pivot_Parent"
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
        ParentId: 11644455166242207958
        ChildIds: 4937251484977121416
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
          IsFilePartition: true
          FilePartitionName: "Trail_Rotation_Pivot_Parent"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4937251484977121416
        Name: "Trial_Rotation_Pivot"
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
        ParentId: 6940319989565288306
        ChildIds: 13700447413605421894
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
          IsFilePartition: true
          FilePartitionName: "Trial_Rotation_Pivot_1"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13700447413605421894
        Name: "Trail_Pivot"
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
        ParentId: 4937251484977121416
        ChildIds: 7913693989692792116
        ChildIds: 5939784865210830888
        ChildIds: 10509929885832819871
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
          IsFilePartition: true
          FilePartitionName: "Trail_Pivot"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7913693989692792116
        Name: "Trail_Curves"
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
        ParentId: 13700447413605421894
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trail_Pivot_Drag"
            ObjectReference {
              SubObjectId: 11644455166242207958
            }
          }
          Overrides {
            Name: "cs:Trail_Rotation_Pivot_Parent"
            ObjectReference {
              SubObjectId: 6940319989565288306
            }
          }
          Overrides {
            Name: "cs:Trail_Rotation_Pivot"
            ObjectReference {
              SubObjectId: 4937251484977121416
            }
          }
          Overrides {
            Name: "cs:ROOT"
            ObjectReference {
              SubObjectId: 13411923018958376010
            }
          }
          Overrides {
            Name: "cs:Trail"
            ObjectReference {
              SubObjectId: 5939784865210830888
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
        Script {
          ScriptAsset {
            Id: 17564486231555873660
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5939784865210830888
        Name: "Basic Projectile Trail VFX"
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
        ParentId: 13700447413605421894
        UnregisteredParameters {
          Overrides {
            Name: "bp:colorB"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.939800382
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.664978147
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 9.06635857
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0109999515
              G: 0.330000043
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorB"
            Color {
              G: 0.62
              B: 0.0930000618
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorC"
            Color {
              R: 0.36833331
              G: 0.85
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
            Id: 17977280587505271142
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
        Id: 10509929885832819871
        Name: "Flare Billboard"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.311683118
            Y: 0.311683118
            Z: 0.311683118
          }
        }
        ParentId: 13700447413605421894
        UnregisteredParameters {
          Overrides {
            Name: "bp:Flare Shape"
            Int: 5
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.61
              B: 0.0525167
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 0.0565562397
              G: 0.61
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 0.095695287
              G: 0.85
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5.20422792
          }
          Overrides {
            Name: "bp:Rotate Texture"
            Bool: true
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
            Id: 84931335621543932
          }
          TeamSettings {
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
      Id: 17977280587505271142
      Name: "Basic Projectile Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_basic_projectile_trail"
      }
    }
    Assets {
      Id: 84931335621543932
      Name: "Flare Billboard"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_flare_object"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
