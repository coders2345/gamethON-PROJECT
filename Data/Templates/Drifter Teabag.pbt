Assets {
  Id: 15374657352284207248
  Name: "Drifter Teabag"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5888190802311899674
      Objects {
        Id: 5888190802311899674
        Name: "Drifter Teabag"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3854293913935046751
        ChildIds: 10645080693592162961
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
        Equipment {
          SocketName: "root"
          PickupTrigger {
            SubObjectId: 3854293913935046751
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3854293913935046751
        Name: "BoxTrigger"
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
        ParentId: 5888190802311899674
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10645080693592162961
        Name: "ClientContext"
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
        ParentId: 5888190802311899674
        ChildIds: 4109776403815822708
        ChildIds: 2761386100677510420
        ChildIds: 12618028897342224061
        ChildIds: 1712901044202129615
        ChildIds: 17375634014022261724
        ChildIds: 5509996473290532729
        ChildIds: 3374622660952040916
        ChildIds: 10870005163427652099
        ChildIds: 15636677438416275960
        ChildIds: 13884623602836825559
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 4109776403815822708
        Name: "TeabagEquipped"
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
        ParentId: 10645080693592162961
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ease3D"
            AssetReference {
              Id: 12607993711261979538
            }
          }
          Overrides {
            Name: "cs:DrifterTeabag"
            ObjectReference {
              SubObjectId: 5888190802311899674
            }
          }
          Overrides {
            Name: "cs:IKPelvis"
            ObjectReference {
              SubObjectId: 17375634014022261724
            }
          }
          Overrides {
            Name: "cs:IKLeftHand"
            ObjectReference {
              SubObjectId: 5509996473290532729
            }
          }
          Overrides {
            Name: "cs:IKRightHand"
            ObjectReference {
              SubObjectId: 3374622660952040916
            }
          }
          Overrides {
            Name: "cs:IKLeftFoot"
            ObjectReference {
              SubObjectId: 10870005163427652099
            }
          }
          Overrides {
            Name: "cs:IKRightFoot"
            ObjectReference {
              SubObjectId: 15636677438416275960
            }
          }
          Overrides {
            Name: "cs:IKRightHandTarget"
            ObjectReference {
              SubObjectId: 13884623602836825559
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
            Id: 9772841164777700975
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2761386100677510420
        Name: "TeabagStringAnim"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.301271498
            Y: 0.301271498
            Z: 0.301271498
          }
        }
        ParentId: 10645080693592162961
        UnregisteredParameters {
          Overrides {
            Name: "cs:Pos_X_Curve"
            SimpleCurve {
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Pos_Y_Curve"
            SimpleCurve {
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Pos_Z_Curve"
            SimpleCurve {
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Rot_X_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Value: -10
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 2
                Value: 10
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 4
                Value: -10
                ArriveTangent: 3.17142
                LeaveTangent: 3.17142
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
            Name: "cs:Rot_Y_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Value: 4
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 0.5
                Value: -16
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 1
                Value: 4
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cycle"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cycle"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Rot_Z_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 1
                Value: 15
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 2
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cycle"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_cycle"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Scale_Curve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Value: 0.8
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_linear"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_auto"
                }
                Time: 1
                Value: 0.8
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
            Name: "cs:BOOLEAN_Pos_X_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:BOOLEAN_Pos_Y_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:BOOLEAN_Pos_Z_Curve"
            Bool: false
          }
          Overrides {
            Name: "cs:BOOLEAN_Scale_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:BOOLEAN_Rot_X_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:BOOLEAN_Rot_Y_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:BOOLEAN_Rot_Z_Curve"
            Bool: true
          }
          Overrides {
            Name: "cs:OBJECT"
            ObjectReference {
              SubObjectId: 1334931365562246196
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
            Id: 17357934728900042101
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12618028897342224061
        Name: "Teacup_Root"
        Transform {
          Location {
            Z: -2.3523407
          }
          Rotation {
          }
          Scale {
            X: 0.329826444
            Y: 0.329826444
            Z: 0.329826444
          }
        }
        ParentId: 10645080693592162961
        ChildIds: 14087904464582683385
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
        Id: 14087904464582683385
        Name: "Teacup_Pivot"
        Transform {
          Location {
            Y: 178.473694
            Z: 346.10733
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12618028897342224061
        ChildIds: 13313385728495389629
        ChildIds: 14638681661117375997
        ChildIds: 10019167584247202996
        ChildIds: 6722906654449693273
        ChildIds: 5327281362337927046
        ChildIds: 2992642934231776897
        ChildIds: 14849348325599666303
        ChildIds: 10756935287306383508
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
        Id: 13313385728495389629
        Name: "Cone - Truncated Hollow Wide Thin"
        Transform {
          Location {
            X: 1.55707633
            Y: -156.828842
            Z: -20.2212944
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -179.999969
            Roll: -179.999969
          }
          Scale {
            X: 4.40245438
            Y: 4.40245485
            Z: 3.44430637
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12088767627401407623
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 121712808279603011
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 14638681661117375997
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 1.55707633
            Y: -156.828842
            Z: -167.290237
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 3.59764
            Y: 3.59764028
            Z: 2.81465125
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12088767627401407623
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8063868133702323256
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 10019167584247202996
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: 1.55707633
            Y: -156.828842
            Z: -20.2163334
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 4.6706953
            Y: 4.67069626
            Z: 4.36308098
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13416422915512117762
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13372972268553014344
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 6722906654449693273
        Name: "Cone - Truncated Concave"
        Transform {
          Location {
            X: 1.55712891
            Y: -156.828949
            Z: -335.749939
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999969
          }
          Scale {
            X: 2.56036496
            Y: 2.56036854
            Z: -0.803551674
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13416422915512117762
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2427234873479672713
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 5327281362337927046
        Name: "Cylinder"
        Transform {
          Location {
            X: 1.55712891
            Y: -156.828949
            Z: -346.107361
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 2.56036496
            Y: 2.56036901
            Z: -0.200414151
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13416422915512117762
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.277933
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.126696542
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 2992642934231776897
        Name: "Pipe - Half"
        Transform {
          Location {
            X: 1.55707633
            Y: -335.529755
            Z: -136.703415
          }
          Rotation {
            Pitch: 74.1714325
            Yaw: -89.9998627
            Roll: -89.9998627
          }
          Scale {
            X: 2.01202917
            Y: 2.01202965
            Z: 0.258889049
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13416422915512117762
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7516257627012008757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 14849348325599666303
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 1.55761719
            Y: -156.468781
            Z: -49.8519897
          }
          Rotation {
          }
          Scale {
            X: 3.79638696
            Y: 3.79639316
            Z: -0.0430696383
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 415876750987675716
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.26
              G: 0.108476825
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9215348365866351568
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 10756935287306383508
        Name: "Smoke Volume VFX"
        Transform {
          Location {
            X: -10.8991661
            Y: -216.713165
            Z: 33.4598656
          }
          Rotation {
            Roll: 24.4161625
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14087904464582683385
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.822
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.732694
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 2.51620865
          }
          Overrides {
            Name: "bp:Life"
            Float: 3.20487738
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
            Id: 619619708305096280
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
        Id: 1712901044202129615
        Name: "Basic Water Splash VFX"
        Transform {
          Location {
            Z: 203.018768
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
        UnregisteredParameters {
          Overrides {
            Name: "bp:Looping"
            Bool: true
          }
          Overrides {
            Name: "bp:Loop Duration"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1.4
              G: 0.513333321
              A: 1
            }
          }
          Overrides {
            Name: "bp:Gravity"
            Float: -5.75630713
          }
          Overrides {
            Name: "bp:Enable Drops"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
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
            Id: 5085749347974718351
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 17375634014022261724
        Name: "IK Pelvis"
        Transform {
          Location {
            X: -26.5938721
            Z: 84.5952835
          }
          Rotation {
            Pitch: 45.7145615
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5509996473290532729
        Name: "IK Left Hand"
        Transform {
          Location {
            X: -41.7868042
            Y: -41.6811218
            Z: 113.47126
          }
          Rotation {
            Pitch: -8.03613281
            Yaw: 22.6349068
            Roll: 85.6001205
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -18.9549675
            Y: 5.45449781
            Z: 12.279541
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3374622660952040916
        Name: "IK Right Hand"
        Transform {
          Location {
            X: -33.7633057
            Y: 67.8858185
            Z: 118.442276
          }
          Rotation {
            Pitch: 2.9267633
            Yaw: -15.0342407
            Roll: -68.557251
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
        ChildIds: 239944074559695103
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -25.1681976
            Y: -6.97633839
            Z: 6.0024972
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 239944074559695103
        Name: "Group"
        Transform {
          Location {
            X: 13.1713047
            Y: 0.964163303
            Z: 2.74307895
          }
          Rotation {
            Pitch: -8.67196655
            Yaw: -12.4360046
            Roll: 42.2308159
          }
          Scale {
            X: 0.416739762
            Y: 0.416739762
            Z: 0.416739762
          }
        }
        ParentId: 3374622660952040916
        ChildIds: 1334931365562246196
        ChildIds: 8830671971747665869
        ChildIds: 2114463787713308957
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
        Id: 1334931365562246196
        Name: "TeabagString"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 3.99999762
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 239944074559695103
        ChildIds: 8455920066829250876
        ChildIds: 14337460910833625174
        ChildIds: 297980385599855851
        ChildIds: 7012218832264161408
        ChildIds: 16938180333177320572
        ChildIds: 16867230241804302377
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
        Id: 8455920066829250876
        Name: "Cylinder"
        Transform {
          Location {
            X: -3.72141
            Y: 9.82504749
            Z: -10.7301512
          }
          Rotation {
            Pitch: 0.750685573
            Yaw: 27.448473
            Roll: 138.032013
          }
          Scale {
            X: 0.058983773
            Y: 0.0589859113
            Z: 0.392148226
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.95221615
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 14337460910833625174
        Name: "Cylinder"
        Transform {
          Location {
            X: -9.50925732
            Y: 21.8905315
            Z: -43.1725273
          }
          Rotation {
            Pitch: 0.750685573
            Yaw: 27.4480076
            Roll: 175.436401
          }
          Scale {
            X: 0.058983773
            Y: 0.0589859113
            Z: 0.392148226
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.95221615
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 297980385599855851
        Name: "Cylinder"
        Transform {
          Location {
            X: -6.97581577
            Y: 15.7096205
            Z: -76.5025177
          }
          Rotation {
            Pitch: -4.16741943
            Yaw: 27.8823204
            Roll: -152.880341
          }
          Scale {
            X: 0.058983773
            Y: 0.0589859113
            Z: 0.392148226
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.95221615
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 7012218832264161408
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.567013621
            Y: -3.47488546
            Z: -108.130676
          }
          Rotation {
            Pitch: -4.16723633
            Yaw: 27.8821125
            Roll: -140.837936
          }
          Scale {
            X: 0.058983773
            Y: 0.0589859113
            Z: 0.392148226
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.95221615
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 16938180333177320572
        Name: "Cylinder"
        Transform {
          Location {
            X: 10.798912
            Y: -28.2279758
            Z: -157.103073
          }
          Rotation {
            Pitch: -2.42379761
            Yaw: 28.4304218
            Roll: -157.906418
          }
          Scale {
            X: 0.0589825809
            Y: 0.0589850843
            Z: 0.773577511
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.27742457
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 16867230241804302377
        Name: "Cube - Chamfered Large"
        Transform {
          Location {
            X: 17.4284172
            Y: -50.0624504
            Z: -212.391556
          }
          Rotation {
            Pitch: -3.25408936
            Yaw: -169.258667
            Roll: 156.71106
          }
          Scale {
            X: 0.0828069448
            Y: 0.594143331
            Z: 0.821486294
          }
        }
        ParentId: 1334931365562246196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.4690094
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 15.0372295
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 3555083525931093615
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 8830671971747665869
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 57.9376
            Y: -148.051315
            Z: -140.311539
          }
          Rotation {
            Pitch: 43.0820274
            Yaw: -53.1008453
            Roll: 4.93071127
          }
          Scale {
            X: 0.770633757
            Y: 1.25921249
            Z: 1.25921249
          }
        }
        ParentId: 239944074559695103
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11068422679542216101
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.4690094
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 15.0372295
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1.5
              G: 1.37527156
              B: 1.06199992
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2259806603074275908
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 2114463787713308957
        Name: "Frame Large Corner - Neon"
        Transform {
          Location {
            X: 60.8827286
            Y: -55.3577728
            Z: -64.0117111
          }
          Rotation {
            Pitch: -15.309042
            Yaw: 97.4827805
            Roll: -1.8092041
          }
          Scale {
            X: 0.865230858
            Y: 1.80015731
            Z: 1.27570713
          }
        }
        ParentId: 239944074559695103
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.4690094
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 15.0372295
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.86046356
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2566336703933164028
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 11.0493097
          }
          Overrides {
            Name: "ma:Font_Neon:id"
            AssetReference {
              Id: 3090596827184957478
            }
          }
          Overrides {
            Name: "ma:Font_Neon:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font_Neon:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font_Neon:vtile"
            Float: 2.9822731
          }
          Overrides {
            Name: "ma:Font_Neon:utile"
            Float: 64
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13940011785104647059
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
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
        Id: 10870005163427652099
        Name: "IK Left Foot"
        Transform {
          Location {
            X: 76.7817383
            Y: -23.9539719
            Z: 124.120697
          }
          Rotation {
            Pitch: 117.216049
            Yaw: -130.783707
            Roll: -123.053894
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -10.186924
            Z: 37.4830971
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15636677438416275960
        Name: "IK Right Foot"
        Transform {
          Location {
            X: 69.2699
            Y: -24.915947
            Z: 131.59967
          }
          Rotation {
            Pitch: 92.1771851
            Yaw: -12.6579895
            Roll: 12.1008148
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 2.5026
            Z: 37.4830971
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13884623602836825559
        Name: "IK Right Hand Target"
        Transform {
          Location {
            X: -33.7633057
            Y: 67.8858185
            Z: 128.94635
          }
          Rotation {
            Pitch: 2.9267633
            Yaw: -15.0342407
            Roll: -68.557251
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10645080693592162961
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -25.1681976
            Y: -6.97633839
            Z: 6.0024972
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 121712808279603011
      Name: "Cone - Truncated Hollow Wide Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_006"
      }
    }
    Assets {
      Id: 12088767627401407623
      Name: "Metal Painted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_painted_new_001_uv"
      }
    }
    Assets {
      Id: 8063868133702323256
      Name: "Sphere - Half Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_002"
      }
    }
    Assets {
      Id: 13372972268553014344
      Name: "Ring - Beveled"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_001"
      }
    }
    Assets {
      Id: 13416422915512117762
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 2427234873479672713
      Name: "Cone - Truncated Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_concave_001"
      }
    }
    Assets {
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 7516257627012008757
      Name: "Pipe - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_001"
      }
    }
    Assets {
      Id: 9215348365866351568
      Name: "Cylinder - Rounded Small"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_003"
      }
    }
    Assets {
      Id: 619619708305096280
      Name: "Smoke Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_volume_vfx"
      }
    }
    Assets {
      Id: 5085749347974718351
      Name: "Basic Water Splash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_watersplash"
      }
    }
    Assets {
      Id: 3090596827184957478
      Name: "Rope"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rope_001"
      }
    }
    Assets {
      Id: 2566336703933164028
      Name: "Food Corn 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_food_generic_corn_001_uv"
      }
    }
    Assets {
      Id: 3555083525931093615
      Name: "Cube - Chamfered Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_chamfer"
      }
    }
    Assets {
      Id: 2259806603074275908
      Name: "Fantasy Sack Tied"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_sack_002_ref"
      }
    }
    Assets {
      Id: 13940011785104647059
      Name: "Frame Large Corner - Neon"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_Neon6_Corner"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
