Assets {
  Id: 13846212103492964865
  Name: "Anime Bicycle - Vehicle"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11008435855664675570
      Objects {
        Id: 11008435855664675570
        Name: "Anime Bicycle - Vehicle"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3790867263245641302
        ChildIds: 86253479928002975
        ChildIds: 12294344361213190139
        WantsNetworking: true
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
        Vehicle {
          DriverPosition {
            X: -30
            Z: 180
          }
          DriverRotation {
            Pitch: -20
          }
          DriverPose: "unarmed_sit_car_low"
          EnterTrigger {
            SubObjectId: 86253479928002975
          }
          Camera {
            SubObjectId: 11622482299277351771
          }
          Mass: 1300
          PhysicsBodyScale {
            X: 1.8
            Y: 1
            Z: 0.3
          }
          IsDriverAttached: true
          ExitBinding {
            Value: "mc:egameaction:extraaction_43"
          }
          PhysicsBodyOffset {
            X: -40
            Z: 30
          }
          MaxSpeed: 1600
          AccelerationRate: 140
          DecelerationRate: 15
          BrakeStrength: 6
          TireFriction: 6
          CenterOfMassOFfset {
            X: -20
            Z: 15
          }
          GravityScale: 1.9
          CoastBrakeStrength: 0.1
          DamageSettings {
            StartImmortal: true
            DestroyOnDeathClientTemplateId {
            }
            DestroyOnDeathNetworkedTemplateId {
            }
          }
          CanExit: true
          FourWheeledVehicle {
            FrontLeftWheel {
              SubObjectId: 825336694978048529
            }
            FrontRightWheel {
            }
            RearLeftWheel {
              SelfId: 841534158063459245
            }
            RearRightWheel {
            }
            HandbrakeBinding {
              Value: "mc:egameaction:extraaction_27"
            }
            FrontLeftWheelRadius: 38
            FrontRightWheelRadius: 38
            RearLeftWheelRadius: 38
            RearRightWheelRadius: 38
            FrontLeftWheelWidth: 35
            FrontRightWheelWidth: 35
            RearLeftWheelWidth: 35
            RearRightWheelWidth: 35
            FrontLeftWheelOffset {
              X: 22.0495
              Z: 34.5172195
            }
            FrontRightWheelOffset {
              X: 22.0495
              Z: 34.5172195
            }
            RearLeftWheelOffset {
              X: -105.528
              Y: -35
              Z: 38.3704643
            }
            RearRightWheelOffset {
              X: -105.528168
              Y: 35
              Z: 38.3704643
            }
            TurningRadius: 400
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3790867263245641302
        Name: "BicycleServer"
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
        ParentId: 11008435855664675570
        UnregisteredParameters {
          Overrides {
            Name: "cs:Vehicle"
            ObjectReference {
              SubObjectId: 11008435855664675570
            }
          }
          Overrides {
            Name: "cs:SpeedModifier"
            Float: 0
          }
          Overrides {
            Name: "cs:SpeedModifier:isrep"
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
        Script {
          ScriptAsset {
            Id: 14030544435591176575
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 86253479928002975
        Name: "Enter Trigger"
        Transform {
          Location {
            X: -50.1880188
            Z: 79.2020569
          }
          Rotation {
          }
          Scale {
            X: 3.1249516
            Y: 1.2386328
            Z: 1.53921616
          }
        }
        ParentId: 11008435855664675570
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
          Interactable: true
          InteractionLabel: "Ride Bicycle"
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
        Id: 12294344361213190139
        Name: "ClientContext"
        Transform {
          Location {
            Z: 4.04603195
          }
          Rotation {
            Pitch: 1.31617737
          }
          Scale {
            X: 1.1513679
            Y: 1.1513679
            Z: 1.1513679
          }
        }
        ParentId: 11008435855664675570
        ChildIds: 11622482299277351771
        ChildIds: 4521910537423065838
        ChildIds: 825336694978048529
        ChildIds: 6302730947406765136
        ChildIds: 13204726398294267608
        ChildIds: 9774410421970288523
        ChildIds: 5910572317036039563
        ChildIds: 7325111473802104783
        ChildIds: 13541604156792209194
        ChildIds: 11933220631202071324
        ChildIds: 15859489058320279153
        ChildIds: 11940265838851572959
        ChildIds: 16542985017779731413
        ChildIds: 11465292142110682725
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
        Id: 11622482299277351771
        Name: "Camera"
        Transform {
          Location {
            X: -171.061752
            Z: 123.793602
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
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
        Camera {
          AttachToLocalPlayer: true
          InitialDistance: 1000
          IsDistanceAdjustable: true
          MinDistance: 500
          MaxDistance: 2000
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:lookangle"
          }
          MinPitch: -89
          MaxPitch: 89
          IsYawLimited: true
          DoesPositionOffsetSpring: true
          UseAsAudioListener: true
          IsCameraCollisionEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4521910537423065838
        Name: "BicycleIKClient"
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
        ParentId: 12294344361213190139
        UnregisteredParameters {
          Overrides {
            Name: "cs:Vehicle"
            ObjectReference {
              SubObjectId: 11008435855664675570
            }
          }
          Overrides {
            Name: "cs:IKAnchor_hand_left"
            ObjectReference {
              SubObjectId: 3250196649872111702
            }
          }
          Overrides {
            Name: "cs:IKAnchor_hand_right"
            ObjectReference {
              SubObjectId: 15179966780040751682
            }
          }
          Overrides {
            Name: "cs:IKAnchor_hips"
            ObjectReference {
              SubObjectId: 7145807676637460338
            }
          }
          Overrides {
            Name: "cs:IKAnchor_foot_left"
            ObjectReference {
              SubObjectId: 14550503524026680694
            }
          }
          Overrides {
            Name: "cs:IKAnchor_foot_right"
            ObjectReference {
              SubObjectId: 11656041683826030708
            }
          }
          Overrides {
            Name: "cs:BicycleServer"
            ObjectReference {
              SubObjectId: 3790867263245641302
            }
          }
          Overrides {
            Name: "cs:crank"
            ObjectReference {
              SubObjectId: 13541604156792209194
            }
          }
          Overrides {
            Name: "cs:idle_locator_left_foot"
            ObjectReference {
              SubObjectId: 11465292142110682725
            }
          }
          Overrides {
            Name: "cs:idle_locator_hips"
            ObjectReference {
              SubObjectId: 9774410421970288523
            }
          }
          Overrides {
            Name: "cs:active_locator_left_foot"
            ObjectReference {
              SubObjectId: 1153221217728699170
            }
          }
          Overrides {
            Name: "cs:active_locator_hips"
            ObjectReference {
              SubObjectId: 10164847356952528423
            }
          }
          Overrides {
            Name: "cs:HipRotation"
            ObjectReference {
              SubObjectId: 5910572317036039563
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
            Id: 1491633377731438938
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 825336694978048529
        Name: "FrontWheelProxy"
        Transform {
          Location {
            X: 22.0495148
            Y: 0.08984375
            Z: 34.5172195
          }
          Rotation {
            Yaw: 2.73207388e-05
          }
          Scale {
            X: 0.24823676
            Y: 0.24823676
            Z: 0.24823676
          }
        }
        ParentId: 12294344361213190139
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
        Id: 6302730947406765136
        Name: "frame"
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
        ParentId: 12294344361213190139
        ChildIds: 16118857658790312436
        ChildIds: 14592297299525993773
        ChildIds: 6092668463972454538
        ChildIds: 6906131151498400195
        ChildIds: 7662258452956580227
        ChildIds: 14845127266700749343
        ChildIds: 7715450471807824603
        ChildIds: 16656743831657854435
        ChildIds: 9677878455024072766
        ChildIds: 9694716950588933437
        ChildIds: 10720998486960437188
        ChildIds: 6773733755126031683
        ChildIds: 12826748145552573106
        ChildIds: 17889391946671839612
        ChildIds: 2006283565649958453
        ChildIds: 17650093993271633276
        ChildIds: 5804261235022055830
        ChildIds: 15096630082271030857
        ChildIds: 2435893211087990917
        ChildIds: 4193406036241701065
        ChildIds: 8665545479943145359
        ChildIds: 14924881473655786368
        ChildIds: 2491419915168007830
        ChildIds: 10143093153319402198
        ChildIds: 7894541187073423048
        ChildIds: 13159794270607315317
        ChildIds: 9929132357650852638
        ChildIds: 3400755118446780858
        ChildIds: 10048054978512629326
        ChildIds: 3060804524397121177
        ChildIds: 1572542332273941080
        ChildIds: 10199474829286795656
        ChildIds: 5253958839673304629
        ChildIds: 15857411151032206595
        ChildIds: 5480596246588903249
        ChildIds: 2342933025332741921
        ChildIds: 11891995800741302503
        ChildIds: 5260909154295913230
        ChildIds: 7175604992143150632
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
          Model {
            AggressiveMerge: true
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
        Id: 16118857658790312436
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -27.727869
            Y: 0.0798345581
            Z: 83.8696671
          }
          Rotation {
            Pitch: -83.8544769
            Yaw: 5.46409938e-05
            Roll: -179.999756
          }
          Scale {
            X: 0.064020291
            Y: 0.0640315562
            Z: 0.692843318
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14592297299525993773
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -25.6110783
            Y: 0.0799571425
            Z: 61.1674232
          }
          Rotation {
            Pitch: -52.2455978
            Roll: -179.999985
          }
          Scale {
            X: 0.0640198812
            Y: 0.0640317947
            Z: 0.827398479
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6092668463972454538
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -57.7798233
            Y: 0.0799571425
            Z: 60.2779045
          }
          Rotation {
            Pitch: -9.06738281
            Yaw: -179.999954
            Roll: -6.18394116e-13
          }
          Scale {
            X: 0.0668591186
            Y: 0.066871725
            Z: 0.524023294
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6906131151498400195
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -60.9592438
            Y: -0.154722527
            Z: 81.9275818
          }
          Rotation {
            Pitch: -9.11723614
            Yaw: -179.33783
            Roll: -0.615173
          }
          Scale {
            X: 0.048680719
            Y: 0.0486899428
            Z: 0.429910094
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7662258452956580227
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.2120132
            Y: -3.23806715
            Z: 78.5574875
          }
          Rotation {
            Pitch: -52.9365501
            Yaw: 29.8449402
            Roll: -179.999
          }
          Scale {
            X: 0.0551886037
            Y: 0.0551994
            Z: 0.123249471
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14845127266700749343
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.2120132
            Y: 3.46344018
            Z: 78.5574875
          }
          Rotation {
            Pitch: -52.9360313
            Yaw: -29.8449497
            Roll: -179.999
          }
          Scale {
            X: 0.0551886037
            Y: 0.0551994
            Z: 0.123249471
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7715450471807824603
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -71.0723648
            Y: 0.0839230269
            Z: 74.8473816
          }
          Rotation {
            Pitch: -90
            Yaw: -7.12502289
            Roll: -81.8519897
          }
          Scale {
            X: 0.049086649
            Y: 0.0490957946
            Z: 0.201522693
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16656743831657854435
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.5198288
            Y: -8.22537327
            Z: 57.2236176
          }
          Rotation {
            Pitch: -44.8556976
            Yaw: 0.0973576605
            Roll: -178.219727
          }
          Scale {
            X: 0.0362211205
            Y: 0.0362279825
            Z: 0.534472644
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9677878455024072766
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.5383224
            Y: 10.0631695
            Z: 56.9612122
          }
          Rotation {
            Pitch: -44.3624039
            Yaw: 7.45487118
            Roll: 171.180161
          }
          Scale {
            X: 0.0362211205
            Y: 0.036227975
            Z: 0.534472644
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9694716950588933437
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.7552719
            Y: 9.4597435
            Z: 36.8922
          }
          Rotation {
            Pitch: -84.0456848
            Yaw: 116.192429
            Roll: 61.6791306
          }
          Scale {
            X: 0.0362211429
            Y: 0.0362281576
            Z: 0.477023363
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10720998486960437188
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.3952484
            Y: -9.38645458
            Z: 37.178772
          }
          Rotation {
            Pitch: -83.9374695
            Yaw: -117.872147
            Roll: 118.149696
          }
          Scale {
            X: 0.0362211429
            Y: 0.0362281576
            Z: 0.477023363
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6773733755126031683
        Name: "Heart - Polished"
        Transform {
          Location {
            X: -65.7221756
            Y: -6.62637422e-06
            Z: 101.806824
          }
          Rotation {
            Yaw: -89.9999924
            Roll: 172.228821
          }
          Scale {
            X: 0.30513376
            Y: 0.340287149
            Z: 0.319218963
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15662520391385216232
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12826748145552573106
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -53.7447548
            Y: -0.424561739
            Z: 38.8422623
          }
          Rotation {
            Pitch: -90
            Yaw: -14.0362635
            Roll: -72.740387
          }
          Scale {
            X: 0.0462854318
            Y: 0.0462941714
            Z: 0.226646975
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17889391946671839612
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -53.7237
            Y: -0.424561739
            Z: 39.7585
          }
          Rotation {
            Pitch: -90
            Roll: -86.7762146
          }
          Scale {
            X: 0.0462854318
            Y: 0.0462941416
            Z: 0.226646975
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2006283565649958453
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.3238525
            Y: -9.38645458
            Z: 38.0924759
          }
          Rotation {
            Pitch: -83.9375305
            Yaw: -117.872864
            Roll: 118.15049
          }
          Scale {
            X: 0.0362211429
            Y: 0.0362281352
            Z: 0.477022946
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17650093993271633276
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.683754
            Y: 9.4597435
            Z: 37.8058777
          }
          Rotation {
            Pitch: -84.0454712
            Yaw: 116.19072
            Roll: 61.6801224
          }
          Scale {
            X: 0.0362211429
            Y: 0.0362281352
            Z: 0.477022946
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5804261235022055830
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.5172729
            Y: 10.0631695
            Z: 57.8774567
          }
          Rotation {
            Pitch: -44.3623886
            Yaw: 7.45488214
            Roll: 171.180099
          }
          Scale {
            X: 0.0362211056
            Y: 0.0362279564
            Z: 0.534472644
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15096630082271030857
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.4987793
            Y: -8.22537327
            Z: 58.1398811
          }
          Rotation {
            Pitch: -44.8556976
            Yaw: 0.0973577276
            Roll: -178.219727
          }
          Scale {
            X: 0.0362211056
            Y: 0.0362279825
            Z: 0.534472644
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2435893211087990917
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -71.0513077
            Y: 0.0839230269
            Z: 75.7636
          }
          Rotation {
            Pitch: -90
            Roll: -90
          }
          Scale {
            X: 0.049086649
            Y: 0.0490957946
            Z: 0.201522693
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4193406036241701065
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.1909637
            Y: 3.46344018
            Z: 79.4737244
          }
          Rotation {
            Pitch: -52.936
            Yaw: -29.8449268
            Roll: -179.999
          }
          Scale {
            X: 0.0551886037
            Y: 0.0551993474
            Z: 0.123249397
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8665545479943145359
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.1909637
            Y: -3.23806715
            Z: 79.4737244
          }
          Rotation {
            Pitch: -52.936512
            Yaw: 29.8449135
            Roll: -179.999
          }
          Scale {
            X: 0.0551886037
            Y: 0.0551993474
            Z: 0.123249397
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14924881473655786368
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -60.9381905
            Y: -0.154722527
            Z: 82.8438187
          }
          Rotation {
            Pitch: -9.11724377
            Yaw: -179.33783
            Roll: -0.615173161
          }
          Scale {
            X: 0.048680719
            Y: 0.0486899428
            Z: 0.429910094
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2491419915168007830
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -57.75877
            Y: 0.0799571425
            Z: 61.1941223
          }
          Rotation {
            Pitch: -9.06737614
            Yaw: -179.999954
            Roll: -4.12262726e-13
          }
          Scale {
            X: 0.0668591186
            Y: 0.066871725
            Z: 0.524023235
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10143093153319402198
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -25.5900249
            Y: 0.0799571425
            Z: 62.0837135
          }
          Rotation {
            Pitch: -52.2455902
            Roll: -179.999954
          }
          Scale {
            X: 0.0640198812
            Y: 0.0640317947
            Z: 0.827398419
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7894541187073423048
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -27.7068195
            Y: 0.0798345581
            Z: 84.7859268
          }
          Rotation {
            Pitch: -83.8543472
            Yaw: 5.46406882e-05
            Roll: -179.999756
          }
          Scale {
            X: 0.064020291
            Y: 0.0640315562
            Z: 0.692843318
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13159794270607315317
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -27.9901485
            Y: 0.0798343271
            Z: 86.3053207
          }
          Rotation {
            Pitch: -83.8544312
            Yaw: 5.46405972e-05
            Roll: -179.999771
          }
          Scale {
            X: 0.0353623778
            Y: 0.053524103
            Z: 0.692843258
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9929132357650852638
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -26.745409
            Y: 0.0799571425
            Z: 62.6321106
          }
          Rotation {
            Pitch: -52.245575
            Yaw: 2.65964681e-12
            Roll: -179.999954
          }
          Scale {
            X: 0.0354828276
            Y: 0.0650119632
            Z: 0.827398777
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3400755118446780858
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.1910629
            Y: -3.23806715
            Z: 80.5857391
          }
          Rotation {
            Pitch: -52.9364929
            Yaw: 29.8448963
            Roll: -179.999
          }
          Scale {
            X: 0.0427148491
            Y: 0.0289588887
            Z: 0.115991846
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10048054978512629326
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -66.1910629
            Y: 3.46344018
            Z: 80.5857391
          }
          Rotation {
            Pitch: -52.9359436
            Yaw: -29.8449097
            Roll: -179.999
          }
          Scale {
            X: 0.0427148491
            Y: 0.0289588887
            Z: 0.115991846
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3060804524397121177
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -71.4917831
            Y: 0.0839230269
            Z: 76.5169449
          }
          Rotation {
            Pitch: -42.0435791
            Roll: -90
          }
          Scale {
            X: 0.0379920751
            Y: 0.0257568229
            Z: 0.189656019
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1572542332273941080
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.7872238
            Y: 10.0627127
            Z: 58.1460304
          }
          Rotation {
            Pitch: -44.3623657
            Yaw: 7.45489597
            Roll: 171.180069
          }
          Scale {
            X: 0.0312440768
            Y: 0.0306432229
            Z: 0.507938921
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10199474829286795656
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -88.7687683
            Y: -8.22583199
            Z: 58.4084473
          }
          Rotation {
            Pitch: -44.8557129
            Yaw: 0.0973578095
            Roll: -178.219727
          }
          Scale {
            X: 0.0312441159
            Y: 0.0306432378
            Z: 0.519437551
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5253958839673304629
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -53.7237473
            Y: -0.424561799
            Z: 40.4402657
          }
          Rotation {
            Pitch: -90
            Yaw: -0.183654785
            Roll: -86.5918884
          }
          Scale {
            X: 0.0373822525
            Y: 0.0283013955
            Z: 0.226646975
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.489000022
              G: 0.489000022
              B: 0.489000022
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15857411151032206595
        Name: "Heart - Polished"
        Transform {
          Location {
            X: -65.8124619
            Y: -6.66408187e-06
            Z: 102.468216
          }
          Rotation {
            Yaw: -90
            Roll: 172.22879
          }
          Scale {
            X: 0.29894945
            Y: 0.333390325
            Z: 0.312749177
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.016
              G: 0.016
              B: 0.016
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15662520391385216232
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5480596246588903249
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.3191528
            Y: -9.39614677
            Z: 38.1960297
          }
          Rotation {
            Pitch: -83.937439
            Yaw: -117.871109
            Roll: 118.148758
          }
          Scale {
            X: 0.025807552
            Y: 0.0431448519
            Z: 0.477023
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2342933025332741921
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -83.6787643
            Y: 9.45005703
            Z: 37.9094505
          }
          Rotation {
            Pitch: -84.0456238
            Yaw: 116.191513
            Roll: 61.6796112
          }
          Scale {
            X: 0.025807552
            Y: 0.0431448519
            Z: 0.477023
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11891995800741302503
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -60.1516724
            Y: 0.27713725
            Z: 37.4762306
          }
          Rotation {
            Pitch: -79.7262268
            Roll: -88.9751
          }
          Scale {
            X: 0.0379920751
            Y: 0.0257568229
            Z: 0.189656019
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5260909154295913230
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -59.9534111
            Y: 0.27713725
            Z: 36.382164
          }
          Rotation {
            Pitch: -79.7266235
            Roll: -88.975708
          }
          Scale {
            X: 0.049086649
            Y: 0.0490957946
            Z: 0.201522693
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7175604992143150632
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -59.8104439
            Y: 0.27713725
            Z: 35.4769287
          }
          Rotation {
            Pitch: -79.7264709
            Roll: -88.9764404
          }
          Scale {
            X: 0.049086649
            Y: 0.0490957946
            Z: 0.201522693
          }
        }
        ParentId: 6302730947406765136
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13204726398294267608
        Name: "HandleBarGrp"
        Transform {
          Location {
            X: 4.47531128
            Y: 0.0242004395
            Z: 90.4847183
          }
          Rotation {
            Pitch: 17.6004257
            Yaw: 0.14847137
          }
          Scale {
            X: 0.210849762
            Y: 0.210849762
            Z: 0.210849762
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 5040384288880293852
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
        Id: 5040384288880293852
        Name: "HandleBarSteeringGrp"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 6.83018879e-06
            Roll: 1.44407727e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13204726398294267608
        ChildIds: 8364899003631710323
        ChildIds: 15179966780040751682
        ChildIds: 3250196649872111702
        ChildIds: 15732198886877037338
        ChildIds: 1993774673627776447
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
        Id: 8364899003631710323
        Name: "HandlebarSteeringClient"
        Transform {
          Location {
            X: -135.612549
            Y: 0.0106892539
            Z: -409.747589
          }
          Rotation {
            Pitch: -12.1867981
            Yaw: -0.151612163
            Roll: 0.0311697293
          }
          Scale {
            X: 4.74271345
            Y: 4.74271345
            Z: 4.74271345
          }
        }
        ParentId: 5040384288880293852
        UnregisteredParameters {
          Overrides {
            Name: "cs:FrontWheelProxy"
            ObjectReference {
              SubObjectId: 825336694978048529
            }
          }
          Overrides {
            Name: "cs:FrontWheelGeo"
            ObjectReference {
              SubObjectId: 15732198886877037338
            }
          }
          Overrides {
            Name: "cs:BicycleServer"
            ObjectReference {
              SubObjectId: 3790867263245641302
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
            Id: 17306793440717974963
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15179966780040751682
        Name: "IK Anchor_hand_right"
        Transform {
          Location {
            X: 51.8596344
            Y: 149.767502
            Z: 147.435349
          }
          Rotation {
            Pitch: -45.1756287
            Yaw: 10.9072227
            Roll: -92.7217712
          }
          Scale {
            X: 4.74271297
            Y: 4.74271393
            Z: 4.74271345
          }
        }
        ParentId: 5040384288880293852
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
        IKAnchor {
          AimOffset {
            X: -35
            Y: -15
            Z: -40
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
        Id: 3250196649872111702
        Name: "IK Anchor_hand_left"
        Transform {
          Location {
            X: 51.8594589
            Y: -150.231705
            Z: 147.435486
          }
          Rotation {
            Pitch: -45.1782532
            Yaw: -10.9074707
            Roll: 92.7218323
          }
          Scale {
            X: 4.74271345
            Y: 4.74271393
            Z: 4.74271345
          }
        }
        ParentId: 5040384288880293852
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
        IKAnchor {
          AimOffset {
            X: -35
            Y: 15
            Z: -40
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
        Id: 15732198886877037338
        Name: "FrontWheelGeo"
        Transform {
          Location {
            X: -0.814113855
            Y: 0.095204331
            Z: -278.215363
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5040384288880293852
        ChildIds: 18333889711821933240
        ChildIds: 6863578406165011947
        ChildIds: 15147656374415940364
        ChildIds: 3905522207140514008
        ChildIds: 17709029190891082381
        ChildIds: 13397733919619687433
        ChildIds: 3555779700745924431
        ChildIds: 15931150040680987177
        ChildIds: 17714132073888760913
        ChildIds: 8088464987879344404
        ChildIds: 3540171825342116403
        ChildIds: 997424993964487766
        ChildIds: 9561317278595310086
        ChildIds: 7633879990261846429
        ChildIds: 11122627790418493732
        ChildIds: 1648472956544124113
        ChildIds: 10380955827811891200
        ChildIds: 17758105684277925337
        ChildIds: 11565312954241052543
        ChildIds: 9949844027697800018
        ChildIds: 9116420268869704705
        ChildIds: 14442969695915698385
        ChildIds: 13014560106576250291
        ChildIds: 3302306739796183173
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
          Model {
            AggressiveMerge: true
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
        Id: 18333889711821933240
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -67.4995346
            Yaw: -5.48245287
            Roll: -174.517273
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6863578406165011947
        Name: "Ring"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.57252
            Yaw: -179.999969
            Roll: -89.9998627
          }
          Scale {
            X: 3.73548532
            Y: 3.73562312
            Z: 5.36169291
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.93442106
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15147656374415940364
        Name: "Ring"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.57252
            Yaw: -179.999985
            Roll: -89.9998169
          }
          Scale {
            X: 3.34831643
            Y: 3.34831691
            Z: 4.8059721
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.071
              G: 0.071
              B: 0.071
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3905522207140514008
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -179.999969
            Roll: 7.39179117e-12
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17709029190891082381
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -90
            Yaw: 0.23750706
            Roll: 179.762314
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13397733919619687433
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -42.4001389
            Yaw: 6.81985284e-06
            Roll: -179.999756
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3555779700745924431
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -47.5988159
            Yaw: -179.999954
            Roll: -3.05306385e-05
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15931150040680987177
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: 89.9998169
          }
          Scale {
            X: 0.48837772
            Y: 0.48837778
            Z: 0.254041046
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17714132073888760913
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: 89.9998169
          }
          Scale {
            X: 0.24683468
            Y: 0.246834934
            Z: 0.992211938
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8088464987879344404
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -19.9789371
            Yaw: -1.17721522
            Roll: -177.770218
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3540171825342116403
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -22.3914413
            Yaw: -179.551361
            Roll: -2.26620436
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 997424993964487766
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: -69.9009476
            Yaw: -174.676788
            Roll: -6.10757971
          }
          Scale {
            X: 0.0294329
            Y: 0.0294329
            Z: 2.79857492
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9561317278595310086
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -69.9009399
            Yaw: -174.67688
            Roll: -6.1074872
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7633879990261846429
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -22.391407
            Yaw: -179.551361
            Roll: -2.26620388
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11122627790418493732
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -19.9789371
            Yaw: -1.17721522
            Roll: -177.770218
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1648472956544124113
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -179.999939
            Roll: 89.9998
          }
          Scale {
            X: 0.24683474
            Y: 0.246834978
            Z: 0.992212236
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10380955827811891200
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -179.999939
            Roll: 89.9998
          }
          Scale {
            X: 0.488377541
            Y: 0.488378018
            Z: 0.248071566
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17758105684277925337
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -47.5987816
            Yaw: -179.999954
            Roll: -3.05396643e-05
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11565312954241052543
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -42.4001122
            Yaw: 6.8079944e-06
            Roll: -179.999756
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9949844027697800018
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -90
            Yaw: 0.000109283021
            Roll: 179.999725
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9116420268869704705
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: -179.999969
            Roll: 1.67736081e-09
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14442969695915698385
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40914285
            Y: -0.000258913642
            Z: 4.1118803
          }
          Rotation {
            Pitch: -67.4995
            Yaw: -5.48245192
            Roll: -174.517273
          }
          Scale {
            X: 0.029432904
            Y: 0.029432904
            Z: 2.79857516
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13014560106576250291
        Name: "Ring"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.57252693
            Yaw: -179.999954
            Roll: -89.9998
          }
          Scale {
            X: 3.24567533
            Y: 3.24567628
            Z: 2.76224589
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.269000024
              G: 0.269000024
              B: 0.269000024
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3302306739796183173
        Name: "Ring"
        Transform {
          Location {
            X: -2.27416724e-10
            Y: -9.20709624e-08
            Z: 7.21404048e-11
          }
          Rotation {
            Pitch: 6.57252693
            Yaw: -179.999954
            Roll: -89.9998245
          }
          Scale {
            X: 3.87432313
            Y: 3.87446308
            Z: 4.32243681
          }
        }
        ParentId: 15732198886877037338
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0100000007
              G: 0.0100000007
              B: 0.0100000007
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.93442106
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1993774673627776447
        Name: "FrontSteeringGeo"
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
        ParentId: 5040384288880293852
        ChildIds: 11131423060479058650
        ChildIds: 5045054757937994391
        ChildIds: 12763036347871556855
        ChildIds: 11138267362913685571
        ChildIds: 9453495571833522380
        ChildIds: 11406885987190085794
        ChildIds: 1548944154702742791
        ChildIds: 13568059927786105226
        ChildIds: 8205436680364147825
        ChildIds: 7060442598594748668
        ChildIds: 14738960329750678321
        ChildIds: 15901154529034362254
        ChildIds: 14177129934870533585
        ChildIds: 13705033127922118752
        ChildIds: 8338568828202007355
        ChildIds: 760064270567148764
        ChildIds: 14028766586074943448
        ChildIds: 9661339399199042887
        ChildIds: 14384451629252718200
        ChildIds: 275404737374585576
        ChildIds: 5701626912631193837
        ChildIds: 5850340226157881152
        ChildIds: 12477925426238541913
        ChildIds: 16187661838304314799
        ChildIds: 18210989454773135004
        ChildIds: 2830943390806956186
        ChildIds: 1597844020060463579
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
          Model {
            AggressiveMerge: true
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
        Id: 11131423060479058650
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -0.226214692
            Y: 49.0962105
            Z: -179.213593
          }
          Rotation {
            Pitch: -0.0010381887
            Yaw: 179.85495
            Roll: -0.0304565392
          }
          Scale {
            X: 0.250679284
            Y: 0.250679433
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5045054757937994391
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -0.473858416
            Y: -48.7375526
            Z: -179.16153
          }
          Rotation {
            Pitch: -0.0010381887
            Yaw: 179.85495
            Roll: -0.0304565392
          }
          Scale {
            X: 0.250679284
            Y: 0.250679433
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12763036347871556855
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.29418874
            Y: -0.0324278288
            Z: -55.3763771
          }
          Rotation {
            Pitch: 12.1750507
            Yaw: 179.848373
            Roll: -90.03125
          }
          Scale {
            X: 0.386398166
            Y: 0.326898843
            Z: 1.2492789
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11138267362913685571
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 3.41277482e-05
            Y: 0.0433259718
            Z: 40.3899498
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.291836143
            Y: 0.246899724
            Z: 1.8446039
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9453495571833522380
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 60.0525856
            Y: -2.72487664
            Z: 116.204117
          }
          Rotation {
            Yaw: -3.49019359e-07
            Roll: 89.9999924
          }
          Scale {
            X: 0.229586646
            Y: 0.223506838
            Z: 3.55569649
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11406885987190085794
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 33.9979782
            Y: -0.299864858
            Z: 111.443459
          }
          Rotation {
            Pitch: 0.0301143024
            Yaw: -90.1408844
            Roll: 86.568924
          }
          Scale {
            X: 0.229589432
            Y: 0.223498538
            Z: 0.608429134
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1548944154702742791
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 60.4795036
            Y: 127.823967
            Z: 117.490425
          }
          Rotation {
            Pitch: 12.1867914
            Yaw: -179.999985
            Roll: 90.7384262
          }
          Scale {
            X: 0.310272902
            Y: 0.302056789
            Z: 0.990478635
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.260683984
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.311201692
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13568059927786105226
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 59.6325302
            Y: -134.415436
            Z: 114.820511
          }
          Rotation {
            Pitch: 12.1867914
            Yaw: -179.999985
            Roll: 90.7384262
          }
          Scale {
            X: 0.310272872
            Y: 0.302056789
            Z: 0.990478635
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.260683984
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.311201692
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8205436680364147825
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 61.0416718
            Y: -134.415695
            Z: 118.932419
          }
          Rotation {
            Pitch: 12.1867914
            Yaw: -179.999969
            Roll: 90.7384262
          }
          Scale {
            X: 0.310272872
            Y: 0.302056789
            Z: 0.990478635
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.260683984
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.311201692
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.026
              G: 0.026
              B: 0.026
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
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7060442598594748668
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 61.8886528
            Y: 127.823708
            Z: 121.602333
          }
          Rotation {
            Pitch: 12.1867914
            Yaw: -179.999969
            Roll: 90.7384262
          }
          Scale {
            X: 0.310272902
            Y: 0.302056789
            Z: 0.990478635
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.260683984
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.311201692
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.026
              G: 0.026
              B: 0.026
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
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14738960329750678321
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 35.4071579
            Y: -0.300123662
            Z: 115.555428
          }
          Rotation {
            Pitch: 0.0301143024
            Yaw: -90.1409
            Roll: 86.568924
          }
          Scale {
            X: 0.229589388
            Y: 0.223498538
            Z: 0.608428776
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15901154529034362254
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 61.4617462
            Y: -2.72513437
            Z: 120.316025
          }
          Rotation {
            Yaw: -9.57444854e-07
            Roll: 89.9999847
          }
          Scale {
            X: 0.229586646
            Y: 0.223506838
            Z: 3.55569649
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14177129934870533585
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40920258
            Y: 0.043063
            Z: 44.5018959
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.291836143
            Y: 0.246899724
            Z: 1.8446039
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13705033127922118752
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 2.70333886
            Y: -0.0326866657
            Z: -51.2644653
          }
          Rotation {
            Pitch: 12.1750574
            Yaw: 179.848358
            Roll: -90.03125
          }
          Scale {
            X: 0.386398554
            Y: 0.326898783
            Z: 1.23980665
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8338568828202007355
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.935242772
            Y: -48.7378082
            Z: -175.049576
          }
          Rotation {
            Pitch: -0.00103759766
            Yaw: 179.854935
            Roll: -0.030456543
          }
          Scale {
            X: 0.250679284
            Y: 0.250679433
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 760064270567148764
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.18291569
            Y: 49.0959625
            Z: -175.101715
          }
          Rotation {
            Pitch: -0.0010381887
            Yaw: 179.854935
            Roll: -0.030456543
          }
          Scale {
            X: 0.250679284
            Y: 0.250679433
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14028766586074943448
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.4091922
            Y: -0.00305729499
            Z: 1.40277219
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.37681362
            Y: 0.318791777
            Z: 1.02631903
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.222000018
              G: 0.00466199312
              B: 0.00466199312
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9661339399199042887
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -1.23506379
            Y: 0.0102465823
            Z: 1.40275192
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.37681362
            Y: 0.318791777
            Z: 1.02631903
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.00504399324
              B: 0.00504399324
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14384451629252718200
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 8.63730717
            Y: -0.0462417081
            Z: -45.9316292
          }
          Rotation {
            Pitch: 23.6964722
            Yaw: 179.838272
            Roll: -90.0343323
          }
          Scale {
            X: 0.281863749
            Y: 0.178842619
            Z: 1.20707238
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 275404737374585576
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 4.53405762
            Y: -0.0187587868
            Z: 1.40279806
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.269091338
            Y: 0.322022855
            Z: 1.00304735
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5701626912631193837
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 62.6211281
            Y: -2.7251327
            Z: 121.808205
          }
          Rotation {
            Pitch: 21.2530746
            Yaw: 0.0289242323
            Roll: 90.0582581
          }
          Scale {
            X: 0.178966686
            Y: 0.199267849
            Z: 3.17008448
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.489000022
              G: 0.489000022
              B: 0.489000022
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5850340226157881152
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 1.40920329
            Y: 0.0446383
            Z: 45.9738922
          }
          Rotation {
            Pitch: -0.00030735851
            Yaw: 179.711945
            Roll: 179.93866
          }
          Scale {
            X: 0.288878292
            Y: 0.244397312
            Z: 1.8259083
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.489000022
              G: 0.489000022
              B: 0.489000022
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12477925426238541913
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 35.1580811
            Y: -0.297328621
            Z: 119.71032
          }
          Rotation {
            Pitch: 0.0301143024
            Yaw: -90.1408691
            Roll: 86.568924
          }
          Scale {
            X: 0.125208
            Y: 0.165608376
            Z: 0.450834662
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.489000022
              G: 0.489000022
              B: 0.489000022
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16187661838304314799
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 2.36071229
            Y: 0.0382790826
            Z: 44.5019112
          }
          Rotation {
            Pitch: -0.000305175781
            Yaw: 179.711945
            Roll: 179.938644
          }
          Scale {
            X: 0.226635993
            Y: 0.25807485
            Z: 1.82107913
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.363
              G: 0.363
              B: 0.363
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18210989454773135004
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 3.98544168
            Y: 49.0888481
            Z: -175.101624
          }
          Rotation {
            Pitch: -0.00103759766
            Yaw: 179.854919
            Roll: -0.030456543
          }
          Scale {
            X: 0.250679255
            Y: 0.130660146
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2830943390806956186
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 3.73772788
            Y: -48.7448769
            Z: -175.049469
          }
          Rotation {
            Pitch: -0.00103759766
            Yaw: 179.854919
            Roll: -0.030456543
          }
          Scale {
            X: 0.250679255
            Y: 0.130660146
            Z: 2.49574757
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1597844020060463579
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 3.79285526
            Y: -0.0362214446
            Z: -52.3413696
          }
          Rotation {
            Pitch: 121.052826
            Yaw: -0.129089355
            Roll: 90.0464478
          }
          Scale {
            X: 0.393689126
            Y: 0.214941785
            Z: 1.22817612
          }
        }
        ParentId: 1993774673627776447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.468000025
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9774410421970288523
        Name: "idle_hips_Locator"
        Transform {
          Location {
            X: -30.7201557
            Y: -10.6151142
            Z: 110.800026
          }
          Rotation {
            Pitch: 7.63759899
            Yaw: 8.87704945
            Roll: -6.99572754
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
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
        Id: 5910572317036039563
        Name: "HipRotation"
        Transform {
          Location {
            X: -50
            Z: 99.9999847
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 12147334058657305952
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
        Id: 12147334058657305952
        Name: "HipRotationOffset"
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
        ParentId: 5910572317036039563
        ChildIds: 7354257718459790850
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
        Id: 7354257718459790850
        Name: "HipsConstraint_Locator"
        Transform {
          Location {
            X: -0.999987602
            Y: -2.43312184e-06
            Z: 4
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 12147334058657305952
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
        Id: 7325111473802104783
        Name: "Group"
        Transform {
          Location {
            X: -60.6623421
            Y: -2.95080736e-06
            Z: 101.688423
          }
          Rotation {
            Yaw: -4.78136426e-05
            Roll: 7.15553412e-08
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 7145807676637460338
        ChildIds: 10164847356952528423
        ChildIds: 11235478188490749801
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
        Id: 7145807676637460338
        Name: "IK Anchor_hips"
        Transform {
          Location {
            X: 30.2173595
            Y: -9.89000893
            Z: 2.89334035
          }
          Rotation {
            Pitch: 21.3211098
            Yaw: 9.44991779
            Roll: -4.72184753
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7325111473802104783
        UnregisteredParameters {
          Overrides {
            Name: "cs:hipsRestCurve"
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
        Id: 10164847356952528423
        Name: "active_hips_Locator"
        Transform {
          Location {
            X: 6.47341108
            Y: 0.00058955315
            Z: 31.9064484
          }
          Rotation {
            Pitch: -24.5255127
            Yaw: 0.115013056
            Roll: -0.70501709
          }
          Scale {
            X: 0.999999702
            Y: 0.999999702
            Z: 1
          }
        }
        ParentId: 7325111473802104783
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
        Id: 11235478188490749801
        Name: "PointConstraint"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -56.2499161
            Yaw: -179.999939
            Roll: -174.181732
          }
          Scale {
            X: 0.868532121
            Y: 0.868532121
            Z: 0.868532
          }
        }
        ParentId: 7325111473802104783
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointConstraintTarget"
            ObjectReference {
              SubObjectId: 7354257718459790850
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
        Script {
          ScriptAsset {
            Id: 4518046275169226070
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13541604156792209194
        Name: "crank"
        Transform {
          Location {
            X: -53.7447205
            Y: -0.424560547
            Z: 38.8422661
          }
          Rotation {
            Yaw: -89.9999847
            Roll: -1.50927264e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 6620573120239057559
        ChildIds: 7490419472768874693
        ChildIds: 12127287715338791058
        ChildIds: 16920226369424458093
        ChildIds: 15616471252516462045
        ChildIds: 3508740079851788215
        ChildIds: 8767687053660926747
        ChildIds: 16886749492290769619
        ChildIds: 6468407468442945245
        ChildIds: 8558989442225135382
        ChildIds: 7039399844321473000
        ChildIds: 17178909202045280077
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          Model {
            AggressiveMerge: true
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
        Id: 6620573120239057559
        Name: "Cylinder - Polished"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -90
            Roll: 3.22360945
          }
          Scale {
            X: 0.042374745
            Y: 0.0423827171
            Z: 0.263093233
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7490419472768874693
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -12.2796698
            Y: -1.00823188
            Z: -8.57676506
          }
          Rotation {
            Pitch: -2.38986254
            Yaw: -89.9998779
            Roll: 179.130737
          }
          Scale {
            X: 0.0423748791
            Y: 0.0239010062
            Z: 0.223066404
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12127287715338791058
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 12.6419334
            Y: 0.386650592
            Z: 8.73044872
          }
          Rotation {
            Pitch: -2.38986254
            Yaw: -89.9998779
            Roll: 179.130737
          }
          Scale {
            X: 0.0423747264
            Y: 0.0238260236
            Z: 0.223066404
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16920226369424458093
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -14.0154953
            Y: -1.09728861
            Z: -17.2520962
          }
          Rotation {
            Pitch: -90
            Roll: 3.22360945
          }
          Scale {
            X: 0.0307532102
            Y: 0.0307588875
            Z: 0.0276374817
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15616471252516462045
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 14.6014538
            Y: 0.124955192
            Z: 18.0753803
          }
          Rotation {
            Pitch: -90
            Roll: 3.22336793
          }
          Scale {
            X: 0.0307532102
            Y: 0.0307588875
            Z: 0.0276374817
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3508740079851788215
        Name: "RightFootConstraint_Locator"
        Transform {
          Location {
            X: -14.0722914
            Y: 6.62637422e-06
            Z: -17.2520752
          }
          Rotation {
            Pitch: -90
            Yaw: 7.12502289
            Roll: -97.1271057
          }
          Scale {
            X: 1
            Y: 1.00000024
            Z: 1
          }
        }
        ParentId: 13541604156792209194
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
        Id: 8767687053660926747
        Name: "LeftFootConstraint_Locator"
        Transform {
          Location {
            X: 14
            Y: 0.124968447
            Z: 18.075388
          }
          Rotation {
            Pitch: -90
            Yaw: 5.71059704
            Roll: -95.7122803
          }
          Scale {
            X: 1
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 13541604156792209194
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
        Id: 16886749492290769619
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 14.6014032
            Y: 0.146005526
            Z: 18.9916344
          }
          Rotation {
            Pitch: -90
            Yaw: 8.18023872
            Roll: -4.95675659
          }
          Scale {
            X: 0.0307532102
            Y: 0.0307588875
            Z: 0.0276374817
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6468407468442945245
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -14.0154343
            Y: -1.07623494
            Z: -16.3358459
          }
          Rotation {
            Pitch: -90
            Yaw: -8.29715443
            Roll: 11.5207825
          }
          Scale {
            X: 0.0307532102
            Y: 0.0307588875
            Z: 0.0276374817
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8558989442225135382
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 12.641881
            Y: 0.407702595
            Z: 9.64669418
          }
          Rotation {
            Pitch: -2.38986254
            Yaw: -89.9998779
            Roll: 179.130737
          }
          Scale {
            X: 0.0423747264
            Y: 0.0238260236
            Z: 0.223066404
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7039399844321473000
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -12.2796335
            Y: -0.98718065
            Z: -7.66052
          }
          Rotation {
            Pitch: -2.38986254
            Yaw: -89.9998779
            Roll: 179.130737
          }
          Scale {
            X: 0.0423748791
            Y: 0.0239010062
            Z: 0.223066404
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17178909202045280077
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -1.61776714e-09
            Y: 0.0210513473
            Z: 0.916245461
          }
          Rotation {
            Pitch: -90
            Yaw: -8.29715443
            Roll: 11.5207825
          }
          Scale {
            X: 0.042374745
            Y: 0.0423827171
            Z: 0.263093233
          }
        }
        ParentId: 13541604156792209194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11933220631202071324
        Name: "rightPedal"
        Transform {
          Location {
            X: -54.8420105
            Y: 12.886342
            Z: 21.5901833
          }
          Rotation {
            Pitch: 33.75
            Yaw: 180
          }
          Scale {
            X: 0.210849792
            Y: 0.210849792
            Z: 0.210849762
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 8162087502285506788
        ChildIds: 11656041683826030708
        ChildIds: 11876045198832652882
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
        Id: 8162087502285506788
        Name: "PointConstraint"
        Transform {
          Location {
            X: -20.4989758
            Y: 203.04277
            Z: 143.976212
          }
          Rotation {
            Pitch: -90
            Yaw: 5.35582829
            Roll: -179.537537
          }
          Scale {
            X: 4.1191988
            Y: 4.1191988
            Z: 4.11919832
          }
        }
        ParentId: 11933220631202071324
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointConstraintTarget"
            ObjectReference {
              SubObjectId: 3508740079851788215
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
        Script {
          ScriptAsset {
            Id: 4518046275169226070
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11656041683826030708
        Name: "IK Anchor_foot_right"
        Transform {
          Location {
            X: 59.7558632
            Y: -26.0559483
            Z: 60.0772896
          }
          Rotation {
            Pitch: -13.9240026
            Yaw: -173.763
            Roll: 1.09952573e-07
          }
          Scale {
            X: 4.11919832
            Y: 4.11919832
            Z: 4.11919832
          }
        }
        ParentId: 11933220631202071324
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
        IKAnchor {
          AimOffset {
            X: 75
            Y: -10
            Z: 75
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
        Id: 11876045198832652882
        Name: "MergedModel"
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
        ParentId: 11933220631202071324
        ChildIds: 16539383836745136556
        ChildIds: 18108849742317318788
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
          Model {
            AggressiveMerge: true
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
        Id: 16539383836745136556
        Name: "Cube - Polished"
        Transform {
          Location {
            X: 0.579335392
            Y: -25.2741508
            Z: 3.43659019
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 2.32303355e-05
            Roll: -3.05175672e-05
          }
          Scale {
            X: 0.290508926
            Y: 0.361367047
            Z: 0.050611794
          }
        }
        ParentId: 11876045198832652882
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0440000035
              G: 0.0440000035
              B: 0.0440000035
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
        Id: 18108849742317318788
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.0144690592
            Y: -25.274437
            Z: 2.50212359
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 1.707513e-05
            Roll: -3.07361224e-05
          }
          Scale {
            X: 0.296519488
            Y: 0.368843704
            Z: 0.0516589396
          }
        }
        ParentId: 11876045198832652882
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.013
              G: 0.013
              B: 0.013
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
        Id: 15859489058320279153
        Name: "leftPedal"
        Transform {
          Location {
            X: -53.6197815
            Y: -13.9571714
            Z: 56.9176331
          }
          Rotation {
            Pitch: 33.75
            Yaw: 180
          }
          Scale {
            X: 0.210849792
            Y: 0.210849792
            Z: 0.210849762
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 5051357660839893985
        ChildIds: 1153221217728699170
        ChildIds: 14550503524026680694
        ChildIds: 11070990159631784074
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
        Id: 5051357660839893985
        Name: "PointConstraint"
        Transform {
          Location {
            X: 40.9014969
            Y: 28.498
            Z: 47.6892662
          }
          Rotation {
            Pitch: -90
            Yaw: -15.3762817
            Roll: -158.805481
          }
          Scale {
            X: 4.11919832
            Y: 4.11919832
            Z: 4.11919832
          }
        }
        ParentId: 15859489058320279153
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointConstraintTarget"
            ObjectReference {
              SubObjectId: 8767687053660926747
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
        Script {
          ScriptAsset {
            Id: 4518046275169226070
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1153221217728699170
        Name: "active_locator_left_foot"
        Transform {
          Location {
            X: 59.7557
            Y: 26.055645
            Z: 60.0772095
          }
          Rotation {
            Pitch: -13.9239683
            Yaw: 173.763
            Roll: -2.74881415e-07
          }
          Scale {
            X: 4.11919832
            Y: 4.11919832
            Z: 4.11919832
          }
        }
        ParentId: 15859489058320279153
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
        Id: 14550503524026680694
        Name: "IK Anchor_foot_left"
        Transform {
          Location {
            X: 59.7556686
            Y: 26.0558834
            Z: 60.0772285
          }
          Rotation {
            Pitch: -13.9238863
            Yaw: 173.762894
            Roll: -7.19639283e-05
          }
          Scale {
            X: 4.11919832
            Y: 4.11919832
            Z: 4.11919832
          }
        }
        ParentId: 15859489058320279153
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
        IKAnchor {
          AimOffset {
            X: 75
            Y: 10
            Z: 75
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
        Id: 11070990159631784074
        Name: "MergedModel"
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
        ParentId: 15859489058320279153
        ChildIds: 13802620225867511764
        ChildIds: 4047604491298637123
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
          Model {
            AggressiveMerge: true
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
        Id: 13802620225867511764
        Name: "Cube - Polished"
        Transform {
          Location {
            X: 2.55601382
            Y: 25.8344193
            Z: 2.21545
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 1.5367792e-05
            Roll: -3.5858804e-05
          }
          Scale {
            X: 0.296519488
            Y: 0.368843704
            Z: 0.0516589396
          }
        }
        ParentId: 11070990159631784074
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.013
              G: 0.013
              B: 0.013
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
        Id: 4047604491298637123
        Name: "Cube - Polished"
        Transform {
          Location {
            X: 3.14981842
            Y: 25.834137
            Z: 3.14991689
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 2.32303319e-05
            Roll: -3.05175636e-05
          }
          Scale {
            X: 0.290508926
            Y: 0.361367047
            Z: 0.050611794
          }
        }
        ParentId: 11070990159631784074
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0440000035
              G: 0.0440000035
              B: 0.0440000035
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
        Id: 11940265838851572959
        Name: "RearWheelSpinClient"
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
        ParentId: 12294344361213190139
        UnregisteredParameters {
          Overrides {
            Name: "cs:Bicycle"
            ObjectReference {
              SubObjectId: 11008435855664675570
            }
          }
          Overrides {
            Name: "cs:BicycleServer"
            ObjectReference {
              SubObjectId: 3790867263245641302
            }
          }
          Overrides {
            Name: "cs:RearWheelGeo"
            ObjectReference {
              SubObjectId: 16542985017779731413
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
            Id: 5738070425450960377
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16542985017779731413
        Name: "RearWheelGeo"
        Transform {
          Location {
            X: -105.528412
            Y: -0.0180664062
            Z: 38.3704643
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
        ChildIds: 15430127754128723767
        ChildIds: 638964295574045185
        ChildIds: 13747698925360710927
        ChildIds: 6881954040135238381
        ChildIds: 1408039262731042753
        ChildIds: 5755331399154268669
        ChildIds: 6803814657074226962
        ChildIds: 6963918462038828215
        ChildIds: 17652599050839835702
        ChildIds: 11720893756772518487
        ChildIds: 9202870868763161298
        ChildIds: 6313461244839043665
        ChildIds: 14337077819836596756
        ChildIds: 17080993555260123962
        ChildIds: 15102767336569880869
        ChildIds: 14968274057661656487
        ChildIds: 7957656699011737948
        ChildIds: 14230613393813401218
        ChildIds: 11478795708826837706
        ChildIds: 11258363262992528077
        ChildIds: 1083298402784411548
        ChildIds: 17326724890332924092
        ChildIds: 4329730856379586990
        ChildIds: 1144074369003186571
        ChildIds: 16603206937011723931
        ChildIds: 17230261744344147409
        ChildIds: 2393612749488754355
        ChildIds: 16598039562551562724
        ChildIds: 13130496874662754430
        ChildIds: 71414395146788681
        ChildIds: 16043584011904999
        ChildIds: 3311094296493915958
        ChildIds: 16593809928613980622
        ChildIds: 2183752386533256050
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
          Model {
            AggressiveMerge: true
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
        Id: 15430127754128723767
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            Y: 9.48522854
          }
          Rotation {
            Yaw: -179.999893
            Roll: -2.09560355e-10
          }
          Scale {
            X: 0.103336029
            Y: 0.0693534166
            Z: 0.103336029
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 638964295574045185
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.16784668
          }
          Rotation {
            Pitch: -90
            Yaw: 0.562813759
            Roll: 179.436188
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13747698925360710927
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.16784668
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -179.999893
            Roll: -1.49002602e-10
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6881954040135238381
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.16784668
          }
          Rotation {
            Pitch: -42.4001427
            Yaw: 5.70716838e-05
            Roll: -179.999756
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1408039262731042753
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.16784668
          }
          Rotation {
            Pitch: -47.5988121
            Yaw: -179.999908
            Roll: 2.87406715e-06
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5755331399154268669
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            Y: 1.59069824
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999893
            Roll: 89.9998703
          }
          Scale {
            X: 0.118101403
            Y: 0.118101425
            Z: 0.0614332072
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6803814657074226962
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            Y: -0.00866699126
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999893
            Roll: 89.9998703
          }
          Scale {
            X: 0.0504322
            Y: 0.0504322648
            Z: 0.159617662
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6963918462038828215
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.167724624
          }
          Rotation {
            Pitch: -22.391407
            Yaw: -179.551224
            Roll: -2.26623344
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17652599050839835702
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.167724624
          }
          Rotation {
            Pitch: -67.4997635
            Yaw: -5.48231697
            Roll: -174.517395
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11720893756772518487
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.167724624
          }
          Rotation {
            Pitch: -19.9789505
            Yaw: -1.17715037
            Roll: -177.770218
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9202870868763161298
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Y: 0.167724624
          }
          Rotation {
            Pitch: -69.9009628
            Yaw: -174.676743
            Roll: -6.10758257
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.097
              G: 0.097
              B: 0.097
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6313461244839043665
        Name: "Ring"
        Transform {
          Location {
            Y: 0.765380919
          }
          Rotation {
            Pitch: 6.57252
            Yaw: 179.354553
            Roll: -89.9997482
          }
          Scale {
            X: 0.796676695
            Y: 0.796676695
            Z: 0.849384725
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.9674587
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.169360057
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14337077819836596756
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: 0.205566406
          }
          Rotation {
            Pitch: 6.57252693
            Yaw: -179.999893
            Roll: -89.9997559
          }
          Scale {
            X: 0.714078367
            Y: 0.714078307
            Z: 0.789554715
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.071
              G: 0.071
              B: 0.071
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
        Id: 17080993555260123962
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            Y: 5.24816895
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.196880817
            Y: 0.132135525
            Z: 0.196880817
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15102767336569880869
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            Y: 6.5657959
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.170153648
            Y: 0.114197649
            Z: 0.170153648
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14968274057661656487
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            Y: 7.71191406
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.152006611
            Y: 0.102018394
            Z: 0.152006611
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7957656699011737948
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            Y: 8.64758301
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.128636345
            Y: 0.0863336101
            Z: 0.128636345
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14230613393813401218
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167723477
            Z: 0.916245461
          }
          Rotation {
            Pitch: -19.9789104
            Yaw: -1.17715418
            Roll: -177.770218
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11478795708826837706
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167723477
            Z: 0.916245461
          }
          Rotation {
            Pitch: -67.4997101
            Yaw: -5.48230028
            Roll: -174.51738
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11258363262992528077
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167723477
            Z: 0.916245461
          }
          Rotation {
            Pitch: -22.391407
            Yaw: -179.551224
            Roll: -2.26623487
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1083298402784411548
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: -0.00866729766
            Z: 0.916245461
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999893
            Roll: 89.9998627
          }
          Scale {
            X: 0.0504322
            Y: 0.0504322648
            Z: 0.159617662
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17326724890332924092
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 1.59069753
            Z: 0.916245461
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999893
            Roll: 89.9998627
          }
          Scale {
            X: 0.118101336
            Y: 0.118101478
            Z: 0.0599896386
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11349432262464512950
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4329730856379586990
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167846054
            Z: 0.916245461
          }
          Rotation {
            Pitch: -47.5987587
            Yaw: -179.999893
            Roll: 3.27264229e-06
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1144074369003186571
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167846054
            Z: 0.916245461
          }
          Rotation {
            Pitch: -42.4001045
            Yaw: 5.70716584e-05
            Roll: -179.999756
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16603206937011723931
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167846054
            Z: 0.916245461
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -179.999893
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17230261744344147409
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167846054
            Z: 0.916245461
          }
          Rotation {
            Pitch: -90
            Yaw: -0.0128225414
            Roll: -179.988205
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2393612749488754355
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: 0.021051351
            Y: 0.167723477
            Z: 0.916245461
          }
          Rotation {
            Pitch: -69.9009247
            Yaw: -174.676758
            Roll: -6.10757303
          }
          Scale {
            X: 0.00627699867
            Y: 0.00627699867
            Z: 0.596837223
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.165
              G: 0.165
              B: 0.165
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16598039562551562724
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: 0.205566689
          }
          Rotation {
            Pitch: 6.57252
            Yaw: -179.999893
            Roll: -89.9997559
          }
          Scale {
            X: 0.69218868
            Y: 0.69218874
            Z: 0.453798741
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.269000024
              G: 0.269000024
              B: 0.269000024
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
        Id: 13130496874662754430
        Name: "Ring"
        Transform {
          Location {
            Y: 0.765379369
          }
          Rotation {
            Pitch: 6.57252
            Yaw: 179.354523
            Roll: -89.9997406
          }
          Scale {
            X: 0.826286793
            Y: 0.826286316
            Z: 0.68474859
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0100000007
              G: 0.0100000007
              B: 0.0100000007
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.9674587
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.169360057
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
        CoreMesh {
          MeshAsset {
            Id: 2433235999455009803
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 71414395146788681
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            X: -1.06540729e-05
            Y: 5.08319759
            Z: 0.207245082
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.194885209
            Y: 0.130796179
            Z: 0.194885209
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0470000021
              G: 0.0470000021
              B: 0.0470000021
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16043584011904999
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            X: -1.06540729e-05
            Y: 6.4008255
            Z: 0.207245082
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.168428972
            Y: 0.113040149
            Z: 0.168428972
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0470000021
              G: 0.0470000021
              B: 0.0470000021
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3311094296493915958
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            X: -1.06540729e-05
            Y: 7.54694319
            Z: 0.207245082
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.150465861
            Y: 0.100984327
            Z: 0.150465861
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0470000021
              G: 0.0470000021
              B: 0.0470000021
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16593809928613980622
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            X: -1.06540729e-05
            Y: 8.48261452
            Z: 0.207245082
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.127332479
            Y: 0.085458532
            Z: 0.127332479
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0470000021
              G: 0.0470000021
              B: 0.0470000021
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2183752386533256050
        Name: "Gear - generic large four-spoked"
        Transform {
          Location {
            X: -1.06540729e-05
            Y: 9.32025719
            Z: 0.207245082
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.102288604
            Y: 0.0686504543
            Z: 0.102288604
          }
        }
        ParentId: 16542985017779731413
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14291807793979895864
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0470000021
              G: 0.0470000021
              B: 0.0470000021
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
        CoreMesh {
          MeshAsset {
            Id: 10552323616834569307
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11465292142110682725
        Name: "idle_left_foot_Locator"
        Transform {
          Location {
            X: -36.9970856
            Y: -23.2058105
            Z: 7.1434
          }
          Rotation {
            Pitch: -6.42562866
            Yaw: -16.647644
            Roll: -0.822631836
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12294344361213190139
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
    }
    Assets {
      Id: 12905923173550510229
      Name: "Cylinder - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_test_001"
      }
    }
    Assets {
      Id: 15662520391385216232
      Name: "Gem - Pear Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_pear_polished_001"
      }
    }
    Assets {
      Id: 2433235999455009803
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 11349432262464512950
      Name: "Cylinder - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_003"
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
      Id: 10552323616834569307
      Name: "Gear - generic large four-spoked"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_gear_001_spoke4x"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
