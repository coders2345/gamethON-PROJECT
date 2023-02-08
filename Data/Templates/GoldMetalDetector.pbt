Assets {
  Id: 14820844070805064421
  Name: "GoldMetalDetector"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8310488771623886562
      Objects {
        Id: 8310488771623886562
        Name: "GoldMetalDetector"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11066675578026770911
        ChildIds: 10291914507772971018
        UnregisteredParameters {
          Overrides {
            Name: "cs:DetectorHeadCenter"
            ObjectReference {
              SubObjectId: 10291914507772971018
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
        Id: 11066675578026770911
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
        ParentId: 8310488771623886562
        ChildIds: 2644392689480116409
        ChildIds: 11970412258401418945
        ChildIds: 14894887028986747788
        ChildIds: 4977189024649383494
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
        Id: 2644392689480116409
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
        ParentId: 11066675578026770911
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8310488771623886562
            }
          }
          Overrides {
            Name: "cs:DetectorHead"
            ObjectReference {
              SubObjectId: 14801244493408920314
            }
          }
          Overrides {
            Name: "cs:Telescope"
            ObjectReference {
              SubObjectId: 15440262107763625259
            }
          }
          Overrides {
            Name: "cs:TelescopeEndHelper"
            ObjectReference {
              SubObjectId: 7575127088473811485
            }
          }
          Overrides {
            Name: "cs:Cable"
            ObjectReference {
              SubObjectId: 10185200466939096066
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
        Id: 11970412258401418945
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
        ParentId: 11066675578026770911
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
        Id: 14894887028986747788
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
        ParentId: 11066675578026770911
        ChildIds: 8168585714828302159
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
        Id: 8168585714828302159
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
        ParentId: 14894887028986747788
        ChildIds: 14801244493408920314
        ChildIds: 10202603581856159903
        ChildIds: 15440262107763625259
        ChildIds: 10967496721224912403
        ChildIds: 11789691401878814939
        ChildIds: 17864712181085249727
        ChildIds: 216319585675099520
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
        Id: 14801244493408920314
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
        ParentId: 8168585714828302159
        ChildIds: 13842552970927451851
        ChildIds: 8551791430061602455
        ChildIds: 6826662186213731582
        ChildIds: 15934233307680692050
        ChildIds: 6733756734168278804
        ChildIds: 17094054170674903505
        ChildIds: 13746716269947254247
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
        Id: 13842552970927451851
        Name: "Cylinder"
        Transform {
          Location {
            X: -60.5538826
            Y: -18.1076527
          }
          Rotation {
            Pitch: 90
            Yaw: -20.5560303
            Roll: -60.556
          }
          Scale {
            X: 0.0705807358
            Y: 0.0705806464
            Z: 0.28061536
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 8551791430061602455
        Name: "Cylinder"
        Transform {
          Location {
            X: -17.394228
            Y: 18.1075878
          }
          Rotation {
            Pitch: 90
            Yaw: -20.5560303
            Roll: -60.556
          }
          Scale {
            X: 0.0705807358
            Y: 0.0705806464
            Z: 0.28061536
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 6826662186213731582
        Name: "Cylinder"
        Transform {
          Location {
            X: -19.0548229
            Y: -19.9195232
          }
          Rotation {
            Pitch: 90
            Yaw: 14.0362635
            Roll: -120.963821
          }
          Scale {
            X: 0.0705807358
            Y: 0.0705806464
            Z: 0.28061536
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 15934233307680692050
        Name: "Cylinder"
        Transform {
          Location {
            X: -58.8938
            Y: 19.9194565
          }
          Rotation {
            Pitch: 90
            Yaw: 14.0362635
            Roll: -120.963821
          }
          Scale {
            X: 0.0705807358
            Y: 0.0705806464
            Z: 0.28061536
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 6733756734168278804
        Name: "Ring"
        Transform {
          Location {
            X: -38.8910065
            Y: -0.000142519464
          }
          Rotation {
          }
          Scale {
            X: 0.411312968
            Y: 0.411312968
            Z: 0.411312968
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
            Id: 8936463881719161671
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
        Id: 17094054170674903505
        Name: "Ring"
        Transform {
          Location {
            X: -38.8910065
            Y: -0.000142519464
          }
          Rotation {
          }
          Scale {
            X: 0.894471
            Y: 0.894471
            Z: 0.894471
          }
        }
        ParentId: 14801244493408920314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
            Id: 2433235999455009803
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
        Id: 13746716269947254247
        Name: "Bulb"
        Transform {
          Location {
            X: -38.891
            Y: -6.95433264e-05
            Z: 2.31570363
          }
          Rotation {
            Yaw: -179.999893
          }
          Scale {
            X: 0.83231467
            Y: 0.83231467
            Z: 1.5822401
          }
        }
        ParentId: 14801244493408920314
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
        Id: 10202603581856159903
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
        ParentId: 8168585714828302159
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
        Id: 15440262107763625259
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
        ParentId: 8168585714828302159
        ChildIds: 7575127088473811485
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
        Id: 7575127088473811485
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
        ParentId: 15440262107763625259
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
        Id: 10967496721224912403
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
        ParentId: 8168585714828302159
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
        Id: 11789691401878814939
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
        ParentId: 8168585714828302159
        ChildIds: 10185200466939096066
        ChildIds: 14848108813026456931
        ChildIds: 6224252709393491182
        ChildIds: 1947719694495883658
        ChildIds: 3078240562164127945
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
        Id: 10185200466939096066
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
        ParentId: 11789691401878814939
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 14848108813026456931
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
        ParentId: 11789691401878814939
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 6224252709393491182
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
        ParentId: 11789691401878814939
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 1947719694495883658
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
        ParentId: 11789691401878814939
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
            R: 0.046875
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
        Id: 3078240562164127945
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
        ParentId: 11789691401878814939
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointLight"
            ObjectReference {
              SubObjectId: 1947719694495883658
            }
          }
          Overrides {
            Name: "cs:Bulb"
            ObjectReference {
              SubObjectId: 13746716269947254247
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8310488771623886562
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 11970412258401418945
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
        Id: 17864712181085249727
        Name: "Strength Meter"
        Transform {
          Location {
            X: 48.1894913
            Y: -15.1121712
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
        ParentId: 8168585714828302159
        ChildIds: 2607600877970352494
        ChildIds: 15037995114064857632
        ChildIds: 5307571356169355111
        ChildIds: 2635686067455110542
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
        Id: 2607600877970352494
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
        ParentId: 17864712181085249727
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8310488771623886562
            }
          }
          Overrides {
            Name: "cs:LitGroup"
            ObjectReference {
              SubObjectId: 15037995114064857632
            }
          }
          Overrides {
            Name: "cs:UnlitGroup"
            ObjectReference {
              SubObjectId: 5307571356169355111
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
        Id: 15037995114064857632
        Name: "Lit Bars"
        Transform {
          Location {
            X: 0.742438436
            Y: -1.13238156
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17864712181085249727
        ChildIds: 7905916418769903523
        ChildIds: 418031862120408365
        ChildIds: 18176106285131749285
        ChildIds: 225750850476474642
        ChildIds: 8068239570562043903
        ChildIds: 14058457294513867074
        ChildIds: 16035625100862181300
        ChildIds: 9442685516650945953
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
        Id: 7905916418769903523
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.3527298
            Y: 16.4741
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0696933568
            Y: 0.0334357806
            Z: 0.150602415
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 418031862120408365
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35272205
            Y: 12.1585369
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0766691417
            Y: 0.0334357917
            Z: 0.150604397
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 18176106285131749285
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35271442
            Y: 7.85465
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0919795632
            Y: 0.0334358253
            Z: 0.150600836
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 225750850476474642
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35270691
            Y: 3.75042772
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.10213469
            Y: 0.0334358439
            Z: 0.150602832
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 8068239570562043903
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35269964
            Y: -0.333944827
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.11162173
            Y: 0.0334358588
            Z: 0.150604114
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 14058457294513867074
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35269213
            Y: -4.50472164
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.124379337
            Y: 0.0334358886
            Z: 0.150605068
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 16035625100862181300
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35268438
            Y: -8.84130287
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.133168787
            Y: 0.0334359072
            Z: 0.150602594
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 9442685516650945953
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.35267651
            Y: -13.322669
            Z: 2.12508798
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.143223286
            Y: 0.0334359258
            Z: 0.150602385
          }
        }
        ParentId: 15037995114064857632
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
              G: 4
              B: 3.1258297
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
            Id: 13642204757580273705
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
        Id: 5307571356169355111
        Name: "Unlit Bars"
        Transform {
          Location {
            X: 0.742438436
            Y: -1.13238156
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1.00000012
          }
        }
        ParentId: 17864712181085249727
        ChildIds: 6243772952344228444
        ChildIds: 13542731059468194520
        ChildIds: 16082030760234900095
        ChildIds: 4680069550850510934
        ChildIds: 241675556204774640
        ChildIds: 6050617392018121172
        ChildIds: 4674722726086610879
        ChildIds: 14771289234528122375
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
        Id: 6243772952344228444
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39476418
            Y: 16.4740963
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0696933344
            Y: 0.0334357694
            Z: 0.150602385
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 13542731059468194520
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39475644
            Y: 12.158535
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0766691193
            Y: 0.0334357843
            Z: 0.150604352
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 16082030760234900095
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39474881
            Y: 7.85464859
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.0919795334
            Y: 0.0334358141
            Z: 0.150600791
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 4680069550850510934
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39474142
            Y: 3.75042677
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.102134652
            Y: 0.0334358327
            Z: 0.150602788
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 241675556204774640
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39473414
            Y: -0.333944827
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.1116217
            Y: 0.0334358513
            Z: 0.150604069
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 6050617392018121172
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39472651
            Y: -4.50472116
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.124379307
            Y: 0.0334358774
            Z: 0.150605038
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 4674722726086610879
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.39471889
            Y: -8.84130096
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.133168742
            Y: 0.033435896
            Z: 0.150602564
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 14771289234528122375
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.3947109
            Y: -13.3226671
            Z: 1.97241986
          }
          Rotation {
            Pitch: -15.3171082
            Yaw: 3.77329025e-06
            Roll: 2.80607892e-05
          }
          Scale {
            X: 0.143223241
            Y: 0.0334359147
            Z: 0.150602326
          }
        }
        ParentId: 5307571356169355111
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
              G: 0.0599999428
              B: 0.0468873866
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
            Id: 13642204757580273705
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
        Id: 2635686067455110542
        Name: "Street Utility Box 02"
        Transform {
          Location {
            X: -1.44172359
            Y: 0.281235933
            Z: -0.661408126
          }
          Rotation {
            Pitch: -16.3627625
            Yaw: 3.20332874e-05
            Roll: -89.9999084
          }
          Scale {
            X: 0.46372512
            Y: 0.463724732
            Z: 0.614728153
          }
        }
        ParentId: 17864712181085249727
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
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 216319585675099520
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
        ParentId: 8168585714828302159
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12449403850132072738
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
        Id: 4977189024649383494
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
        ParentId: 11066675578026770911
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
        Id: 10291914507772971018
        Name: "Center Point"
        Transform {
          Location {
            X: 67.1455078
            Y: 0.6953125
            Z: -97.3994141
          }
          Rotation {
            Yaw: 179.999893
          }
          Scale {
            X: 0.8363626
            Y: 0.8363626
            Z: 0.8363626
          }
        }
        ParentId: 8310488771623886562
        ChildIds: 11838175074193210894
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
        Id: 11838175074193210894
        Name: "Pulse Scan Post Process"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.999999881
            Y: 0.999999881
            Z: 0.999999881
          }
        }
        ParentId: 10291914507772971018
        ChildIds: 1300839861632870178
        UnregisteredParameters {
          Overrides {
            Name: "bp:Texture Pattern"
            Enum {
              Value: "mc:escanpulsetexturepattern:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Draw Edge Lines"
            Bool: true
          }
          Overrides {
            Name: "bp:Pulse Width"
            Float: 1.79881251
          }
          Overrides {
            Name: "bp:Pulse Falloff Sharpness"
            Float: 15.0877371
          }
          Overrides {
            Name: "bp:Pulse Min Range"
            Float: 0
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 28.1699333
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 3.9246583
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              R: 0.0989583358
              G: 0.0511175543
              A: 1
            }
          }
          Overrides {
            Name: "bp:Blend Weight"
            Float: 1
          }
          Overrides {
            Name: "bp:Brightness"
            Float: 0.5124349
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
              R: 0.453125
              G: 0.378104299
              A: 1
            }
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              R: 0.552083313
              G: 0.482615769
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0.738962889
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 4.64665365
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
        Id: 1300839861632870178
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
        ParentId: 11838175074193210894
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
              SubObjectId: 8310488771623886562
            }
          }
          Overrides {
            Name: "cs:PulseScanPostProcess"
            ObjectReference {
              SubObjectId: 11838175074193210894
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
      Id: 8936463881719161671
      Name: "Ring - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_005"
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
      Id: 181318686039733865
      Name: "Ring - Beveled Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_002"
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
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
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
      Id: 13642204757580273705
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
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
