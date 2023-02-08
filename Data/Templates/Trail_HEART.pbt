Assets {
  Id: 2689657562252073239
  Name: "Trail_HEART"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13438627149056704443
      Objects {
        Id: 13438627149056704443
        Name: "Trail_HEART"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12687524338759042358
        UnregisteredParameters {
          Overrides {
            Name: "cs:Bullet_Speed"
            Int: 8000
          }
          Overrides {
            Name: "cs:Enable_FORWARD_Arc_Rotation"
            Bool: false
          }
          Overrides {
            Name: "cs:Enable_RIGHT_Arc_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:Enable_UP_Arc_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:Enable_RANDOM_Arcing"
            Bool: false
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
                Time: 0.025
                Value: 50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.075
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.1
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
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 3.96883115e-06
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 0.025
                Value: 25
                ArriveTangent: 3221.07
                LeaveTangent: 3221.07
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_break"
                }
                Time: 0.05
                Value: 10
                ArriveTangent: -10000
                LeaveTangent: 10000
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 0.075
                Value: 25
                ArriveTangent: -3446.80762
                LeaveTangent: -3446.80762
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.0999887884
                Value: -50
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_constant"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.1
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
                ArriveTangent: 198.500198
                LeaveTangent: 198.500198
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
                Time: 0.318846613
                Value: -1053.39478
                ArriveTangent: 3810.22681
                LeaveTangent: 3810.22681
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 1
                ArriveTangent: 1300.82935
                LeaveTangent: 1300.82935
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
                ArriveTangent: -10000
                LeaveTangent: -10000
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 0.123555616
                Value: -4217.94629
                ArriveTangent: 1
                LeaveTangent: 1
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
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
            String: "Enabling this applies a random rotation to the FORWARD vector when the projectile exits the barrel initally. The result is a random projectile arc.   This effect is more apparent when UP_Arc or RIGHT_Arc is enabled!"
          }
          Overrides {
            Name: "cs:Enable_Drag:tooltip"
            String: " Enabling this simulates \'drag\' where the projectile can be faked to accelerate or deaccelerate.  Enabling this does not modify the VFX positions in anyway unlike the two booleans below!              CAUTION: Making a steep curve in the \'DRAG_Curve\' could provide undesirable results! "
          }
          Overrides {
            Name: "cs:Bullet_Speed:tooltip"
            String: "This should ALWAYS match the \'Projectile Speed\' of the gun that the trail is being attached to!   NOT doing so will cause the bullet arcs to not line up properly.     Pro Tip: Please read the Trail_README script to clear up confusion."
          }
          Overrides {
            Name: "cs:Enable_FORWARD_Arc_Rotation:tooltip"
            String: "This enables the (X) FORWARD direction trail rotation. This can be used to rotate the trail through the air. if Arcs are enabled, this rotates the arc!"
          }
          Overrides {
            Name: "cs:Enable_RIGHT_Arc_Curve:tooltip"
            String: "This enables the (Y) RIGHT direction trail movement. This can be used to move the trail through the air following the RIGHT_Arc_Curve"
          }
          Overrides {
            Name: "cs:Enable_UP_Arc_Curve:tooltip"
            String: "This enables the (Z) UP direction trail movement. This can be used to move the trail through the air following the UP_Arc_Curve"
          }
          Overrides {
            Name: "cs:Enable_RIGHT_Curve:tooltip"
            String: "This enables the (Y) RIGHT direction for  VFX movement.  "
          }
          Overrides {
            Name: "cs:Enable_UP_Curve:tooltip"
            String: "This enables the (Z) UP direction for  VFX movement.  "
          }
          Overrides {
            Name: "cs:VFX_RIGHT_Curve:tooltip"
            String: "Modifying this curve will change the (Y) RIGHT direction of the VFX.   Tip: Use \'cycle with offset\' for both pre (IN) and post (OUT) extrapolation to have a consistent loop for your curve!"
          }
          Overrides {
            Name: "cs:VFX_UP_Curve:tooltip"
            String: "Modifying this curve will change the (Z) UP direction of the VFX.   Tip: Use \'cycle with offset\' for both pre (IN) and post (OUT) extrapolation to have a consistent loop for your curve!"
          }
          Overrides {
            Name: "cs:FORWARD_Arc_Curve_Rotation:tooltip"
            String: "Modifying this curve will change the (X) FORWARD rotation of the trail.  This can be better visualized with arc RIGHT or UP enabled above!"
          }
          Overrides {
            Name: "cs:RIGHT_Arc_Curve:tooltip"
            String: "Modifying this curve will change the (Y) RIGHT direction of the trail arc!   Tip: Negative values for this curve will make the trail arc in the left direction, and positive in the right direction."
          }
          Overrides {
            Name: "cs:UP_Arc_Curve:tooltip"
            String: "Modifying this curve will change the (Z) UP direction of the trail arc!   Tip: Positive values for this curve make the trail arc upwards, Negative values make the trail arc down."
          }
          Overrides {
            Name: "cs:DRAG_Curve:tooltip"
            String: "Modifying this curve will change the (X) FORWARD direction of the trail.   Tip: This can be used to simulate \'drag\' which fakes acceleration or deacceleration depending on the direction of the curve! Use carefully."
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
        Id: 12687524338759042358
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
        ParentId: 13438627149056704443
        ChildIds: 11307193850683614274
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
        Id: 11307193850683614274
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
        ParentId: 12687524338759042358
        ChildIds: 14981290819759837381
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
        Id: 14981290819759837381
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
        ParentId: 11307193850683614274
        ChildIds: 4731101634473579380
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
        Id: 4731101634473579380
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
        ParentId: 14981290819759837381
        ChildIds: 10736054467956774717
        ChildIds: 15269585235610225671
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
        Id: 10736054467956774717
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
        ParentId: 4731101634473579380
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trail_Pivot_Drag"
            ObjectReference {
              SubObjectId: 12687524338759042358
            }
          }
          Overrides {
            Name: "cs:Trail_Rotation_Pivot_Parent"
            ObjectReference {
              SubObjectId: 11307193850683614274
            }
          }
          Overrides {
            Name: "cs:Trail_Rotation_Pivot"
            ObjectReference {
              SubObjectId: 14981290819759837381
            }
          }
          Overrides {
            Name: "cs:Trail"
            ObjectReference {
              SubObjectId: 15269585235610225671
            }
          }
          Overrides {
            Name: "cs:ROOT"
            ObjectReference {
              SubObjectId: 13438627149056704443
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
        Id: 15269585235610225671
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
        ParentId: 4731101634473579380
        ChildIds: 16518860542735203339
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
              R: 0.330000043
              B: 0.318999887
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorB"
            Color {
              R: 0.413333535
              B: 0.62
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorC"
            Color {
              R: 0.85
              B: 0.63749963
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
        Id: 16518860542735203339
        Name: "Hearts Volume VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.502851248
            Y: 0.502851248
            Z: 0.502851248
          }
        }
        ParentId: 15269585235610225671
        UnregisteredParameters {
          Overrides {
            Name: "bp:Life"
            Float: 3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1.33646119
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.822252393
          }
          Overrides {
            Name: "bp:Burst"
            Bool: false
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2.60893393
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 3
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:1"
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
            Id: 12172103612815067939
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
      Id: 12172103612815067939
      Name: "Hearts Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_heart_volume"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
