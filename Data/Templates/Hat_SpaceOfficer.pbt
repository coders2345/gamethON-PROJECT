Assets {
  Id: 4415778276885585856
  Name: "Hat_SpaceOfficer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 101258886139476220
      Objects {
        Id: 101258886139476220
        Name: "Hat_SpaceOfficer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5152147012886963795
        ChildIds: 3656668312746817915
        ChildIds: 14093008413901266459
        UnregisteredParameters {
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
          SocketName: "head"
          PickupTrigger {
            SubObjectId: 3656668312746817915
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3656668312746817915
        Name: "PickupTrigger"
        Transform {
          Location {
            Z: 19.8701096
          }
          Rotation {
          }
          Scale {
            X: 0.291352212
            Y: 0.291352212
            Z: 0.291352212
          }
        }
        ParentId: 101258886139476220
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
        Trigger {
          Interactable: true
          InteractionLabel: "Equip Military Helmet"
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
        Id: 14093008413901266459
        Name: "GeometryClientcontext"
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
        ParentId: 101258886139476220
        ChildIds: 14172619145737048184
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 14172619145737048184
        Name: "Head"
        Transform {
          Location {
            X: -1.56394255
            Z: -1.74209666
          }
          Rotation {
            Pitch: 25.7611904
            Yaw: 0.000194953929
            Roll: 0.000101888712
          }
          Scale {
            X: 1.21514022
            Y: 1.21514022
            Z: 1.21514022
          }
        }
        ParentId: 14093008413901266459
        ChildIds: 17253230919329919107
        ChildIds: 4802599015870762488
        ChildIds: 9541512148993978396
        ChildIds: 12568835659851013700
        ChildIds: 18316870246457196813
        ChildIds: 5956878057037446245
        ChildIds: 15567972638981648505
        ChildIds: 16991339214186475830
        ChildIds: 1219298132260425839
        ChildIds: 5417577068480952523
        ChildIds: 12642880894325607624
        ChildIds: 11678517383155322489
        ChildIds: 549127824328639360
        ChildIds: 4167054037763054622
        ChildIds: 3729172307711777373
        ChildIds: 10425948671899700631
        ChildIds: 15009016937268117995
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
        Id: 17253230919329919107
        Name: "1Scifi Panel 1x3m Angled Right"
        Transform {
          Location {
            X: 0.704603
            Y: 9.88122559
            Z: 5.64619207
          }
          Rotation {
            Pitch: -17.5814819
            Yaw: 0.264413357
            Roll: 89.1245499
          }
          Scale {
            X: 0.0219373386
            Y: 0.0219413098
            Z: 0.030534612
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12896130528947283414
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.167000011
              G: 0.167000011
              B: 0.167000011
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Lights:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Lights:id"
            AssetReference {
              Id: 10531911583027630075
            }
          }
          Overrides {
            Name: "ma:Shared_Lights2:id"
            AssetReference {
              Id: 10531911583027630075
            }
          }
          Overrides {
            Name: "ma:Shared_Lights2:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
        }
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
            Id: 645676917050584179
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
        Id: 4802599015870762488
        Name: "1Scifi Panel 1x3m Angled Right"
        Transform {
          Location {
            X: 0.704543054
            Y: -9.68835449
            Z: 5.64618635
          }
          Rotation {
            Pitch: -17.5814819
            Yaw: 0.264386505
            Roll: -90.8752747
          }
          Scale {
            X: 0.0219373386
            Y: 0.0219413098
            Z: 0.030534612
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12896130528947283414
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.167000011
              G: 0.167000011
              B: 0.167000011
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Lights:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Lights:id"
            AssetReference {
              Id: 10531911583027630075
            }
          }
          Overrides {
            Name: "ma:Shared_Lights2:id"
            AssetReference {
              Id: 10531911583027630075
            }
          }
          Overrides {
            Name: "ma:Shared_Lights2:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
        }
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
            Id: 645676917050584179
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
        Id: 9541512148993978396
        Name: "2Scifi Panel 1x3m Angled Right"
        Transform {
          Location {
            X: 2.96826172
            Y: -6.47473145
            Z: -1.93505859
          }
          Rotation {
            Pitch: 25.4319477
            Yaw: 8.96921825
            Roll: -92.5621796
          }
          Scale {
            X: -0.0537111424
            Y: 0.0297503024
            Z: -0.0981073678
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15314846851583848737
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.076000005
              G: 0.076000005
              B: 0.076000005
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
            Id: 267906990579783124
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
        Id: 12568835659851013700
        Name: "2Scifi Panel 1x3m Angled Right NORMHELM"
        Transform {
          Location {
            X: 2.96679688
            Y: 7.06256104
            Z: -1.93103027
          }
          Rotation {
            Pitch: -24.9157906
            Yaw: 170.994141
            Roll: -94.4788132
          }
          Scale {
            X: 0.0537771955
            Y: 0.0297503024
            Z: -0.0981073678
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15314846851583848737
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.076000005
              G: 0.076000005
              B: 0.076000005
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
            Id: 267906990579783124
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
        Id: 18316870246457196813
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 8.20850468
            Y: -2.29347806e-05
            Z: -7.4117384
          }
          Rotation {
            Pitch: -54.5119
            Yaw: 179.353561
            Roll: -0.275512695
          }
          Scale {
            X: 0.607311904
            Y: 0.336844444
            Z: 0.398574471
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15314846851583848737
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.076000005
              G: 0.076000005
              B: 0.076000005
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
        }
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
            Id: 13565029588868766776
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
        Id: 5956878057037446245
        Name: "4Hemisphere"
        Transform {
          Location {
            X: -7.26744127
            Y: 1.89720777e-05
            Z: 11.0145893
          }
          Rotation {
            Yaw: -90
            Roll: -17.4211426
          }
          Scale {
            X: 0.0969244167
            Y: 0.17245242
            Z: 0.107224457
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.79484832
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.962373674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0840000063
              G: 0.0840000063
              B: 0.0840000063
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.0840000063
              G: 0.0840000063
              B: 0.0840000063
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
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
            Id: 2029805166323635084
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
        Id: 15567972638981648505
        Name: "5Hemisphere"
        Transform {
          Location {
            X: 5.41723776
            Y: -2.19597623e-05
            Z: 17.8960743
          }
          Rotation {
            Yaw: -90
            Roll: -157.34079
          }
          Scale {
            X: 0.195805907
            Y: 0.0650346428
            Z: 0.748515725
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8738075464907660928
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.79484832
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.962373674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.693
              G: 0.103949986
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0840000063
              G: 0.0840000063
              B: 0.0840000063
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
            Id: 5138724637559304276
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
        Id: 16991339214186475830
        Name: "6Hemisphere"
        Transform {
          Location {
            X: -0.395635873
            Y: -4.19798471e-06
            Z: 18.0673428
          }
          Rotation {
            Yaw: -90
            Roll: 162.152405
          }
          Scale {
            X: 0.195805177
            Y: 0.0884338468
            Z: 0.580277622
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.79484832
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.962373674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0840000063
              G: 0.0840000063
              B: 0.0840000063
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
            Id: 5138724637559304276
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
        Id: 1219298132260425839
        Name: "10Pipe - Half Thick"
        Transform {
          Location {
            X: 0.885911405
            Y: 0.00180481246
            Z: 2.38164616
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: -89.9999771
            Roll: 2.0666306
          }
          Scale {
            X: 0.193525955
            Y: 0.212365031
            Z: 0.0621463172
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17807333251887737229
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.202597216
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.028
              G: 0.028
              B: 0.028
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
            Id: 18367172901088327762
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
        Id: 5417577068480952523
        Name: "11Pipe - Half Thick"
        Transform {
          Location {
            X: 3.13299179
            Y: 0.00174834603
            Z: 0.216675624
          }
          Rotation {
            Yaw: -89.9999847
            Roll: -18.4615097
          }
          Scale {
            X: 0.169413805
            Y: 0.210405245
            Z: 0.0860033482
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8738075464907660928
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.79484832
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.962373674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.693
              G: 0.103949986
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
            Id: 18367172901088327762
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
        Id: 12642880894325607624
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 3.72947526
            Y: -1.54352929e-05
            Z: 13.379653
          }
          Rotation {
            Pitch: -0.159942627
            Yaw: 89.1287231
            Roll: -137.931107
          }
          Scale {
            X: 0.120562859
            Y: 0.0538364947
            Z: 0.0243717376
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15985997584581978704
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.295000017
              G: 0.295000017
              B: 0.295000017
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
            Id: 10077496012100960035
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
        Id: 11678517383155322489
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 12.0214252
            Y: -3.75785e-05
            Z: 2.47064018
          }
          Rotation {
            Pitch: 0.159928873
            Yaw: -90.871521
            Roll: -70.4519958
          }
          Scale {
            X: 0.0757836252
            Y: 0.124903746
            Z: 0.0825260654
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15985997584581978704
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.295000017
              G: 0.295000017
              B: 0.295000017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 15314846851583848737
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.076000005
              G: 0.076000005
              B: 0.076000005
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.00619499106
              G: 0.121716969
              B: 0.295000017
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
            Id: 17876153376993330249
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
        Id: 549127824328639360
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 9.07855415
            Y: -3.22289161e-05
            Z: 14.7214794
          }
          Rotation {
            Pitch: 8.56290531
            Yaw: 179.104294
            Roll: 179.838104
          }
          Scale {
            X: 0.0551823266
            Y: 0.0543878041
            Z: 0.135240406
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.159999967
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
            Id: 156089531023089164
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
        Id: 4167054037763054622
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 13.337841
            Y: -4.15555223e-05
            Z: 2.28021407
          }
          Rotation {
            Pitch: 70.4512787
            Yaw: -0.421630859
            Roll: -179.522705
          }
          Scale {
            X: 0.28653729
            Y: 0.360635
            Z: 0.151851907
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 7044190312771008163
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.00619499106
              G: 0.121716969
              B: 0.295000017
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
            Id: 3105045034182515421
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
        Id: 3729172307711777373
        Name: "10Pipe - Half Thick"
        Transform {
          Location {
            X: 2.0708518
            Y: 0.00179976353
            Z: 7.11547089
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -90
            Roll: 2.06661224
          }
          Scale {
            X: 0.129723042
            Y: 0.250553161
            Z: 0.0733216107
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17807333251887737229
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.202597216
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.028
              G: 0.028
              B: 0.028
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
            Id: 18367172901088327762
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
        Id: 10425948671899700631
        Name: "6Hemisphere"
        Transform {
          Location {
            X: -5.75916529
            Y: 1.3194438e-05
            Z: 14.8737383
          }
          Rotation {
            Yaw: -90
            Roll: 135.021912
          }
          Scale {
            X: 0.195805147
            Y: 0.0633615628
            Z: 0.490566671
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.79484832
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.962373674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.159999967
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0840000063
              G: 0.0840000063
              B: 0.0840000063
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
            Id: 5138724637559304276
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
        Id: 15009016937268117995
        Name: "4Gem - Baguette Polished"
        Transform {
          Location {
            X: 9.37870789
            Y: -3.35077966e-05
            Z: 15.9205923
          }
          Rotation {
            Pitch: 8.56289864
            Yaw: 179.104263
            Roll: 179.838104
          }
          Scale {
            X: 0.0492177159
            Y: 0.0565240122
            Z: 0.140543193
          }
        }
        ParentId: 14172619145737048184
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15991689843390408579
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.99132359
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.441558838
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.072917
              G: 0.072917
              B: 0.072917
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0730000064
              G: 0.0708760768
              B: 0.069934
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
            Id: 156089531023089164
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
      Id: 645676917050584179
      Name: "Military Tank Modern Turret 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_mil_tank_mod_turret_001_ref"
      }
    }
    Assets {
      Id: 15991689843390408579
      Name: "Paper 9 Slice Gift Box Offset Ribbon 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_urb_giftbox_basic_plain_002"
      }
    }
    Assets {
      Id: 267906990579783124
      Name: "Sci-fi Panel 1x3m Angled Right"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_panel_1x3m_angledR_001"
      }
    }
    Assets {
      Id: 15314846851583848737
      Name: "Rubber Dot Panels 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_scf_rubber_panels_001_uv"
      }
    }
    Assets {
      Id: 13565029588868766776
      Name: "Sci-fi Cockpit Control Yoke"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_scf_ship_cockpit_yoke_001_ref"
      }
    }
    Assets {
      Id: 2029805166323635084
      Name: "Sci-fi Chest Rare Lid 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_scf_crate_med_lid_001_ref"
      }
    }
    Assets {
      Id: 5138724637559304276
      Name: "Sci-fi Chair Seat 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_scf_chair_001_seat_ref"
      }
    }
    Assets {
      Id: 18367172901088327762
      Name: "Pipe - Half Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_003"
      }
    }
    Assets {
      Id: 17807333251887737229
      Name: "Metal Floor Panel 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_scf_simple_floor_panel_002_uv"
      }
    }
    Assets {
      Id: 10077496012100960035
      Name: "Sci-fi Base Pillar 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_scf_base_pillar_001_ref"
      }
    }
    Assets {
      Id: 15985997584581978704
      Name: "Metal Vent Duct Square 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_urb_vent_duct_square_001_uv_ref"
      }
    }
    Assets {
      Id: 17876153376993330249
      Name: "Military Tank Historic Container 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_mil_tank_hst_container_003_ref"
      }
    }
    Assets {
      Id: 156089531023089164
      Name: "Military Tank Historic Turret 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_mil_tank_hst_turret_001_ref"
      }
    }
    Assets {
      Id: 3105045034182515421
      Name: "Barrier Reflector"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_barrier_reflector_001"
      }
    }
    Assets {
      Id: 7044190312771008163
      Name: "Radar Screen"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_radar"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
