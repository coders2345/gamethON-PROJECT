Assets {
  Id: 17696279941308099301
  Name: "IronMetalDetector"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8815243777727826795
      Objects {
        Id: 8815243777727826795
        Name: "IronMetalDetector"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3622550873776487459
        ChildIds: 4707286868676326773
        UnregisteredParameters {
          Overrides {
            Name: "cs:DetectorHeadCenter"
            ObjectReference {
              SubObjectId: 4707286868676326773
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
        Id: 3622550873776487459
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
        ParentId: 8815243777727826795
        ChildIds: 15129699585802461674
        ChildIds: 6750640049062948344
        ChildIds: 2057150830590459770
        ChildIds: 3150135776903116267
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
        Id: 15129699585802461674
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
        ParentId: 3622550873776487459
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8815243777727826795
            }
          }
          Overrides {
            Name: "cs:DetectorHead"
            ObjectReference {
              SubObjectId: 8120279120060909222
            }
          }
          Overrides {
            Name: "cs:Telescope"
            ObjectReference {
              SubObjectId: 16937621654808974472
            }
          }
          Overrides {
            Name: "cs:TelescopeEndHelper"
            ObjectReference {
              SubObjectId: 4816066403637207595
            }
          }
          Overrides {
            Name: "cs:Cable"
            ObjectReference {
              SubObjectId: 11330758405078978357
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
        Id: 6750640049062948344
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
        ParentId: 3622550873776487459
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
        Id: 2057150830590459770
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
        ParentId: 3622550873776487459
        ChildIds: 865634911358554174
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
        Id: 865634911358554174
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
        ParentId: 2057150830590459770
        ChildIds: 8120279120060909222
        ChildIds: 18034765581944108177
        ChildIds: 16937621654808974472
        ChildIds: 3998311526175313964
        ChildIds: 1177046443603573882
        ChildIds: 16681347069462833999
        ChildIds: 13635069948169219598
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
        Id: 8120279120060909222
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
        ParentId: 865634911358554174
        ChildIds: 16138864163310677798
        ChildIds: 5412573359082172135
        ChildIds: 4667403435977253232
        ChildIds: 17161044963581346097
        ChildIds: 16565323785291950199
        ChildIds: 5610753789716276292
        ChildIds: 16701472745847617016
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
        Id: 16138864163310677798
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
        ParentId: 8120279120060909222
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
        Id: 5412573359082172135
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
        ParentId: 8120279120060909222
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
        Id: 4667403435977253232
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
        ParentId: 8120279120060909222
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
        Id: 17161044963581346097
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
        ParentId: 8120279120060909222
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
        Id: 16565323785291950199
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
        ParentId: 8120279120060909222
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
        Id: 5610753789716276292
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
        ParentId: 8120279120060909222
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
        Id: 16701472745847617016
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
        ParentId: 8120279120060909222
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
        Id: 18034765581944108177
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
        ParentId: 865634911358554174
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
        Id: 16937621654808974472
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
        ParentId: 865634911358554174
        ChildIds: 4816066403637207595
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
        Id: 4816066403637207595
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
        ParentId: 16937621654808974472
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
        Id: 3998311526175313964
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
        ParentId: 865634911358554174
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
        Id: 1177046443603573882
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
        ParentId: 865634911358554174
        ChildIds: 11330758405078978357
        ChildIds: 2028594620611235089
        ChildIds: 6769020986476561197
        ChildIds: 1413260312038730115
        ChildIds: 14677790392176231795
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
        Id: 11330758405078978357
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
        ParentId: 1177046443603573882
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
        Id: 2028594620611235089
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
        ParentId: 1177046443603573882
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
        Id: 6769020986476561197
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
        ParentId: 1177046443603573882
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
        Id: 1413260312038730115
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
        ParentId: 1177046443603573882
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
          Intensity: 25
          Color {
            R: 0.354166657
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
        Id: 14677790392176231795
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
        ParentId: 1177046443603573882
        UnregisteredParameters {
          Overrides {
            Name: "cs:PointLight"
            ObjectReference {
              SubObjectId: 1413260312038730115
            }
          }
          Overrides {
            Name: "cs:Bulb"
            ObjectReference {
              SubObjectId: 16701472745847617016
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8815243777727826795
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 6750640049062948344
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
        Id: 16681347069462833999
        Name: "Strength Meter"
        Transform {
          Location {
            X: 48.1895027
            Y: -13.5926399
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
        ParentId: 865634911358554174
        ChildIds: 1667794218833407268
        ChildIds: 13712288977087799181
        ChildIds: 4305235417447100834
        ChildIds: 14575653152110055209
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
        Id: 1667794218833407268
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
        ParentId: 16681347069462833999
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 8815243777727826795
            }
          }
          Overrides {
            Name: "cs:LitGroup"
            ObjectReference {
              SubObjectId: 13712288977087799181
            }
          }
          Overrides {
            Name: "cs:UnlitGroup"
            ObjectReference {
              SubObjectId: 4305235417447100834
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
        Id: 13712288977087799181
        Name: "Lit Bars"
        Transform {
          Location {
            X: 6.88252203e-06
            Y: -3.84898543
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16681347069462833999
        ChildIds: 7808352389689566964
        ChildIds: 9673614791251086170
        ChildIds: 16476197293969344353
        ChildIds: 14626400090608303620
        ChildIds: 6714246895742213930
        ChildIds: 13263310233371778886
        ChildIds: 2567429317372831797
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
        Id: 7808352389689566964
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.909032106
            Y: 17.6545753
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 4.04754928e-06
            Roll: 2.90817516e-05
          }
          Scale {
            X: 0.0795344934
            Y: 0.034829665
            Z: 0.148344502
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 9673614791251086170
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.909024954
            Y: 13.6192446
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 5.50152762e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.0878996
            Y: 0.0348296911
            Z: 0.148343593
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 16476197293969344353
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.909017563
            Y: 9.52553
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 1.6081388e-11
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.103714898
            Y: 0.034829732
            Z: 0.148345977
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 14626400090608303620
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.909010172
            Y: 5.38044071
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 8.46388844e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.118063338
            Y: 0.0348297618
            Z: 0.148348123
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 6714246895742213930
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.909002483
            Y: 1.09290075
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 9.73347184e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.127371415
            Y: 0.0348297842
            Z: 0.148350894
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 13263310233371778886
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.908994794
            Y: -3.21332169
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 9.73347184e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.138478339
            Y: 0.0348297916
            Z: 0.148346573
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 2567429317372831797
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -0.908987224
            Y: -7.44014502
            Z: 1.14807296
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 9.73347184e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.150934696
            Y: 0.034829814
            Z: 0.148344547
          }
        }
        ParentId: 13712288977087799181
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
              R: 0.810391903
              G: 2.94449115
              B: 4
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
            Id: 16965777294932964901
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
        Id: 4305235417447100834
        Name: "Unlit Bars"
        Transform {
          Location {
            X: 6.88252203e-06
            Y: -3.84898543
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1.00000012
          }
        }
        ParentId: 16681347069462833999
        ChildIds: 2502320508688911038
        ChildIds: 13403062295539090547
        ChildIds: 7321532351431636038
        ChildIds: 16111865740610604027
        ChildIds: 5828305936258670214
        ChildIds: 170984851310306399
        ChildIds: 1316324453879387674
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
        Id: 2502320508688911038
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.00302625
            Y: 17.6545715
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 4.65513869e-12
            Roll: 2.90817225e-05
          }
          Scale {
            X: 0.0795344785
            Y: 0.0348296613
            Z: 0.148344487
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 13403062295539090547
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.00301898
            Y: 13.6192408
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 3.38555551e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.0878995955
            Y: 0.0348296836
            Z: 0.148343563
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 7321532351431636038
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.0030117
            Y: 9.52552795
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 9.73347184e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.103714854
            Y: 0.0348297171
            Z: 0.148345917
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 16111865740610604027
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.00300431
            Y: 5.38043976
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 6.34791612e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.118063293
            Y: 0.0348297469
            Z: 0.148348063
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 5828305936258670214
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.0024128
            Y: 1.0929004
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 6.34791612e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.127371401
            Y: 0.0348297693
            Z: 0.148350835
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 170984851310306399
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.00298882
            Y: -3.21332097
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 6.34791612e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.138478324
            Y: 0.0348297879
            Z: 0.148346514
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 1316324453879387674
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.00298131
            Y: -7.43547297
            Z: 0.816173732
          }
          Rotation {
            Pitch: -15.8468323
            Yaw: 6.34791612e-12
            Roll: 2.90817061e-05
          }
          Scale {
            X: 0.150934666
            Y: 0.0348298103
            Z: 0.148344532
          }
        }
        ParentId: 4305235417447100834
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
              G: 0.139999986
              B: 0.131655633
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
            Id: 16965777294932964901
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
        Id: 14575653152110055209
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
            X: 0.46372506
            Y: 0.463724852
            Z: 0.549450517
          }
        }
        ParentId: 16681347069462833999
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
        Id: 13635069948169219598
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
        ParentId: 865634911358554174
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
        Id: 3150135776903116267
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
        ParentId: 3622550873776487459
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
        Id: 4707286868676326773
        Name: "CenterPoint"
        Transform {
          Location {
            X: 67.1455688
            Y: 0.695086598
            Z: -97.3994751
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
        ParentId: 8815243777727826795
        ChildIds: 17462539752632364117
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
        Id: 17462539752632364117
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
        ParentId: 4707286868676326773
        ChildIds: 5169437148255409709
        UnregisteredParameters {
          Overrides {
            Name: "bp:Texture Pattern"
            Enum {
              Value: "mc:escanpulsetexturepattern:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Draw Edge Lines"
            Bool: true
          }
          Overrides {
            Name: "bp:Pulse Width"
            Float: 1.50199223
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
            Float: 28.1699333
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 3.7441597
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              R: 0.0554304495
              G: 0.135
              A: 1
            }
          }
          Overrides {
            Name: "bp:Blend Weight"
            Float: 1
          }
          Overrides {
            Name: "bp:Brightness"
            Float: 0.25
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
              R: 0.0324225649
              G: 0.244791672
              A: 1
            }
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              R: 0.039320983
              G: 0.296875
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0.94753921
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 1.75867331
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
        Id: 5169437148255409709
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
        ParentId: 17462539752632364117
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
              SubObjectId: 8815243777727826795
            }
          }
          Overrides {
            Name: "cs:PulseScanPostProcess"
            ObjectReference {
              SubObjectId: 17462539752632364117
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
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
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
      Id: 16965777294932964901
      Name: "Cube - Chamfered Large Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_002"
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
