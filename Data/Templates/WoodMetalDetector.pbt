Assets {
  Id: 5065498245818696076
  Name: "WoodMetalDetector"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1457923795760871598
      Objects {
        Id: 1457923795760871598
        Name: "WoodMetalDetector"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6931304312934468614
        ChildIds: 8186411637962422690
        UnregisteredParameters {
          Overrides {
            Name: "cs:DetectorHeadCenter"
            ObjectReference {
              SubObjectId: 8186411637962422690
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
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
            SelfId: 8652675857033996401
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6931304312934468614
        Name: "ClientContext"
        Transform {
          Location {
            X: 4.11819458
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1457923795760871598
        ChildIds: 12008605077831600077
        ChildIds: 1458721213565345714
        ChildIds: 14945989365621069465
        ChildIds: 128347123142651053
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
        Id: 12008605077831600077
        Name: "MetalDetectorTerrainTrackerClient"
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
        ParentId: 6931304312934468614
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 1457923795760871598
            }
          }
          Overrides {
            Name: "cs:DetectorHead"
            ObjectReference {
              SubObjectId: 17058510071636516313
            }
          }
          Overrides {
            Name: "cs:Telescope"
            ObjectReference {
              SubObjectId: 17585414553746241288
            }
          }
          Overrides {
            Name: "cs:TelescopeEndHelper"
            ObjectReference {
              SubObjectId: 17831476052002721882
            }
          }
          Overrides {
            Name: "cs:Cable"
            ObjectReference {
              SubObjectId: 13625125640825626022
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
            Id: 15167127338546207994
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1458721213565345714
        Name: "UI Game Tone High Saturation Beep 01 SFX"
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
        ParentId: 6931304312934468614
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
            Id: 8848761764868763118
          }
          Volume: 0.6
          Falloff: -1
          Radius: -1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14945989365621069465
        Name: "MetalDetector Prop"
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
        ParentId: 6931304312934468614
        ChildIds: 13193567405162990941
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 13193567405162990941
        Name: "Group"
        Transform {
          Location {
            X: 39.4188843
            Y: 0.695147634
            Z: -164.650604
          }
          Rotation {
            Yaw: 179.999893
          }
          Scale {
            X: 0.836362481
            Y: 0.836362481
            Z: 0.836362481
          }
        }
        ParentId: 14945989365621069465
        ChildIds: 17058510071636516313
        ChildIds: 3334006596614709677
        ChildIds: 17585414553746241288
        ChildIds: 7605678649760712789
        ChildIds: 6481780938217786761
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
        Id: 17058510071636516313
        Name: "DetectorHead"
        Transform {
          Location {
            X: 11.8993254
            Y: 9.42545739e-05
            Z: 80.4090729
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13193567405162990941
        ChildIds: 6942797165730107513
        ChildIds: 17791535596698705831
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
        Id: 6942797165730107513
        Name: "Bulb"
        Transform {
          Location {
            X: -44.9771385
            Y: -0.305999696
            Z: 5.88339949
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.0787365437
            Y: 0.0787365437
            Z: 0.0857959
          }
        }
        ParentId: 17058510071636516313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5351428073291024820
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 50
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15883191008616550447
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 17791535596698705831
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: -26.1829529
            Y: -4.68187682e-05
          }
          Rotation {
            Pitch: -90
            Yaw: 27.9387093
            Roll: -27.9391479
          }
          Scale {
            X: 2.25
            Y: 2.25
            Z: 2.25
          }
        }
        ParentId: 17058510071636516313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10175610025683199964
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12888726374622842928
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 3334006596614709677
        Name: "Truncated Cone"
        Transform {
          Location {
            X: 22.1134682
            Y: -0.000106411884
            Z: 110.846069
          }
          Rotation {
            Pitch: -19.6981812
          }
          Scale {
            X: 0.0982663557
            Y: 0.0982671902
            Z: 1.65501976
          }
        }
        ParentId: 13193567405162990941
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10175610025683199964
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 9372939288148738240
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 17585414553746241288
        Name: "Truncated Cone"
        Transform {
          Location {
            X: 25.598999
            Y: -0.0825195312
            Z: 120.068306
          }
          Rotation {
            Pitch: -19.6981812
            Yaw: 9.88406648e-11
            Roll: 2.06041781e-12
          }
          Scale {
            X: 0.0848610252
            Y: 0.0848621055
            Z: -0.84
          }
        }
        ParentId: 13193567405162990941
        ChildIds: 17831476052002721882
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10175610025683199964
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
            Id: 9372939288148738240
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 17831476052002721882
        Name: "TelescopeEndHelper"
        Transform {
          Location {
            X: -1.97265625
            Y: -0.000319480896
            Z: 46.9990234
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17585414553746241288
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
        Id: 7605678649760712789
        Name: "Group"
        Transform {
          Location {
            X: 4.20959473
          }
          Rotation {
          }
          Scale {
            X: 0.937102556
            Y: 0.937102556
            Z: 0.937102556
          }
        }
        ParentId: 13193567405162990941
        ChildIds: 13625125640825626022
        ChildIds: 16437542836286103511
        ChildIds: 12204434235155311851
        ChildIds: 13940923926579723384
        ChildIds: 11746967588019949675
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
        Id: 13625125640825626022
        Name: "Pipe - Spiral"
        Transform {
          Location {
            X: 30.0527191
            Y: 0.101381667
            Z: 146.997589
          }
          Rotation {
            Pitch: 14.0367346
            Yaw: 134.292923
            Roll: 166.03804
          }
          Scale {
            X: 0.130667582
            Y: 0.130667523
            Z: 0.666239619
          }
        }
        ParentId: 7605678649760712789
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0198675171
              G: 0.6
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11571572053411310055
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 16437542836286103511
        Name: "Pipe - Spiral"
        Transform {
          Location {
            X: 30.1310291
            Y: -2.3996583e-05
            Z: 146.905792
          }
          Rotation {
            Pitch: -19.6981812
          }
          Scale {
            X: 0.130668178
            Y: 0.130667388
            Z: 0.389999598
          }
        }
        ParentId: 7605678649760712789
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0198675171
              G: 0.6
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11571572053411310055
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 12204434235155311851
        Name: "Pipe - Spiral"
        Transform {
          Location {
            X: 43.2001
            Y: -6.27262864e-07
            Z: 183.411774
          }
          Rotation {
            Pitch: -19.6981812
          }
          Scale {
            X: 0.13066873
            Y: 0.130667433
            Z: 0.478305846
          }
        }
        ParentId: 7605678649760712789
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0198675171
              G: 0.6
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11571572053411310055
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 13940923926579723384
        Name: "Point Light"
        Transform {
          Location {
            X: -40.2321243
            Y: -0.0798160061
            Z: 100.688095
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 1.27590501
            Y: 1.27590501
            Z: 1.27590501
          }
        }
        ParentId: 7605678649760712789
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 50
          Color {
            R: 0.929999948
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 74.0721283
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
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
        Id: 11746967588019949675
        Name: "BlinkLightClient"
        Transform {
          Location {
            X: 7.78750618e-05
            Y: 1.39251458e-10
          }
          Rotation {
          }
          Scale {
            X: 1.27590489
            Y: 1.27590489
            Z: 1.27590489
          }
        }
        ParentId: 7605678649760712789
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointLight"
            ObjectReference {
              SubObjectId: 13940923926579723384
            }
          }
          Overrides {
            Name: "cs:Bulb"
            ObjectReference {
              SubObjectId: 6942797165730107513
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 1457923795760871598
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 1458721213565345714
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
            Id: 15639207597315071671
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6481780938217786761
        Name: "Strength Meter"
        Transform {
          Location {
            X: 48.1894569
            Y: -8.15901
            Z: 215.959106
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13193567405162990941
        ChildIds: 3673871325752019098
        ChildIds: 6064811452902322745
        ChildIds: 17664965978828302500
        ChildIds: 4033744137246853282
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
        Id: 3673871325752019098
        Name: "StrengthMeter"
        Transform {
          Location {
            X: 4.56105772e-06
            Y: 3.56414205e-08
          }
          Rotation {
          }
          Scale {
            X: 1.1956538
            Y: 1.1956538
            Z: 1.1956538
          }
        }
        ParentId: 6481780938217786761
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 1457923795760871598
            }
          }
          Overrides {
            Name: "cs:LitGroup"
            ObjectReference {
              SubObjectId: 6064811452902322745
            }
          }
          Overrides {
            Name: "cs:UnlitGroup"
            ObjectReference {
              SubObjectId: 17664965978828302500
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
            Id: 10746582842081835828
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6064811452902322745
        Name: "Lit Bars"
        Transform {
          Location {
            X: -2.81333928e-06
            Y: 1.90734866e-07
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6481780938217786761
        ChildIds: 14106047956835626845
        ChildIds: 9410602383884116627
        ChildIds: 4254017513803309779
        ChildIds: 15694312502674300052
        ChildIds: 3164980607871186757
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
        Id: 14106047956835626845
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207819983
            Y: 10.2331161
            Z: 6.41292
          }
          Rotation {
            Pitch: -19.1066589
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0571672134
            Y: 0.0416377261
            Z: 0.0249189623
          }
        }
        ParentId: 6064811452902322745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14087642893619442102
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.01298952
              G: 3.68061185
              B: 5
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 9410602383884116627
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207828373
            Y: 5.53690577
            Z: 6.41292
          }
          Rotation {
            Pitch: -19.1066589
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0651271641
            Y: 0.0420385
            Z: 0.0420373864
          }
        }
        ParentId: 6064811452902322745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14087642893619442102
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.01298952
              G: 3.68061185
              B: 5
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 4254017513803309779
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207836747
            Y: 0.852370799
            Z: 6.41292
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 8.61691794e-13
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0714922771
            Y: 0.0420385227
            Z: 0.0420409888
          }
        }
        ParentId: 6064811452902322745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14087642893619442102
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.01298952
              G: 3.68061185
              B: 5
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 15694312502674300052
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207845122
            Y: -3.82982874
            Z: 6.41292
          }
          Rotation {
            Pitch: -19.1066589
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0899715722
            Y: 0.0420385525
            Z: 0.0420398973
          }
        }
        ParentId: 6064811452902322745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14087642893619442102
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.01298952
              G: 3.68061185
              B: 5
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 3164980607871186757
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.20785372
            Y: -8.64046764
            Z: 6.41292
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 8.61691794e-13
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.1126865
            Y: 0.0420385972
            Z: 0.0420437
          }
        }
        ParentId: 6064811452902322745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14087642893619442102
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.01298952
              G: 3.68061185
              B: 5
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 17664965978828302500
        Name: "Unlit Bars"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1.00000012
          }
        }
        ParentId: 6481780938217786761
        ChildIds: 8379675277896542503
        ChildIds: 15877006168112758276
        ChildIds: 15616113365062344443
        ChildIds: 684571828921630019
        ChildIds: 17107983338340853191
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
        Id: 8379675277896542503
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207819939
            Y: 10.2331142
            Z: 6.41291904
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 8.61691794e-13
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0571672
            Y: 0.0416377187
            Z: 0.0249189548
          }
        }
        ParentId: 17664965978828302500
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3884064907396751720
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0193377212
              B: 0.0399999619
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 15877006168112758276
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207828328
            Y: 5.53690481
            Z: 6.41291904
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 8.61691794e-13
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0651271492
            Y: 0.0420384966
            Z: 0.0420373753
          }
        }
        ParentId: 17664965978828302500
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3884064907396751720
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0193377212
              B: 0.0399999619
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 15616113365062344443
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207836702
            Y: 0.852370679
            Z: 6.41291904
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 1.72338359e-12
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0714922473
            Y: 0.0420385115
            Z: 0.0420409776
          }
        }
        ParentId: 17664965978828302500
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3884064907396751720
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0193377212
              B: 0.0399999619
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 684571828921630019
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.207845077
            Y: -3.82982779
            Z: 6.41291904
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 8.61691794e-13
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.0899715498
            Y: 0.042038545
            Z: 0.0420398898
          }
        }
        ParentId: 17664965978828302500
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3884064907396751720
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0193377212
              B: 0.0399999619
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 17107983338340853191
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.20785369
            Y: -8.64046574
            Z: 6.41291904
          }
          Rotation {
            Pitch: -19.1066589
            Yaw: 1.72338359e-12
            Roll: 3.54907643e-05
          }
          Scale {
            X: 0.11268647
            Y: 0.0420385897
            Z: 0.0420436896
          }
        }
        ParentId: 17664965978828302500
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3884064907396751720
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0193377212
              B: 0.0399999619
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
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
        Id: 4033744137246853282
        Name: "Street Utility Box 02"
        Transform {
          Location {
            X: -1.44172812
            Y: 0.281235933
            Z: -0.661280394
          }
          Rotation {
            Pitch: -16.3627625
            Yaw: 3.20332874e-05
            Roll: -89.9999084
          }
          Scale {
            X: 0.463724911
            Y: 0.463724911
            Z: 0.463724911
          }
        }
        ParentId: 6481780938217786761
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.015625
              G: 0.00248344801
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10175610025683199964
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3160437216928201776
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
        Id: 128347123142651053
        Name: "Modern Weapon - Grip 01"
        Transform {
          Location {
            X: -1.82653809
            Y: -0.200195312
            Z: 7.7590332
          }
          Rotation {
            Pitch: 7.39222431
          }
          Scale {
            X: 1.29671252
            Y: 1
            Z: 1
          }
        }
        ParentId: 6931304312934468614
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10175610025683199964
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
            Id: 13155471131385409602
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 8186411637962422690
        Name: "CenterPoint"
        Transform {
          Location {
            X: 54.9570312
            Y: 0.6953125
            Z: -97.3994141
          }
          Rotation {
            Yaw: 179.999893
          }
          Scale {
            X: 0.836362481
            Y: 0.836362481
            Z: 0.836362481
          }
        }
        ParentId: 1457923795760871598
        ChildIds: 1104090152963089691
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
        Id: 1104090152963089691
        Name: "Pulse Scan Post Process"
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
        ParentId: 8186411637962422690
        ChildIds: 9895259331233317762
        UnregisteredParameters {
          Overrides {
            Name: "bp:Texture Pattern"
            Enum {
              Value: "mc:escanpulsetexturepattern:3"
            }
          }
          Overrides {
            Name: "bp:Draw Edge Lines"
            Bool: true
          }
          Overrides {
            Name: "bp:Pulse Width"
            Float: 0.879149675
          }
          Overrides {
            Name: "bp:Pulse Falloff Sharpness"
            Float: 15.0877371
          }
          Overrides {
            Name: "bp:Pulse Min Range"
            Float: 0.17855373
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 10.9222717
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 0.0138517534
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              R: 0.0572916679
              G: 0.0572916679
              B: 0.0572916679
              A: 1
            }
          }
          Overrides {
            Name: "bp:Blend Weight"
            Float: 1
          }
          Overrides {
            Name: "bp:Brightness"
            Float: 0.163716555
          }
          Overrides {
            Name: "bp:Draw Hot Leading Edge"
            Bool: true
          }
          Overrides {
            Name: "bp:Texture Pulse"
            Bool: false
          }
          Overrides {
            Name: "bp:Pulse Leading Edge Color"
            Color {
              R: 0.713541687
              G: 0.713541687
              B: 0.713541687
              A: 1
            }
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              R: 100
              G: 100
              B: 100
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0.967594683
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 2.43716788
          }
          Overrides {
            Name: "bp:Draw Pulse"
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
        Blueprint {
          BlueprintAsset {
            Id: 9676506317586199090
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
        Id: 9895259331233317762
        Name: "PulseScanControllerClient"
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
        ParentId: 1104090152963089691
        UnregisteredParameters {
          Overrides {
            Name: "cs:StatsLibrary"
            AssetReference {
              Id: 9086258696745892316
            }
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 1457923795760871598
            }
          }
          Overrides {
            Name: "cs:PulseScanPostProcess"
            ObjectReference {
              SubObjectId: 1104090152963089691
            }
          }
          Overrides {
            Name: "cs:PulseSpeed"
            Float: 0.6
          }
          Overrides {
            Name: "cs:PulseDelay"
            Float: 0.6
          }
          Overrides {
            Name: "cs:PulseFadeInEdge"
            Float: 0.5
          }
          Overrides {
            Name: "cs:PulseFadeOutEdge"
            Float: 0.8
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
            Id: 4375185024725200785
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 8848761764868763118
      Name: "UI Game Tone High Saturation Beep 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_game_tone_high_sat_beep_01a_Cue_ref"
      }
    }
    Assets {
      Id: 15883191008616550447
      Name: "Sphere - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 5351428073291024820
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
    Assets {
      Id: 12888726374622842928
      Name: "Modern Weapon - Disc 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_disc_001"
      }
    }
    Assets {
      Id: 10175610025683199964
      Name: "Clear Coat 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_clear-coat_001"
      }
    }
    Assets {
      Id: 9372939288148738240
      Name: "Cone - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_001"
      }
    }
    Assets {
      Id: 11571572053411310055
      Name: "Pipe - Spiral"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_spiral_001"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Sphere - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 3160437216928201776
      Name: "Street Utility Box 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_st_post_lights_utility_box_002"
      }
    }
    Assets {
      Id: 13155471131385409602
      Name: "Modern Weapon - Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_grip_001"
      }
    }
    Assets {
      Id: 9676506317586199090
      Name: "Pulse Scan Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_ppm_pulse_scan"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
