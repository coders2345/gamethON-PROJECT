Assets {
  Id: 432851150666279233
  Name: "Prop Silver Manticore Legends Token"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4248980925243904624
      Objects {
        Id: 4248980925243904624
        Name: "Prop Silver Manticore Legends Token"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11904987624987040880
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
        Id: 11904987624987040880
        Name: "Group"
        Transform {
          Location {
            X: -1.02962863
            Y: 0.98429364
            Z: -22.9287605
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4248980925243904624
        ChildIds: 4319890746270836257
        ChildIds: 12083728285601403488
        ChildIds: 241862131666567196
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
        Id: 4319890746270836257
        Name: "MantiCoin_Silver"
        Transform {
          Location {
            X: 0.829280734
            Y: -0.98429364
            Z: 22.9287605
          }
          Rotation {
            Yaw: 89.9998703
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.6
          }
        }
        ParentId: 11904987624987040880
        ChildIds: 6060770108240340056
        ChildIds: 1717326086182034397
        ChildIds: 13360709162112021371
        ChildIds: 6461242926274028227
        ChildIds: 7418880228373287518
        ChildIds: 4595663543936562245
        ChildIds: 12516503620214073225
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
        Id: 6060770108240340056
        Name: "Gear - generic large solid"
        Transform {
          Location {
            X: -0.0328063965
            Y: 0.0211181641
            Z: 2.12595367
          }
          Rotation {
          }
          Scale {
            X: 1.40158057
            Y: 1.31068218
            Z: 1.40158057
          }
        }
        ParentId: 4319890746270836257
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
            Id: 3235163546829614436
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
        Id: 1717326086182034397
        Name: "Gear - generic large solid"
        Transform {
          Location {
            X: -0.0328063965
            Y: 0.0211181641
            Z: 2.12595367
          }
          Rotation {
            Pitch: 6
          }
          Scale {
            X: 1.40158057
            Y: 1.31068218
            Z: 1.40158057
          }
        }
        ParentId: 4319890746270836257
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
            Id: 3235163546829614436
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
        Id: 13360709162112021371
        Name: "Gear - generic large solid"
        Transform {
          Location {
            X: -0.0328063965
            Y: 0.0211181641
            Z: 2.12595367
          }
          Rotation {
            Pitch: 12
          }
          Scale {
            X: 1.40158057
            Y: 1.31068218
            Z: 1.40158057
          }
        }
        ParentId: 4319890746270836257
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
            Id: 3235163546829614436
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
        Id: 6461242926274028227
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -0.0328063965
            Y: 0.0211181641
            Z: 2.12595367
          }
          Rotation {
            Roll: 90.0000458
          }
          Scale {
            X: 1.399
            Y: 1.399
            Z: 0.134086087
          }
        }
        ParentId: 4319890746270836257
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.572916687
              G: 0.546769381
              B: 0.535172462
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
            Id: 12905923173550510229
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
        Id: 7418880228373287518
        Name: "Stars"
        Transform {
          Location {
            X: -1.82787571e-05
            Y: 7.99942
          }
          Rotation {
            Yaw: -89.9998703
          }
          Scale {
            X: 1.66666663
            Y: 1.66666663
            Z: 1.66666663
          }
        }
        ParentId: 4319890746270836257
        ChildIds: 14938018444912147797
        ChildIds: 820084625946990604
        ChildIds: 3874630395699403881
        ChildIds: 8174016784446808229
        ChildIds: 16070554708265247283
        ChildIds: 6804984001990606893
        ChildIds: 18322095825765811132
        ChildIds: 14156838152315898090
        ChildIds: 536518252627109702
        ChildIds: 17572661652848327193
        ChildIds: 11743638744362829892
        ChildIds: 10401280958797617368
        ChildIds: 7501758672158394901
        ChildIds: 7048458716722902046
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
        Id: 14938018444912147797
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -16.507616
            Z: 31.0463028
          }
          Rotation {
            Pitch: 6.99968672
            Yaw: -89.9998398
            Roll: -90.0000076
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 820084625946990604
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 16.6575375
            Z: -31.3282623
          }
          Rotation {
            Pitch: 6.99968672
            Yaw: -89.9998398
            Roll: -90.0000076
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 3874630395699403881
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -28.803194
            Z: 20.1680603
          }
          Rotation {
            Pitch: -20.0005
            Yaw: -89.9998322
            Roll: -90.0000839
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 8174016784446808229
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 29.0647812
            Z: -20.351223
          }
          Rotation {
            Pitch: -20.0005
            Yaw: -89.9998322
            Roll: -90.0000839
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 16070554708265247283
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -34.6279564
            Z: 6.10572433
          }
          Rotation {
            Pitch: -45.0005074
            Yaw: -89.9998
            Roll: -90.0001907
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 6804984001990606893
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 34.94244
            Z: -6.16117477
          }
          Rotation {
            Pitch: -45.0005074
            Yaw: -89.9998
            Roll: -90.0001907
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 18322095825765811132
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -33.963974
            Z: -9.1007328
          }
          Rotation {
            Pitch: -70.000473
            Yaw: -89.9995575
            Roll: -90.0004349
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 14156838152315898090
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 34.2724304
            Z: 9.18338585
          }
          Rotation {
            Pitch: -70.000473
            Yaw: -89.9995575
            Roll: -90.0004349
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 536518252627109702
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -26.9357376
            Z: -22.6017952
          }
          Rotation {
            Pitch: -84.999733
            Yaw: 89.9983902
            Roll: 90.0018
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 17572661652848327193
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 27.1803627
            Z: 22.8070602
          }
          Rotation {
            Pitch: -84.999733
            Yaw: 89.9983902
            Roll: 90.0018
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 11743638744362829892
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: -15.9632607
            Z: -31.3296871
          }
          Rotation {
            Pitch: -61.9996872
            Yaw: 89.9996796
            Roll: 90.0002594
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 10401280958797617368
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Y: 16.1082363
            Z: 31.6142178
          }
          Rotation {
            Pitch: -61.9996872
            Yaw: 89.9996796
            Roll: 90.0002594
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 7501758672158394901
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Z: -35.1621246
          }
          Rotation {
            Pitch: -34.999691
            Yaw: 89.9998169
            Roll: 90.0000763
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 7048458716722902046
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999809
            Z: 35.4814606
          }
          Rotation {
            Pitch: -34.999691
            Yaw: 89.9998169
            Roll: 90.0000763
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 7418880228373287518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 4595663543936562245
        Name: "Stars"
        Transform {
          Location {
            X: 1.35103855e-05
            Y: -6.08575821
          }
          Rotation {
            Yaw: -89.9998703
          }
          Scale {
            X: 1.66666663
            Y: 1.66666663
            Z: 1.66666663
          }
        }
        ParentId: 4319890746270836257
        ChildIds: 7456236616262442624
        ChildIds: 4214104565636139316
        ChildIds: 212541288199147603
        ChildIds: 13519142081028698121
        ChildIds: 5718356768279962673
        ChildIds: 9906809614173690078
        ChildIds: 13319558812932031090
        ChildIds: 5403689630149714760
        ChildIds: 891754006774742258
        ChildIds: 5811411938039402733
        ChildIds: 18268424582842530031
        ChildIds: 12740928952749588399
        ChildIds: 450667093788030047
        ChildIds: 2071769993114940770
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
        Id: 7456236616262442624
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -16.507616
            Z: 31.0463028
          }
          Rotation {
            Pitch: 6.99968672
            Yaw: -89.9998398
            Roll: -90.0000076
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 4214104565636139316
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Z: 35.4814606
          }
          Rotation {
            Pitch: -34.999691
            Yaw: 89.9998169
            Roll: 90.0000763
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 212541288199147603
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Z: -35.1621246
          }
          Rotation {
            Pitch: -34.999691
            Yaw: 89.9998169
            Roll: 90.0000763
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 13519142081028698121
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 16.1082363
            Z: 31.6142178
          }
          Rotation {
            Pitch: -61.9996872
            Yaw: 89.9996796
            Roll: 90.0002594
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 5718356768279962673
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -15.9632607
            Z: -31.3296871
          }
          Rotation {
            Pitch: -61.9996872
            Yaw: 89.9996796
            Roll: 90.0002594
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 9906809614173690078
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 27.1803627
            Z: 22.8070602
          }
          Rotation {
            Pitch: -84.999733
            Yaw: 89.9983902
            Roll: 90.0018
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 13319558812932031090
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -26.9357376
            Z: -22.6017952
          }
          Rotation {
            Pitch: -84.999733
            Yaw: 89.9983902
            Roll: 90.0018
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 5403689630149714760
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 34.2724304
            Z: 9.18338585
          }
          Rotation {
            Pitch: -70.000473
            Yaw: -89.9995575
            Roll: -90.0004349
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 891754006774742258
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -33.963974
            Z: -9.1007328
          }
          Rotation {
            Pitch: -70.000473
            Yaw: -89.9995575
            Roll: -90.0004349
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 5811411938039402733
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 34.94244
            Z: -6.16117477
          }
          Rotation {
            Pitch: -45.0005074
            Yaw: -89.9998
            Roll: -90.0001907
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 18268424582842530031
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -34.6279564
            Z: 6.10572433
          }
          Rotation {
            Pitch: -45.0005074
            Yaw: -89.9998
            Roll: -90.0001907
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 12740928952749588399
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 29.0647812
            Z: -20.351223
          }
          Rotation {
            Pitch: -20.0005
            Yaw: -89.9998322
            Roll: -90.0000839
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 450667093788030047
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: -28.803194
            Z: 20.1680603
          }
          Rotation {
            Pitch: -20.0005
            Yaw: -89.9998322
            Roll: -90.0000839
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 2071769993114940770
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.699999571
            Y: 16.6575375
            Z: -31.3282623
          }
          Rotation {
            Pitch: 6.99968672
            Yaw: -89.9998398
            Roll: -90.0000076
          }
          Scale {
            X: 0.0895798057
            Y: 0.0895797
            Z: 0.0305823945
          }
        }
        ParentId: 4595663543936562245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.875
              G: 0.835065901
              B: 0.817354321
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
        CoreMesh {
          MeshAsset {
            Id: 574049115731752623
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
        Id: 12516503620214073225
        Name: "ManticoreLegendsTotem"
        Transform {
          Location {
            X: -4.11215782
            Y: 6.52120924
            Z: -10.8250742
          }
          Rotation {
            Yaw: -89.9998779
          }
          Scale {
            X: 0.159751639
            Y: 0.159751639
            Z: 0.159751639
          }
        }
        ParentId: 4319890746270836257
        ChildIds: 12901265178983738202
        ChildIds: 6368361724731051549
        ChildIds: 10235325581243518898
        ChildIds: 2344422232315352433
        ChildIds: 2223299048457844962
        ChildIds: 7859530756139077768
        ChildIds: 3502953303488585323
        ChildIds: 15106924336291946582
        ChildIds: 7951721256511512567
        ChildIds: 14282651633809993805
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12901265178983738202
        Name: "Arm"
        Transform {
          Location {
            X: 58.3255615
            Y: -2.79694462
            Z: 180.800674
          }
          Rotation {
            Pitch: 48.1312981
            Yaw: 85.2662
            Roll: 80.6291046
          }
          Scale {
            X: 1.13250077
            Y: 1.13250077
            Z: 1.13250077
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 16863388981665998845
        ChildIds: 11876101348791346801
        ChildIds: 17775413220882360790
        ChildIds: 17513666584558551586
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16863388981665998845
        Name: "Sphere"
        Transform {
          Location {
            X: -16.0128746
            Y: 13.7322969
            Z: 56.2185707
          }
          Rotation {
            Pitch: 1.34840906
            Yaw: 5.12370525e-06
            Roll: 6.02937646e-08
          }
          Scale {
            X: 0.447983176
            Y: 0.345911682
            Z: 0.409874767
          }
        }
        ParentId: 12901265178983738202
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 11876101348791346801
        Name: "Sphere"
        Transform {
          Location {
            X: -25.6858788
            Y: -10.1378517
            Z: 39.5629692
          }
          Rotation {
            Pitch: 0.657685697
            Yaw: -7.88061523
            Roll: 114.409149
          }
          Scale {
            X: 0.286852717
            Y: 0.345909119
            Z: 0.749658227
          }
        }
        ParentId: 12901265178983738202
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 17775413220882360790
        Name: "Sphere"
        Transform {
          Location {
            X: -19.6071644
            Y: 14.892766
            Z: 44.2800941
          }
          Rotation {
            Yaw: 1.70754697e-06
          }
          Scale {
            X: 0.355147779
            Y: 0.36522451
            Z: 0.43482703
          }
        }
        ParentId: 12901265178983738202
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 17513666584558551586
        Name: "Hand"
        Transform {
          Location {
            X: -49.4798
            Y: -58.7123375
            Z: 65.2786484
          }
          Rotation {
            Pitch: 41.2238884
            Yaw: -19.5299072
            Roll: 34.5065765
          }
          Scale {
            X: 0.999999702
            Y: 0.999999702
            Z: 0.999999702
          }
        }
        ParentId: 12901265178983738202
        ChildIds: 3364584215840826062
        ChildIds: 8483082063655193702
        ChildIds: 1898174660385862565
        ChildIds: 5150500205837108493
        ChildIds: 15816992691392666759
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3364584215840826062
        Name: "Sphere"
        Transform {
          Location {
            X: -2.84155273
            Y: 15.418396
          }
          Rotation {
          }
          Scale {
            X: 0.424307019
            Y: 0.362154216
            Z: 0.163936839
          }
        }
        ParentId: 17513666584558551586
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 8483082063655193702
        Name: "Sphere"
        Transform {
          Location {
            X: 6.80004883
            Y: -8.2119751
          }
          Rotation {
            Pitch: 8.72910404
            Yaw: 13.0124807
            Roll: 92.008194
          }
          Scale {
            X: 0.110929057
            Y: 0.0690800548
            Z: 0.138042614
          }
        }
        ParentId: 17513666584558551586
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 1898174660385862565
        Name: "Sphere"
        Transform {
          Location {
            X: -6.91357422
            Y: -11.1630859
          }
          Rotation {
            Pitch: 8.95543575
            Yaw: 6.05016885e-06
            Roll: 89.9999466
          }
          Scale {
            X: 0.110930987
            Y: 0.0690804273
            Z: 0.150578246
          }
        }
        ParentId: 17513666584558551586
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 5150500205837108493
        Name: "Sphere"
        Transform {
          Location {
            X: -20.220459
            Y: -6.44683838
          }
          Rotation {
            Pitch: 8.57627201
            Yaw: -16.8628235
            Roll: 87.4118
          }
          Scale {
            X: 0.110932074
            Y: 0.0690808147
            Z: 0.122431815
          }
        }
        ParentId: 17513666584558551586
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 15816992691392666759
        Name: "Sphere"
        Transform {
          Location {
            X: 23.1743164
            Y: 10.4036255
            Z: 1.52587891e-05
          }
          Rotation {
            Pitch: 5.66163206
            Yaw: 51.0217934
            Roll: 96.9495468
          }
          Scale {
            X: 0.110929057
            Y: 0.0690800548
            Z: 0.138042614
          }
        }
        ParentId: 17513666584558551586
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 6368361724731051549
        Name: "Head"
        Transform {
          Location {
            X: -13.3664551
            Y: -19.668457
            Z: 207.614258
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 7897910051417700950
        ChildIds: 2438209420691696422
        ChildIds: 13646847962445079679
        ChildIds: 430874445084664177
        ChildIds: 1135136739686961884
        ChildIds: 5469844877899990509
        ChildIds: 1680142514985720056
        ChildIds: 11631567960080683684
        ChildIds: 10802587379142376401
        ChildIds: 7801516402195246063
        ChildIds: 14713021269625115211
        ChildIds: 14002257259475129319
        ChildIds: 8251968974683076523
        ChildIds: 12669760935204143333
        ChildIds: 17478775656492274816
        ChildIds: 8331043402094788078
        ChildIds: 2994973850851443086
        ChildIds: 18248782717047431895
        ChildIds: 15723566799115563995
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7897910051417700950
        Name: "Sphere"
        Transform {
          Location {
            X: -4.23269272
            Y: -5.75816345
            Z: 43.9501305
          }
          Rotation {
          }
          Scale {
            X: 0.582211733
            Y: 1.11682332
            Z: 1.2072103
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 2438209420691696422
        Name: "Sphere"
        Transform {
          Location {
            X: -19.9156113
            Y: -43.618145
            Z: 23.6760616
          }
          Rotation {
            Yaw: 2.03556898e-13
            Roll: -0.34262085
          }
          Scale {
            X: 0.174360707
            Y: 0.160238385
            Z: 0.106311269
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 13646847962445079679
        Name: "Sphere"
        Transform {
          Location {
            X: -21.5050411
            Y: -39.5410805
            Z: 46.4096413
          }
          Rotation {
            Yaw: -28.9492798
          }
          Scale {
            X: 0.157871395
            Y: 0.157871395
            Z: 0.157871395
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 430874445084664177
        Name: "Sphere"
        Transform {
          Location {
            X: 18.1889648
            Y: -43.87146
            Z: 38.4673462
          }
          Rotation {
            Yaw: -28.9492798
          }
          Scale {
            X: 0.0940974
            Y: 0.0940974
            Z: 0.0940974
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 1135136739686961884
        Name: "Sphere"
        Transform {
          Location {
            X: 2.22601175
            Y: -25.6865234
            Z: 0.752818942
          }
          Rotation {
            Roll: -41.1303101
          }
          Scale {
            X: 0.156839401
            Y: 0.20326826
            Z: 0.236667961
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 5469844877899990509
        Name: "Sphere"
        Transform {
          Location {
            X: -32.2801056
            Y: 6.97877
            Z: 56.1998978
          }
          Rotation {
          }
          Scale {
            X: 0.159743592
            Y: 0.315517068
            Z: 0.315517068
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 1680142514985720056
        Name: "Sphere"
        Transform {
          Location {
            X: -1.01293969
            Y: 9.42859
            Z: 50.7024956
          }
          Rotation {
            Roll: 24.8164196
          }
          Scale {
            X: 0.621095061
            Y: 1.22624767
            Z: 1.30837369
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 13066946232358571547
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
        Id: 11631567960080683684
        Name: "Sphere"
        Transform {
          Location {
            X: -29.3764858
            Y: 7.24301052
            Z: 37.0526428
          }
          Rotation {
            Roll: 4.8699789
          }
          Scale {
            X: 0.338261724
            Y: 0.159680694
            Z: 0.281328261
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 10802587379142376401
        Name: "Sphere"
        Transform {
          Location {
            X: -25.0511684
            Y: -13.9793844
            Z: 67.6175079
          }
          Rotation {
          }
          Scale {
            X: 0.159743592
            Y: 0.315517068
            Z: 0.315517068
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 7801516402195246063
        Name: "Sphere"
        Transform {
          Location {
            X: 4.36829233
            Y: -36.4844
            Z: 74.9818
          }
          Rotation {
          }
          Scale {
            X: 0.181152478
            Y: 0.357802778
            Z: 0.357802778
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 14713021269625115211
        Name: "Sphere"
        Transform {
          Location {
            X: -12.3683157
            Y: -29.5574551
            Z: 77.983429
          }
          Rotation {
          }
          Scale {
            X: 0.315517068
            Y: 0.315517068
            Z: 0.315517068
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 14002257259475129319
        Name: "Sphere"
        Transform {
          Location {
            X: -5.32568359
            Y: 32.0916138
            Z: 121.036835
          }
          Rotation {
            Pitch: 17.2130661
          }
          Scale {
            X: 0.16004245
            Y: 0.113159619
            Z: 0.438564837
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 8251968974683076523
        Name: "Sphere"
        Transform {
          Location {
            X: 11.1569824
            Y: 32.0916138
            Z: 110.71402
          }
          Rotation {
            Pitch: -36.5219421
          }
          Scale {
            X: 0.16003719
            Y: 0.113159619
            Z: 0.464615315
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 12669760935204143333
        Name: "Sphere"
        Transform {
          Location {
            X: -32.2800293
            Y: 29.2618408
            Z: 39.5930481
          }
          Rotation {
          }
          Scale {
            X: 0.159743592
            Y: 0.315517068
            Z: 0.315517068
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 17478775656492274816
        Name: "Sphere"
        Transform {
          Location {
            X: 8.88525391
            Y: 57.7712097
            Z: 18.789032
          }
          Rotation {
          }
          Scale {
            X: 0.357802778
            Y: 0.357802778
            Z: 0.357802778
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 8331043402094788078
        Name: "Sphere"
        Transform {
          Location {
            X: -12.0280409
            Y: 50.4037781
            Z: 26.4133339
          }
          Rotation {
          }
          Scale {
            X: 0.181152478
            Y: 0.357802778
            Z: 0.357802778
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 2994973850851443086
        Name: "Sphere"
        Transform {
          Location {
            X: -16.8063965
            Y: 50.4037781
            Z: 23.2272453
          }
          Rotation {
          }
          Scale {
            X: 0.315517068
            Y: 0.315517068
            Z: 0.315517068
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 18248782717047431895
        Name: "Sphere"
        Transform {
          Location {
            X: -26.8885517
            Y: -14.4710064
            Z: 23.8410435
          }
          Rotation {
            Yaw: 2.03556898e-13
            Roll: -0.34262085
          }
          Scale {
            X: 0.228782445
            Y: 0.322469145
            Z: 0.31292659
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 15723566799115563995
        Name: "Sphere"
        Transform {
          Location {
            X: -16.4146328
            Y: -43.2802887
            Z: 35.346077
          }
          Rotation {
            Yaw: 4.07113796e-13
            Roll: -0.34262085
          }
          Scale {
            X: 0.174360707
            Y: 0.160238385
            Z: 0.106311262
          }
        }
        ParentId: 6368361724731051549
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 10235325581243518898
        Name: "Body"
        Transform {
          Location {
            X: -13.0842285
            Y: 22.1921387
            Z: 29.7855225
          }
          Rotation {
            Roll: -14.6525612
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 2619248912857125894
        ChildIds: 3681617776396885574
        ChildIds: 12456423321159345308
        ChildIds: 10446772631330276273
        ChildIds: 14512293474027708788
        ChildIds: 3091264310783977576
        ChildIds: 1487962178347326892
        ChildIds: 3229628018533752532
        ChildIds: 15667079999126925840
        ChildIds: 11490446838650577963
        ChildIds: 11032510766489492279
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2619248912857125894
        Name: "Sphere"
        Transform {
          Location {
            X: 2.15405178
            Y: 16.1473732
            Z: 73.9788742
          }
          Rotation {
          }
          Scale {
            X: 0.554568768
            Y: 1.06848145
            Z: 1.36617625
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 3681617776396885574
        Name: "Sphere"
        Transform {
          Location {
            X: 0.634033322
            Y: 3.87499833
            Z: 64.1970901
          }
          Rotation {
          }
          Scale {
            X: 0.735399
            Y: 1.15458643
            Z: 1.32225561
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 12456423321159345308
        Name: "Sphere"
        Transform {
          Location {
            X: -11.5484285
            Y: 25.1990738
            Z: 27.51647
          }
          Rotation {
            Roll: 23.0188866
          }
          Scale {
            X: 0.502603829
            Y: 0.669808865
            Z: 0.890700698
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 10446772631330276273
        Name: "Sphere"
        Transform {
          Location {
            X: -4.6416173
            Y: 37.5123291
            Z: 24.2970181
          }
          Rotation {
            Roll: 23.0188942
          }
          Scale {
            X: 0.274655372
            Y: 0.669808865
            Z: 0.890700698
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 14512293474027708788
        Name: "Sphere"
        Transform {
          Location {
            X: 0.634033203
            Y: 19.7283592
            Z: 167.796
          }
          Rotation {
            Roll: -21.6231384
          }
          Scale {
            X: 0.373869032
            Y: 0.33913511
            Z: 0.629971087
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 3091264310783977576
        Name: "Sphere"
        Transform {
          Location {
            X: 0.634033203
            Y: -12.3828735
          }
          Rotation {
          }
          Scale {
            X: 0.318053246
            Y: 0.295683324
            Z: 0.397632688
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 1487962178347326892
        Name: "Sphere"
        Transform {
          Location {
            X: 0.634033203
            Y: -28.1513672
            Z: 5.60137939
          }
          Rotation {
            Roll: 56.7956085
          }
          Scale {
            X: 0.103000283
            Y: 0.136393785
            Z: 0.31027016
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 3229628018533752532
        Name: "Sphere"
        Transform {
          Location {
            X: -6.89176035
            Y: -50.1041718
            Z: 59.0514145
          }
          Rotation {
          }
          Scale {
            X: 0.132214502
            Y: 0.122915342
            Z: 0.104372755
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 15667079999126925840
        Name: "Sphere"
        Transform {
          Location {
            X: -25.895752
            Y: -21.675415
            Z: 130.059357
          }
          Rotation {
          }
          Scale {
            X: 0.0810659826
            Y: 0.100190967
            Z: 0.0639950931
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 11490446838650577963
        Name: "Sphere"
        Transform {
          Location {
            X: -18.1357517
            Y: 9.94099331
            Z: 139.345474
          }
          Rotation {
            Pitch: 8.95543575
            Yaw: 1.54196687e-06
            Roll: -9.15527344e-05
          }
          Scale {
            X: 0.514728308
            Y: 0.443051875
            Z: 0.398570299
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 11032510766489492279
        Name: "Sphere"
        Transform {
          Location {
            X: 12.8767252
            Y: 17.8253574
            Z: 137.284225
          }
          Rotation {
            Pitch: 8.95543575
            Yaw: 1.54196687e-06
            Roll: -9.15527344e-05
          }
          Scale {
            X: 0.514728308
            Y: 0.443051875
            Z: 0.398570299
          }
        }
        ParentId: 10235325581243518898
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 2344422232315352433
        Name: "Wings"
        Transform {
          Location {
            X: -37.8119812
            Y: 73.4228821
            Z: 124.045975
          }
          Rotation {
            Pitch: 0.0443552472
            Yaw: -0.418701172
            Roll: 6.04698896
          }
          Scale {
            X: 1.18337595
            Y: 1.18337595
            Z: 1.18337595
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 15727367178686808090
        ChildIds: 15772503083531261301
        ChildIds: 10888686485045270091
        ChildIds: 12720770713965093932
        ChildIds: 17697498861291472727
        ChildIds: 17254897580718415144
        ChildIds: 3390117144628234169
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15727367178686808090
        Name: "Sphere"
        Transform {
          Location {
            Y: 32.5843811
            Z: 83.4069824
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.45067465
            Z: 0.320140719
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 15772503083531261301
        Name: "Sphere"
        Transform {
          Location {
            Y: 19.9483948
            Z: 52.4138794
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.28029823
            Z: 0.245979846
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 10888686485045270091
        Name: "Sphere"
        Transform {
          Location {
            Y: -18.2761841
            Z: 35.3604736
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.612980485
            Z: 0.275995344
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 12720770713965093932
        Name: "Sphere"
        Transform {
          Location {
            Y: 4.80413818
            Z: 24.6981201
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.10071826
            Z: 0.264475793
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 17697498861291472727
        Name: "Sphere"
        Transform {
          Location {
            Y: -29.8455505
            Z: 11.0715027
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.458948016
            Z: 0.242039621
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 17254897580718415144
        Name: "Sphere"
        Transform {
          Location {
            Y: -5.64019775
            Z: 66.3535767
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.868695
            Z: 0.359205455
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 3390117144628234169
        Name: "Capsule"
        Transform {
          Location {
            X: -0.447265625
            Y: -43.7674561
            Z: 33.9261169
          }
          Rotation {
            Roll: 27.873003
          }
          Scale {
            X: 0.212626934
            Y: 0.253016979
            Z: 0.426200897
          }
        }
        ParentId: 2344422232315352433
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 2223299048457844962
        Name: "Wings"
        Transform {
          Location {
            X: -21.1177158
            Y: 81.4497223
            Z: 162.521744
          }
          Rotation {
            Pitch: 1.41279042
            Yaw: 0.304097414
            Roll: -12.5479431
          }
          Scale {
            X: 1.18337595
            Y: 1.18337595
            Z: 1.18337595
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 14699775197086560202
        ChildIds: 1032577770263527245
        ChildIds: 10348305374654636369
        ChildIds: 561561404952838452
        ChildIds: 17282017720658358381
        ChildIds: 1265931160911331572
        ChildIds: 4062181895637385134
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14699775197086560202
        Name: "Sphere"
        Transform {
          Location {
            Y: 32.5843811
            Z: 83.4069824
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.45067465
            Z: 0.320140719
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 1032577770263527245
        Name: "Sphere"
        Transform {
          Location {
            Y: 19.9483948
            Z: 52.4138794
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.28029823
            Z: 0.245979846
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 10348305374654636369
        Name: "Sphere"
        Transform {
          Location {
            Y: -18.2761841
            Z: 35.3604736
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.612980485
            Z: 0.275995344
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 561561404952838452
        Name: "Sphere"
        Transform {
          Location {
            Y: 4.80413818
            Z: 24.6981201
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.173755839
            Y: 1.10071826
            Z: 0.264475793
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 17282017720658358381
        Name: "Sphere"
        Transform {
          Location {
            Y: -29.8455505
            Z: 11.0715027
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.458948016
            Z: 0.242039621
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 1265931160911331572
        Name: "Sphere"
        Transform {
          Location {
            Y: -5.64019775
            Z: 66.3535767
          }
          Rotation {
            Roll: -20.6264954
          }
          Scale {
            X: 0.223072231
            Y: 0.868695
            Z: 0.359205455
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 4062181895637385134
        Name: "Capsule"
        Transform {
          Location {
            X: -0.447265625
            Y: -43.7674561
            Z: 33.9261169
          }
          Rotation {
            Roll: 27.873003
          }
          Scale {
            X: 0.212626934
            Y: 0.253016979
            Z: 0.426200897
          }
        }
        ParentId: 2223299048457844962
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 15394977728386693658
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
        Id: 7859530756139077768
        Name: "Arm"
        Transform {
          Location {
            X: -34.1313477
            Y: -61.2954102
            Z: 141.96814
          }
          Rotation {
            Pitch: -20.2406502
            Yaw: 23.4244442
            Roll: 62.2370415
          }
          Scale {
            X: 1.13250077
            Y: 1.13250077
            Z: 1.13250077
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 300314660846677917
        ChildIds: 3148214715768490854
        ChildIds: 4180980760577661897
        ChildIds: 15847984436709482061
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 300314660846677917
        Name: "Sphere"
        Transform {
          Location {
            X: 4.47477436
            Y: -4.08281374
            Z: 16.3504982
          }
          Rotation {
            Pitch: 4.12237406
            Yaw: -1.49719238
            Roll: 7.11139202
          }
          Scale {
            X: 0.447983503
            Y: 0.345911592
            Z: 0.890976548
          }
        }
        ParentId: 7859530756139077768
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 3148214715768490854
        Name: "Sphere"
        Transform {
          Location {
            X: -15.5253124
            Y: -24.2668762
            Z: -50.1246071
          }
          Rotation {
            Pitch: 0.659044921
            Yaw: -7.87927246
            Roll: 46.3682556
          }
          Scale {
            X: 0.286853433
            Y: 0.345909357
            Z: 0.812102139
          }
        }
        ParentId: 7859530756139077768
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 4180980760577661897
        Name: "Sphere"
        Transform {
          Location {
            X: -5.54030895
            Y: -1.33661819
            Z: -27.2138
          }
          Rotation {
            Pitch: -0.00131225586
            Yaw: -0.00152587891
            Roll: 34.772419
          }
          Scale {
            X: 0.355147779
            Y: 0.36522451
            Z: 0.43482703
          }
        }
        ParentId: 7859530756139077768
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 15847984436709482061
        Name: "Hand"
        Transform {
          Location {
            X: -40.0358
            Y: -60.3753433
            Z: -95.5338211
          }
          Rotation {
            Pitch: 24.2114353
            Yaw: -95.7220535
            Roll: -57.7294121
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7859530756139077768
        ChildIds: 6026144273393876296
        ChildIds: 6641405370021159339
        ChildIds: 3505514319380152267
        ChildIds: 6717038567200811269
        ChildIds: 12664928157393387553
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6026144273393876296
        Name: "Sphere"
        Transform {
          Location {
            X: -2.84158325
            Y: 15.4183359
            Z: -6.87892243e-05
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 1.40872689e-05
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.376733273
            Y: 0.321549028
            Z: 0.153925925
          }
        }
        ParentId: 15847984436709482061
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 8071675708167341076
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
        Id: 6641405370021159339
        Name: "Sphere"
        Transform {
          Location {
            X: 6.80004883
            Y: -8.2119751
          }
          Rotation {
            Pitch: 8.72910404
            Yaw: 13.0124807
            Roll: 92.008194
          }
          Scale {
            X: 0.110929057
            Y: 0.0690800548
            Z: 0.138042614
          }
        }
        ParentId: 15847984436709482061
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 15394977728386693658
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
        Id: 3505514319380152267
        Name: "Sphere"
        Transform {
          Location {
            X: -6.91357422
            Y: -11.1630859
          }
          Rotation {
            Pitch: 8.95543575
            Yaw: 6.05016885e-06
            Roll: 89.9999466
          }
          Scale {
            X: 0.110930987
            Y: 0.0690804273
            Z: 0.150578246
          }
        }
        ParentId: 15847984436709482061
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 15394977728386693658
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
        Id: 6717038567200811269
        Name: "Sphere"
        Transform {
          Location {
            X: -20.220459
            Y: -6.44683838
          }
          Rotation {
            Pitch: 8.57627201
            Yaw: -16.8628235
            Roll: 87.4118
          }
          Scale {
            X: 0.110932074
            Y: 0.0690808147
            Z: 0.122431815
          }
        }
        ParentId: 15847984436709482061
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 15394977728386693658
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
        Id: 12664928157393387553
        Name: "Sphere"
        Transform {
          Location {
            X: 23.1743164
            Y: 10.4036255
            Z: 1.52587891e-05
          }
          Rotation {
            Pitch: 5.66163206
            Yaw: 51.0217934
            Roll: 96.9495468
          }
          Scale {
            X: 0.110929057
            Y: 0.0690800548
            Z: 0.138042614
          }
        }
        ParentId: 15847984436709482061
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        CoreMesh {
          MeshAsset {
            Id: 15394977728386693658
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
        Id: 3502953303488585323
        Name: "Leg"
        Transform {
          Location {
            X: -49.536377
            Y: 51.1269531
            Z: 16.7032471
          }
          Rotation {
            Pitch: 31.0564251
            Yaw: 19.8321285
            Roll: -55.0426025
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 17525775559221939997
        ChildIds: 8934083269875324944
        ChildIds: 16469594728943294200
        ChildIds: 9323648201292066638
        ChildIds: 1149222618261094943
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17525775559221939997
        Name: "Sphere"
        Transform {
          Location {
            X: 26.3727283
            Y: -16.8596802
            Z: 18.4784031
          }
          Rotation {
            Pitch: -10.7463684
            Yaw: -6.55841064
            Roll: 28.7289906
          }
          Scale {
            X: 0.434965044
            Y: 0.621226072
            Z: 1.08204198
          }
        }
        ParentId: 3502953303488585323
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 8934083269875324944
        Name: "Sphere"
        Transform {
          Location {
            X: 13.2605467
            Y: -16.4885273
            Z: -41.3960495
          }
          Rotation {
            Pitch: 6.7212472
            Yaw: -8.11230469
            Roll: -53.2154541
          }
          Scale {
            X: 0.319954038
            Y: 0.407770485
            Z: 0.808402777
          }
        }
        ParentId: 3502953303488585323
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 16469594728943294200
        Name: "Sphere"
        Transform {
          Location {
            X: 8.98465443
            Y: -31.9904919
            Z: -15.6200323
          }
          Rotation {
            Pitch: 42.801342
          }
          Scale {
            X: 0.31057927
            Y: 0.374307871
            Z: 0.445641041
          }
        }
        ParentId: 3502953303488585323
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 9323648201292066638
        Name: "Sphere"
        Transform {
          Location {
            X: 18.5774918
            Y: 1.59049153
            Z: -53.2655602
          }
          Rotation {
            Pitch: 35.1705589
            Yaw: -26.1585083
            Roll: -40.4544678
          }
          Scale {
            X: 0.355069667
            Y: 0.305627108
            Z: 0.279658288
          }
        }
        ParentId: 3502953303488585323
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 1149222618261094943
        Name: "Sphere"
        Transform {
          Location {
            X: 27.8476257
            Y: -6.55463505
            Z: -78.8267136
          }
          Rotation {
            Pitch: -0.00241088867
            Yaw: 0.00115134427
            Roll: -51.4070435
          }
          Scale {
            X: 0.31057927
            Y: 0.682281494
            Z: 0.251602083
          }
        }
        ParentId: 3502953303488585323
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 15106924336291946582
        Name: "Leg"
        Transform {
          Location {
            X: 36.3979492
            Y: 13.7321777
          }
          Rotation {
            Pitch: -19.2099609
            Yaw: -1.13014437e-06
            Roll: -18.4988937
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 2110839042295114843
        ChildIds: 14086552393147268775
        ChildIds: 6078624469109459237
        ChildIds: 4549614268262042697
        ChildIds: 4488949891680078820
        IsStatic: true
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2110839042295114843
        Name: "Sphere"
        Transform {
          Location {
            X: -40.5570564
            Y: 8.30233765
            Z: 7.2755928
          }
          Rotation {
            Pitch: 8.12871
            Yaw: 16.7839108
            Roll: 28.4912148
          }
          Scale {
            X: 0.388779223
            Y: 0.621226
            Z: 1.0820421
          }
        }
        ParentId: 15106924336291946582
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 14086552393147268775
        Name: "Sphere"
        Transform {
          Location {
            X: -23.5782509
            Y: 2.22629952
            Z: -72.277153
          }
          Rotation {
            Pitch: -1.72103882
            Yaw: -6.46356201
            Roll: -20.6706848
          }
          Scale {
            X: 0.285980493
            Y: 0.443589181
            Z: 0.841732204
          }
        }
        ParentId: 15106924336291946582
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 6078624469109459237
        Name: "Sphere"
        Transform {
          Location {
            X: -29.4249516
            Y: -13.0992794
            Z: -26.8227482
          }
          Rotation {
            Pitch: 42.801342
            Yaw: 2.42293027e-06
            Roll: 2.08073738e-13
          }
          Scale {
            X: 0.277601182
            Y: 0.374307841
            Z: 0.4456411
          }
        }
        ParentId: 15106924336291946582
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 4549614268262042697
        Name: "Sphere"
        Transform {
          Location {
            X: -20.321476
            Y: 13.9528561
            Z: -105.320755
          }
          Rotation {
            Pitch: 16.5963268
            Yaw: 2.72232664e-05
            Roll: -0.000213623047
          }
          Scale {
            X: 0.277601659
            Y: 0.374307841
            Z: 0.327824622
          }
        }
        ParentId: 15106924336291946582
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 4488949891680078820
        Name: "Sphere"
        Transform {
          Location {
            X: -9.14735222
            Y: -5.97972584
            Z: -118.958282
          }
          Rotation {
            Pitch: 13.0290766
            Yaw: 29.9714108
            Roll: -6.43139648
          }
          Scale {
            X: 0.275628686
            Y: 0.703453422
            Z: 0.251602471
          }
        }
        ParentId: 15106924336291946582
        IsStatic: true
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8071675708167341076
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
        Id: 7951721256511512567
        Name: "Bow"
        Transform {
          Location {
            X: -11.1852741
            Y: -159.046249
            Z: 194.559677
          }
          Rotation {
            Pitch: 89.6262131
            Yaw: -1.75695801
            Roll: -4.02468872
          }
          Scale {
            X: 0.354666501
            Y: 0.354666501
            Z: 0.354666501
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 17515180450404904439
        ChildIds: 8060861016063468908
        ChildIds: 6906101748250303686
        ChildIds: 1730554556893215553
        ChildIds: 14885011026691589317
        ChildIds: 8008710136399595125
        ChildIds: 5535408470904780285
        UnregisteredParameters {
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17515180450404904439
        Name: "Half-pipe"
        Transform {
          Location {
            X: 1.20275879
            Y: -33.8812256
          }
          Rotation {
          }
          Scale {
            X: 4.7940383
            Y: 1.70851398
            Z: 0.0992246717
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 5549664744133753012
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
        Id: 8060861016063468908
        Name: "Arrow"
        Transform {
          Location {
            X: 1.35180664
            Y: 48.7902832
            Z: 15.0261383
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7951721256511512567
        ChildIds: 4889389875156272411
        ChildIds: 14944165283404378423
        ChildIds: 3035285131016608577
        ChildIds: 8580412985509885474
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4889389875156272411
        Name: "Pyramid"
        Transform {
          Location {
            X: 0.189147949
            Y: -252.354492
          }
          Rotation {
            Pitch: 44.9961624
            Yaw: -179.999954
            Roll: 89.996048
          }
          Scale {
            X: 0.283314019
            Y: 0.283314258
            Z: 0.69580251
          }
        }
        ParentId: 8060861016063468908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 14944165283404378423
        Name: "Pyramid"
        Transform {
          Location {
            X: 0.189147949
            Y: -44.1234131
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.119733676
            Y: 0.119732834
            Z: 4.34324551
          }
        }
        ParentId: 8060861016063468908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        Id: 3035285131016608577
        Name: "Pyramid"
        Transform {
          Location {
            X: 19.2792358
            Y: 148.238892
            Z: 0.155693054
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: 165.015961
            Roll: 89.9998779
          }
          Scale {
            X: 0.376880348
            Y: 0.0796101615
            Z: 0.752254128
          }
        }
        ParentId: 8060861016063468908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 8580412985509885474
        Name: "Pyramid"
        Transform {
          Location {
            X: -19.6575317
            Y: 148.238892
            Z: 0.155693054
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -165.015701
            Roll: 89.9998779
          }
          Scale {
            X: 0.376880348
            Y: 0.0796101615
            Z: 0.752254128
          }
        }
        ParentId: 8060861016063468908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 6906101748250303686
        Name: "Pyramid"
        Transform {
          Location {
            X: -209.606323
            Y: -48.392334
            Z: 5.69696045
          }
          Rotation {
            Pitch: 0.000286867929
            Yaw: 28.1073723
            Roll: 89.9992371
          }
          Scale {
            X: 0.562515557
            Y: 0.170772985
            Z: 1.34730089
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 1730554556893215553
        Name: "Pyramid"
        Transform {
          Location {
            X: 213.305481
            Y: -48.392334
            Z: 5.69696045
          }
          Rotation {
            Pitch: -0.00039615095
            Yaw: -21.554554
            Roll: 89.9987717
          }
          Scale {
            X: 0.562515557
            Y: 0.170772985
            Z: 1.34730089
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 14885011026691589317
        Name: "Pyramid"
        Transform {
          Location {
            X: -7.10113525
            Y: -103.818359
            Z: 3.68364716
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -179.999954
            Roll: 90.0000687
          }
          Scale {
            X: 1.40173483
            Y: 0.186450616
            Z: 0.453860462
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 13424149910980626070
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
        Id: 8008710136399595125
        Name: "Pyramid"
        Transform {
          Location {
            X: -125.076721
            Y: 90.9112549
            Z: 4.20711517
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: -56.4501801
            Roll: -89.9987717
          }
          Scale {
            X: 0.0767466724
            Y: 0.0767443851
            Z: 2.98222399
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        Id: 5535408470904780285
        Name: "Pyramid"
        Transform {
          Location {
            X: 125.924164
            Y: 94.7823486
            Z: 4.2077713
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: 56.4424362
            Roll: -89.9990234
          }
          Scale {
            X: 0.0767454356
            Y: 0.0767445862
            Z: 2.89289379
          }
        }
        ParentId: 7951721256511512567
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
        Id: 14282651633809993805
        Name: "Base"
        Transform {
          Location {
            X: -38.4224815
            Y: 43.0206108
            Z: -175.933792
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12516503620214073225
        ChildIds: 4265226576674015975
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4265226576674015975
        Name: "Base"
        Transform {
          Location {
            X: 37.303463
            Y: 11.3663073
            Z: -23.2292366
          }
          Rotation {
          }
          Scale {
            X: 0.631927669
            Y: 6.11825037
            Z: 0.868778467
          }
        }
        ParentId: 14282651633809993805
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 14937821675437983489
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
        Id: 12083728285601403488
        Name: "Sig"
        Transform {
          Location {
            X: -5.26139975
            Y: 0.0419209599
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11904987624987040880
        ChildIds: 9954935080710202619
        ChildIds: 7393802589763876891
        ChildIds: 13019687741329818484
        ChildIds: 8127105014333611183
        ChildIds: 12747607726481982691
        ChildIds: 6144315422104893037
        ChildIds: 12867952506445295135
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
        Id: 9954935080710202619
        Name: "Text 05: L"
        Transform {
          Location {
            X: -6.67572e-06
            Y: -9.38259125
            Z: 0.0807933807
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 5867684567640848142
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
        Id: 7393802589763876891
        Name: "Text 05: L"
        Transform {
          Location {
            X: -4.29153442e-06
            Y: -6.36301899
            Z: 0.304679871
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 7188630125462361426
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
        Id: 13019687741329818484
        Name: "Text 05: L"
        Transform {
          Location {
            X: -2.38418579e-06
            Y: -3.60422516
            Z: 0.378189087
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 10756347735216452893
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
        Id: 8127105014333611183
        Name: "Text 05: L"
        Transform {
          Location {
            Y: -0.0498069525
            Z: 0.294340134
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 7188630125462361426
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
        Id: 12747607726481982691
        Name: "Text 05: L"
        Transform {
          Location {
            X: 2.86102295e-06
            Y: 3.08288383
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 9231108410971911497
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
        Id: 6144315422104893037
        Name: "Text 05: L"
        Transform {
          Location {
            X: 5.24520874e-06
            Y: 6.63667822
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 15657395001948028112
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
        Id: 12867952506445295135
        Name: "Text 05: L"
        Transform {
          Location {
            X: 8.10623169e-06
            Y: 9.68008
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.0282726865
            Y: 0.0282726865
            Z: 0.0282726865
          }
        }
        ParentId: 12083728285601403488
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 1077013795481713821
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              R: 3
              G: 3
              B: 0.526
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 3
              G: 3
              B: 0.526
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
            Id: 9626183138136929485
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
        Id: 241862131666567196
        Name: "Palm Tree"
        Transform {
          Location {
            X: 4.43211937
            Y: 0.94237262
            Z: 0.709074
          }
          Rotation {
          }
          Scale {
            X: 0.0699901581
            Y: 0.0699901581
            Z: 0.0699901581
          }
        }
        ParentId: 11904987624987040880
        ChildIds: 17780994790497564282
        ChildIds: 754036343930613410
        ChildIds: 4246361390651953127
        ChildIds: 15435018744786534776
        ChildIds: 9209855060972546044
        ChildIds: 16884949885342687278
        ChildIds: 2081101129051804523
        ChildIds: 15548294416765741697
        ChildIds: 2600277846216798427
        ChildIds: 7908761383809275827
        ChildIds: 14386453488159782714
        ChildIds: 3620713379752845335
        ChildIds: 16192662004842936868
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 17780994790497564282
        Name: "Pipe - 45-Degree Long "
        Transform {
          Location {
            X: -0.631844103
            Y: -18.3840485
            Z: 398.049438
          }
          Rotation {
            Pitch: -5.65899658
            Yaw: 88.8236389
            Roll: 0.116011679
          }
          Scale {
            X: 0.633604288
            Y: 0.5
            Z: 0.99999994
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 636959216910929115
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
        Id: 754036343930613410
        Name: "Pipe"
        Transform {
          Location {
            Y: -57.8352852
          }
          Rotation {
            Roll: 5.66019249
          }
          Scale {
            X: 0.395911217
            Y: 0.669469297
            Z: 3.99999976
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 3065043153909758577
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
        Id: 4246361390651953127
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: 1.21937311
            Yaw: -0.977050781
            Roll: 86.0407867
          }
          Scale {
            X: 0.100000106
            Y: 0.963782549
            Z: 2.10412049
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
        Id: 15435018744786534776
        Name: "Sphere"
        Transform {
          Location {
            X: 34.3252754
            Y: -32.7212296
            Z: 487.27713
          }
          Rotation {
            Pitch: 3.5726738
            Roll: 24.0394764
          }
          Scale {
            X: 0.249826103
            Y: 0.49999997
            Z: 0.8
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 1551081636820824001
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
        Id: 9209855060972546044
        Name: "Sphere"
        Transform {
          Location {
            X: 27.3574715
            Y: -1.20554233
            Z: 523.957947
          }
          Rotation {
            Pitch: 20.0145645
            Roll: 17.2204723
          }
          Scale {
            X: 0.30811891
            Y: 0.616666794
            Z: 0.986666381
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 1551081636820824001
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
        Id: 16884949885342687278
        Name: "Sphere"
        Transform {
          Location {
            X: 23.3805218
            Y: 63.9168701
            Z: 506.481659
          }
          Rotation {
            Pitch: 7.84943724
            Yaw: 19.121973
            Roll: -11.5906677
          }
          Scale {
            X: 0.249826118
            Y: 0.49999997
            Z: 0.8
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 1551081636820824001
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
        Id: 2081101129051804523
        Name: "Sphere"
        Transform {
          Location {
            X: -26.3173752
            Y: -0.374572635
            Z: 526.769
          }
          Rotation {
            Pitch: -24.7582092
            Yaw: 5.3425282e-08
            Roll: 0.00223731832
          }
          Scale {
            X: 0.249826103
            Y: 0.49999997
            Z: 0.8
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 1551081636820824001
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
        Id: 15548294416765741697
        Name: "Grass Tall"
        Transform {
          Location {
            X: -13.3006201
            Y: -59.9802666
            Z: -29.9218159
          }
          Rotation {
            Pitch: 77.3967743
            Yaw: 4.47714329
            Roll: -174.396774
          }
          Scale {
            X: 0.261018246
            Y: 1.24518371
            Z: 0.337199
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 8746826506400154617
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
        Id: 2600277846216798427
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: -1.14544678
            Yaw: -4.54019165
            Roll: 35.5497513
          }
          Scale {
            X: 0.10000056
            Y: 0.96378386
            Z: 1.84053588
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
        Id: 7908761383809275827
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: -7.51400757
            Yaw: -0.0906982422
            Roll: -35.0601196
          }
          Scale {
            X: 0.100000598
            Y: 0.963784933
            Z: 1.13623989
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
        Id: 14386453488159782714
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: -7.11645508
            Yaw: 1.725927
            Roll: -102.556946
          }
          Scale {
            X: 0.100000605
            Y: 0.963785
            Z: 1.13624012
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
        Id: 3620713379752845335
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: -7.51400757
            Yaw: -0.0907897949
            Roll: -66.2007141
          }
          Scale {
            X: 0.10000056
            Y: 0.583727419
            Z: 1.47247767
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
        Id: 16192662004842936868
        Name: "Fern 03"
        Transform {
          Location {
            X: 6.36052036
            Y: -11.2233467
            Z: 520.742
          }
          Rotation {
            Pitch: -7.51400757
            Yaw: -0.0907897949
            Roll: 57.004734
          }
          Scale {
            X: 0.100000605
            Y: 0.963785
            Z: 1.13624012
          }
        }
        ParentId: 241862131666567196
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 14733210545649003587
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14733210545649003587
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
            Id: 12338314996582270453
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
    }
    Assets {
      Id: 3235163546829614436
      Name: "Gear - generic large solid"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_gear_001"
      }
    }
    Assets {
      Id: 14212988502358508072
      Name: "Metal Basic Steel"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "steel_001"
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
      Id: 14733210545649003587
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
      }
    }
    Assets {
      Id: 574049115731752623
      Name: "Star - Faceted 5-Pointed"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_star_faceted_5pointed_001"
      }
    }
    Assets {
      Id: 8071675708167341076
      Name: "Ball"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_001"
      }
    }
    Assets {
      Id: 15394977728386693658
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 13066946232358571547
      Name: "Sphere - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 5549664744133753012
      Name: "Pipe - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_001"
      }
    }
    Assets {
      Id: 13424149910980626070
      Name: "Pyramid - 4-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_001"
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
      Id: 14937821675437983489
      Name: "Column Segment 1m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_column_segment_001"
      }
    }
    Assets {
      Id: 5867684567640848142
      Name: "Text 05: L"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_011"
      }
    }
    Assets {
      Id: 1077013795481713821
      Name: "Metal Steel Brushed"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stainless-steel_001_uv"
      }
    }
    Assets {
      Id: 7188630125462361426
      Name: "Text 05: E"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_004"
      }
    }
    Assets {
      Id: 10756347735216452893
      Name: "Text 05: G"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_006"
      }
    }
    Assets {
      Id: 9231108410971911497
      Name: "Text 05: N"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_013"
      }
    }
    Assets {
      Id: 15657395001948028112
      Name: "Text 05: D"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_003"
      }
    }
    Assets {
      Id: 9626183138136929485
      Name: "Text 05: S"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_018"
      }
    }
    Assets {
      Id: 636959216910929115
      Name: "Pipe - 45-Degree Long "
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_curve45_004"
      }
    }
    Assets {
      Id: 3065043153909758577
      Name: "Pipe"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_001"
      }
    }
    Assets {
      Id: 12338314996582270453
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 1551081636820824001
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 8746826506400154617
      Name: "Hill 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Metal Detecting Props"
}
