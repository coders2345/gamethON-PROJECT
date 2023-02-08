Assets {
  Id: 837355242859326733
  Name: "StoneMetalDetector"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13378373505483097657
      Objects {
        Id: 13378373505483097657
        Name: "StoneMetalDetector"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4597469408776482727
        ChildIds: 5753356997047442433
        UnregisteredParameters {
          Overrides {
            Name: "cs:DetectorHeadCenter"
            ObjectReference {
              SubObjectId: 5753356997047442433
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
        Id: 4597469408776482727
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
        ParentId: 13378373505483097657
        ChildIds: 1782285318970460138
        ChildIds: 6418333170461064286
        ChildIds: 17463073390306426905
        ChildIds: 6024687296054238952
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
        Id: 1782285318970460138
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
        ParentId: 4597469408776482727
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 13378373505483097657
            }
          }
          Overrides {
            Name: "cs:DetectorHead"
            ObjectReference {
              SubObjectId: 13096194347548090369
            }
          }
          Overrides {
            Name: "cs:Telescope"
            ObjectReference {
              SubObjectId: 3971060088503500189
            }
          }
          Overrides {
            Name: "cs:TelescopeEndHelper"
            ObjectReference {
              SubObjectId: 7664427758445785905
            }
          }
          Overrides {
            Name: "cs:Cable"
            ObjectReference {
              SubObjectId: 8179099408322498855
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
        Id: 6418333170461064286
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
        ParentId: 4597469408776482727
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
        Id: 17463073390306426905
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
        ParentId: 4597469408776482727
        ChildIds: 11805961202582068270
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
        Id: 11805961202582068270
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
        ParentId: 17463073390306426905
        ChildIds: 13096194347548090369
        ChildIds: 9969623756304897904
        ChildIds: 3971060088503500189
        ChildIds: 8432200933345586749
        ChildIds: 7455665691885076679
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
        Id: 13096194347548090369
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
        ParentId: 11805961202582068270
        ChildIds: 13304914328862377700
        ChildIds: 193927029480849414
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
        Id: 13304914328862377700
        Name: "Bulb"
        Transform {
          Location {
            X: -54.9814
            Y: -0.572237372
            Z: 2.26607943
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.0825792
            Y: 0.0825792
            Z: 0.114874408
          }
        }
        ParentId: 13096194347548090369
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
              R: 5
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
        Id: 193927029480849414
        Name: "Street Light Pole Clamp 01"
        Transform {
          Location {
            X: -29.2584877
            Y: -1.94999576
            Z: -2.76378202
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 2.13154912
            Y: 2.13154912
            Z: 0.595073223
          }
        }
        ParentId: 13096194347548090369
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
            Id: 15887310095948514734
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
        Id: 9969623756304897904
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
        ParentId: 11805961202582068270
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17860830441923358832
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0625
              G: 0.0625
              B: 0.0625
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
        Id: 3971060088503500189
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
        ParentId: 11805961202582068270
        ChildIds: 7664427758445785905
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17860830441923358832
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0625
              G: 0.0625
              B: 0.0625
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
        Id: 7664427758445785905
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
        ParentId: 3971060088503500189
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
        Id: 8432200933345586749
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
        ParentId: 11805961202582068270
        ChildIds: 8179099408322498855
        ChildIds: 9692978788152832394
        ChildIds: 9414962022085396608
        ChildIds: 12704285691712281888
        ChildIds: 8956157688102347021
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
        Id: 8179099408322498855
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
        ParentId: 8432200933345586749
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
        Id: 9692978788152832394
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
        ParentId: 8432200933345586749
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
        Id: 9414962022085396608
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
        ParentId: 8432200933345586749
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
        Id: 12704285691712281888
        Name: "Point Light"
        Transform {
          Location {
            X: -72.8021164
            Y: -2.76921153
            Z: 93.7826385
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
        ParentId: 8432200933345586749
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
          Intensity: 5
          Color {
            R: 0.929999948
            A: 1
          }
          VolumetricIntensity: 1
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
        Id: 8956157688102347021
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
        ParentId: 8432200933345586749
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointLight"
            ObjectReference {
              SubObjectId: 12704285691712281888
            }
          }
          Overrides {
            Name: "cs:Bulb"
            ObjectReference {
              SubObjectId: 13304914328862377700
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 13378373505483097657
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 6418333170461064286
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
        Id: 7455665691885076679
        Name: "Strength Meter"
        Transform {
          Location {
            X: 48.1895218
            Y: -9.60007763
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
        ParentId: 11805961202582068270
        ChildIds: 11593646264684218910
        ChildIds: 1532492281424763233
        ChildIds: 15428672558607169564
        ChildIds: 7063301206481344532
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
        Id: 11593646264684218910
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
        ParentId: 7455665691885076679
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 13378373505483097657
            }
          }
          Overrides {
            Name: "cs:LitGroup"
            ObjectReference {
              SubObjectId: 1532492281424763233
            }
          }
          Overrides {
            Name: "cs:UnlitGroup"
            ObjectReference {
              SubObjectId: 15428672558607169564
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
        Id: 1532492281424763233
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
        ParentId: 7455665691885076679
        ChildIds: 8671682342211122448
        ChildIds: 7984974663802340747
        ChildIds: 6122874044691380107
        ChildIds: 3051320756553284995
        ChildIds: 11266260651620006802
        ChildIds: 11980557076035855350
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
        Id: 8671682342211122448
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07536936
            Y: 10.3790722
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480478e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0325181261
            Y: 0.0333727188
            Z: 0.0613946952
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 7984974663802340747
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07479227
            Y: 6.65666485
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480478e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0483506806
            Y: 0.0333727524
            Z: 0.0613854937
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 6122874044691380107
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07479882
            Y: 3.00898647
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 2.20960919e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0597620085
            Y: 0.0333727896
            Z: 0.0613931
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 3051320756553284995
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07480526
            Y: -0.629351079
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 2.20960883e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0727607459
            Y: 0.0333728455
            Z: 0.0613891073
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 11266260651620006802
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07481194
            Y: -4.36109877
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 2.20960919e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.102356635
            Y: 0.0333729349
            Z: 0.0613878593
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 11980557076035855350
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.07481956
            Y: -8.66031551
            Z: 7.26996136
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 2.2096081e-05
            Roll: 3.22939632e-05
          }
          Scale {
            X: 0.134048358
            Y: 0.043324858
            Z: 0.0613900423
          }
        }
        ParentId: 1532492281424763233
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
              G: 4.40397024
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
            Id: 3555083525931093615
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
        Id: 15428672558607169564
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
        ParentId: 7455665691885076679
        ChildIds: 9080994965846676420
        ChildIds: 17785700732215202156
        ChildIds: 16776639150107470833
        ChildIds: 9732173417970369380
        ChildIds: 17880987536754184917
        ChildIds: 15325567768010077028
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
        Id: 9080994965846676420
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904895127
            Y: 10.3790693
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480496e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0325181074
            Y: 0.033372689
            Z: 0.0613946617
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 17785700732215202156
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904901743
            Y: 6.65666342
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480496e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0483506508
            Y: 0.0333727337
            Z: 0.0613854714
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 16776639150107470833
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904908299
            Y: 3.00898552
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480478e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0597619601
            Y: 0.0333727524
            Z: 0.0613930635
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 9732173417970369380
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904914796
            Y: -0.629351199
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480496e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.0727606863
            Y: 0.033372812
            Z: 0.0613890775
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 17880987536754184917
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904921412
            Y: -4.36109829
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480496e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.102356575
            Y: 0.0333729051
            Z: 0.0613877811
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 15325567768010077028
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.904929161
            Y: -8.66031361
            Z: 6.72292471
          }
          Rotation {
            Pitch: -17.2734375
            Yaw: 1.10480496e-05
            Roll: 3.22939595e-05
          }
          Scale {
            X: 0.134048253
            Y: 0.0433248
            Z: 0.0613899902
          }
        }
        ParentId: 15428672558607169564
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13835644379888510015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.114503287
              B: 0.13
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
            Id: 3555083525931093615
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
        Id: 7063301206481344532
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
        ParentId: 7455665691885076679
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
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.015625
              G: 0.00248344801
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
            Id: 3160437216928201776
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
        Id: 6024687296054238952
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
        ParentId: 4597469408776482727
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
        Id: 5753356997047442433
        Name: "CenterPoint"
        Transform {
          Location {
            X: 60.4355469
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
        ParentId: 13378373505483097657
        ChildIds: 14215288841799864142
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
        Id: 14215288841799864142
        Name: "Pulse Scan Post Process"
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
        ParentId: 5753356997047442433
        ChildIds: 12155919101920364277
        UnregisteredParameters {
          Overrides {
            Name: "bp:Texture Pattern"
            Enum {
              Value: "mc:escanpulsetexturepattern:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Draw Edge Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Pulse Width"
            Float: 1.40572619
          }
          Overrides {
            Name: "bp:Pulse Falloff Sharpness"
            Float: 25.1154461
          }
          Overrides {
            Name: "bp:Pulse Min Range"
            Float: 0.17855373
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 22.9555225
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 0
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              R: 0.0599999428
              G: 0.0599999428
              B: 0.0599999428
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
            Bool: true
          }
          Overrides {
            Name: "bp:Pulse Leading Edge Color"
            Color {
              R: 0.854166687
              G: 0.854166687
              B: 0.854166687
              A: 1
            }
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              R: 0.609375
              G: 0.609375
              B: 0.609375
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0.791106939
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 6.55427217
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
        Id: 12155919101920364277
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
        ParentId: 14215288841799864142
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
              SubObjectId: 13378373505483097657
            }
          }
          Overrides {
            Name: "cs:PulseScanPostProcess"
            ObjectReference {
              SubObjectId: 14215288841799864142
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
      Id: 15887310095948514734
      Name: "Street Light Pole Clamp 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_st_post_lights_post_clamp_001"
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
      Id: 17860830441923358832
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
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
      Id: 3555083525931093615
      Name: "Cube - Chamfered Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_chamfer"
      }
    }
    Assets {
      Id: 13835644379888510015
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
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
