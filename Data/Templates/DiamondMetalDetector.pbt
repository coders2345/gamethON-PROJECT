Assets {
  Id: 3099417877678810074
  Name: "DiamondMetalDetector"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 609772402352396070
      Objects {
        Id: 609772402352396070
        Name: "DiamondMetalDetector"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 724934952983952688
        ChildIds: 14169604157796695484
        UnregisteredParameters {
          Overrides {
            Name: "cs:DetectorHeadCenter"
            ObjectReference {
              SubObjectId: 14169604157796695484
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
        Id: 724934952983952688
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
        ParentId: 609772402352396070
        ChildIds: 8907791591457563892
        ChildIds: 13936231165003117888
        ChildIds: 8900154080780279668
        ChildIds: 4636740539933381921
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
        Id: 8907791591457563892
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
        ParentId: 724934952983952688
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 609772402352396070
            }
          }
          Overrides {
            Name: "cs:DetectorHead"
            ObjectReference {
              SubObjectId: 12568238804398800473
            }
          }
          Overrides {
            Name: "cs:Telescope"
            ObjectReference {
              SubObjectId: 14585096016344389151
            }
          }
          Overrides {
            Name: "cs:TelescopeEndHelper"
            ObjectReference {
              SubObjectId: 13303679260220142137
            }
          }
          Overrides {
            Name: "cs:Cable"
            ObjectReference {
              SubObjectId: 13322094511050512559
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
        Id: 13936231165003117888
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
        ParentId: 724934952983952688
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
        Id: 8900154080780279668
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
        ParentId: 724934952983952688
        ChildIds: 7903924332280275922
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
        Id: 7903924332280275922
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
        ParentId: 8900154080780279668
        ChildIds: 12568238804398800473
        ChildIds: 10054272460420188665
        ChildIds: 14585096016344389151
        ChildIds: 8189044253823524673
        ChildIds: 17903044085940982226
        ChildIds: 3498959415705458554
        ChildIds: 13808181872641530793
        ChildIds: 16104561921969507903
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
        Id: 12568238804398800473
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
        ParentId: 7903924332280275922
        ChildIds: 11644270536272991061
        ChildIds: 18121611173485906677
        ChildIds: 14048078463089890387
        ChildIds: 11534805476512559900
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
        Id: 11644270536272991061
        Name: "Ring"
        Transform {
          Location {
            X: -38.8914452
            Y: -6.95433264e-05
          }
          Rotation {
          }
          Scale {
            X: 0.894471
            Y: 0.894471
            Z: 0.0303108711
          }
        }
        ParentId: 12568238804398800473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15243433111989010715
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
            Id: 1137112816547272582
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
        Id: 18121611173485906677
        Name: "Bulb"
        Transform {
          Location {
            X: -78.6346893
            Y: -0.572506189
            Z: 2.39889741
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
        ParentId: 12568238804398800473
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
              R: 2
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
        Id: 14048078463089890387
        Name: "Ring"
        Transform {
          Location {
            X: -38.8914452
            Y: -6.95433264e-05
          }
          Rotation {
          }
          Scale {
            X: 0.869710326
            Y: 0.869710326
            Z: 0.0294718109
          }
        }
        ParentId: 12568238804398800473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13621314269035211894
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.120000005
              G: 0.825165451
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
            Id: 1137112816547272582
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
        Id: 11534805476512559900
        Name: "Ring"
        Transform {
          Location {
            X: -38.8914452
            Y: -6.95433264e-05
            Z: 0.0890318453
          }
          Rotation {
          }
          Scale {
            X: 0.938588321
            Y: 0.938588321
            Z: 0.590198517
          }
        }
        ParentId: 12568238804398800473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13349528077905922012
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.319602489
              B: 0.38
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
            Id: 181318686039733865
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
        Id: 10054272460420188665
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
        ParentId: 7903924332280275922
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15832539070683060702
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.616556227
              B: 0.700000048
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
        Id: 14585096016344389151
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
        ParentId: 7903924332280275922
        ChildIds: 13303679260220142137
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
        Id: 13303679260220142137
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
        ParentId: 14585096016344389151
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
        Id: 8189044253823524673
        Name: "Pipe - Half Thin"
        Transform {
          Location {
            X: 73.8426514
            Y: -1.53260231
            Z: 197.061432
          }
          Rotation {
            Pitch: -4.39129639
            Yaw: 83.8018188
            Roll: -82.3118286
          }
          Scale {
            X: 0.205256641
            Y: 0.20525673
            Z: 0.313965708
          }
        }
        ParentId: 7903924332280275922
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
              G: 2.76158881
              B: 3
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
            Id: 8657735172019548823
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
        Id: 17903044085940982226
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
        ParentId: 7903924332280275922
        ChildIds: 13322094511050512559
        ChildIds: 18397654648812158068
        ChildIds: 13893903766951963746
        ChildIds: 8301956818275419029
        ChildIds: 9460283128749852148
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
        Id: 13322094511050512559
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
        ParentId: 17903044085940982226
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
        Id: 18397654648812158068
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
        ParentId: 17903044085940982226
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
        Id: 13893903766951963746
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
        ParentId: 17903044085940982226
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
        Id: 8301956818275419029
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
        ParentId: 17903044085940982226
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
            R: 0.026041666
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
        Id: 9460283128749852148
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
        ParentId: 17903044085940982226
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointLight"
            ObjectReference {
              SubObjectId: 8301956818275419029
            }
          }
          Overrides {
            Name: "cs:Bulb"
            ObjectReference {
              SubObjectId: 18121611173485906677
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 609772402352396070
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 13936231165003117888
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
        Id: 3498959415705458554
        Name: "Strength Meter"
        Transform {
          Location {
            X: 48.1895332
            Y: -22.2168751
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
        ParentId: 7903924332280275922
        ChildIds: 3812988694452354219
        ChildIds: 6035078444394198852
        ChildIds: 6316549587578915864
        ChildIds: 9598183448902811592
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
        Id: 3812988694452354219
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
        ParentId: 3498959415705458554
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 609772402352396070
            }
          }
          Overrides {
            Name: "cs:LitGroup"
            ObjectReference {
              SubObjectId: 6035078444394198852
            }
          }
          Overrides {
            Name: "cs:UnlitGroup"
            ObjectReference {
              SubObjectId: 6316549587578915864
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
        Id: 6035078444394198852
        Name: "Lit Bars"
        Transform {
          Location {
            X: -0.493463397
            Y: -0.47416845
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3498959415705458554
        ChildIds: 9362720253238985348
        ChildIds: 12054304785632487528
        ChildIds: 13713796494349923959
        ChildIds: 10978146799803854115
        ChildIds: 11966934252321730632
        ChildIds: 11061612512830718435
        ChildIds: 3787870650307221155
        ChildIds: 17414828090827306488
        ChildIds: 9110433556616686512
        ChildIds: 16242037985243251381
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
        Id: 9362720253238985348
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53846574
            Y: 20.4814072
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0557295196
            Y: 0.039564833
            Z: 0.134024456
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 12054304785632487528
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53845859
            Y: 16.3865261
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0642766356
            Y: 0.0395648554
            Z: 0.134023532
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 13713796494349923959
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53845143
            Y: 12.3815517
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0800631568
            Y: 0.0395648889
            Z: 0.134024128
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 10978146799803854115
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53844452
            Y: 8.45831299
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0991679505
            Y: 0.0395649485
            Z: 0.134024262
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 11966934252321730632
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53843689
            Y: 4.37627554
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.119110875
            Y: 0.0395649932
            Z: 0.134023666
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 11061612512830718435
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53843
            Y: 0.290735513
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.143796429
            Y: 0.0395650603
            Z: 0.134023219
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 3787870650307221155
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53842258
            Y: -3.80414557
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.164912879
            Y: 0.0395651124
            Z: 0.134020671
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 17414828090827306488
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53841543
            Y: -7.80911922
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.188056394
            Y: 0.0395651758
            Z: 0.134021178
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 9110433556616686512
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53840828
            Y: -11.7323589
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.208518356
            Y: 0.0395652242
            Z: 0.134022176
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 16242037985243251381
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.53840113
            Y: -15.8143959
            Z: 3.06707406
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627089e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.230123475
            Y: 0.0395652652
            Z: 0.134020612
          }
        }
        ParentId: 6035078444394198852
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
              G: 2.0927124
              B: 4
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
            Id: 13395551209377067128
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
        Id: 6316549587578915864
        Name: "Unlit Bars"
        Transform {
          Location {
            X: -0.493463397
            Y: -0.47416845
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1.00000012
          }
        }
        ParentId: 3498959415705458554
        ChildIds: 1580909467637726322
        ChildIds: 863613267308786219
        ChildIds: 18301750309473226409
        ChildIds: 6411551729241865958
        ChildIds: 1402358221202271965
        ChildIds: 1503772214883945481
        ChildIds: 9520294440872975287
        ChildIds: 10751988292448091473
        ChildIds: 508294798918853638
        ChildIds: 3359639232534606520
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
        Id: 1580909467637726322
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69025731
            Y: 20.4814034
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78626862e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0557295047
            Y: 0.0395648219
            Z: 0.134024411
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 863613267308786219
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69025016
            Y: 16.3865223
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0642766133
            Y: 0.0395648442
            Z: 0.134023488
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 18301750309473226409
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69024301
            Y: 12.3815498
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0800631344
            Y: 0.0395648815
            Z: 0.134024084
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 6411551729241865958
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69023585
            Y: 8.45831108
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.0991679206
            Y: 0.0395649374
            Z: 0.134024218
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 1402358221202271965
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69022846
            Y: 4.37627459
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.119110838
            Y: 0.0395649821
            Z: 0.134023622
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 1503772214883945481
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69022131
            Y: 0.290735185
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.143796384
            Y: 0.0395650491
            Z: 0.134023175
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 9520294440872975287
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69021392
            Y: -3.8041451
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.164912835
            Y: 0.0395651
            Z: 0.134020627
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 10751988292448091473
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69020677
            Y: -7.80911779
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.18805635
            Y: 0.0395651646
            Z: 0.134021148
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 508294798918853638
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69019961
            Y: -11.7323561
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.208518296
            Y: 0.039565213
            Z: 0.134022146
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 3359639232534606520
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -2.69019246
            Y: -15.814393
            Z: 2.57783628
          }
          Rotation {
            Pitch: -17.1824951
            Yaw: 4.78627044e-06
            Roll: 3.19908831e-05
          }
          Scale {
            X: 0.230123416
            Y: 0.039565254
            Z: 0.134020567
          }
        }
        ParentId: 6316549587578915864
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
              G: 0.0627814
              B: 0.120000005
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
            Id: 13395551209377067128
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
        Id: 9598183448902811592
        Name: "Street Utility Box 02"
        Transform {
          Location {
            X: -4.48310518
            Y: 0.281230509
            Z: -0.661408126
          }
          Rotation {
            Pitch: -16.3627625
            Yaw: 3.20332874e-05
            Roll: -89.9999084
          }
          Scale {
            X: 0.553769827
            Y: 0.463720381
            Z: 0.778402925
          }
        }
        ParentId: 3498959415705458554
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
        Id: 13808181872641530793
        Name: "Truncated Cone"
        Transform {
          Location {
            X: 48.4348564
            Y: 1.36313583e-05
            Z: 182.919617
          }
          Rotation {
            Pitch: -81.6777039
            Yaw: -6.63467407
            Roll: 0.000474838715
          }
          Scale {
            X: 0.0429904796
            Y: 0.0377743542
            Z: 0.973691523
          }
        }
        ParentId: 7903924332280275922
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
        Id: 16104561921969507903
        Name: "Truncated Cone"
        Transform {
          Location {
            X: 22.11376
            Y: 3.95424831e-05
            Z: 110.846107
          }
          Rotation {
            Pitch: -19.6981812
            Yaw: 3.84062016e-28
            Roll: 3.49168866e-20
          }
          Scale {
            X: 0.0876091421
            Y: 0.087609835
            Z: 1.47552931
          }
        }
        ParentId: 7903924332280275922
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13621314269035211894
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.616556227
              B: 0.700000048
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
        Id: 4636740539933381921
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
        ParentId: 724934952983952688
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
              R: 0.200000048
              G: 4
              B: 3.54702187
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
        Id: 14169604157796695484
        Name: "CenterPoint"
        Transform {
          Location {
            X: 67.1455688
            Y: 0.695086598
            Z: -97.3994751
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 609772402352396070
        ChildIds: 5371161905394293351
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
        Id: 5371161905394293351
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
        ParentId: 14169604157796695484
        ChildIds: 7272846310955508312
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
            Float: 2
          }
          Overrides {
            Name: "bp:Pulse Falloff Sharpness"
            Float: 0.913340032
          }
          Overrides {
            Name: "bp:Pulse Min Range"
            Float: 0.17855373
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 28.6087341
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 6.1454525
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              G: 0.0527386777
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
            Float: 0.4
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
              G: 0.239997044
              B: 0.255208343
              A: 1
            }
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              G: 0.468749434
              B: 0.46875
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0.586870432
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
        Id: 7272846310955508312
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
        ParentId: 5371161905394293351
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
              SubObjectId: 609772402352396070
            }
          }
          Overrides {
            Name: "cs:PulseScanPostProcess"
            ObjectReference {
              SubObjectId: 5371161905394293351
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
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
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
      Id: 181318686039733865
      Name: "Ring - Beveled Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_002"
      }
    }
    Assets {
      Id: 13349528077905922012
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
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
      Id: 8657735172019548823
      Name: "Pipe - Half Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_002"
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
      Id: 13395551209377067128
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
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
