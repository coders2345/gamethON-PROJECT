Name: "PreviewParent_3"
RootId: 5595162876270116493
Objects {
  Id: 12043669791826566394
  Name: "IronMetalDetector"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 9.56226431e-05
      Yaw: 2.04906191e-05
      Roll: 8.19621855e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5595162876270116493
  ChildIds: 2993990614328034157
  ChildIds: 9781812584852318034
  UnregisteredParameters {
    Overrides {
      Name: "cs:DetectorHeadCenter"
      ObjectReference {
        SelfId: 9781812584852318034
      }
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
  Id: 9781812584852318034
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
  ParentId: 12043669791826566394
  ChildIds: 16411138447151140153
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
  Id: 16411138447151140153
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
  ParentId: 9781812584852318034
  ChildIds: 13573883279533559198
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
      Float: 0.624748826
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
        R: 0.132449985
        G: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Line Color"
      Color {
        R: 0.397349238
        G: 3
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
  Id: 13573883279533559198
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
  ParentId: 16411138447151140153
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
        SelfId: 12043669791826566394
      }
    }
    Overrides {
      Name: "cs:PulseScanPostProcess"
      ObjectReference {
        SelfId: 16411138447151140153
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
Objects {
  Id: 2993990614328034157
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
  ParentId: 12043669791826566394
  ChildIds: 10166944733883144300
  ChildIds: 6799917063839441759
  ChildIds: 17649726431284467945
  ChildIds: 5935571092686145004
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
  Id: 5935571092686145004
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
  ParentId: 2993990614328034157
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17649726431284467945
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
  ParentId: 2993990614328034157
  ChildIds: 10800040533016037230
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
  Id: 10800040533016037230
  Name: "MergedModel"
  Transform {
    Location {
      X: 39.4188843
      Y: 0.695147634
      Z: -164.650604
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17649726431284467945
  ChildIds: 9405093573247114590
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
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9405093573247114590
  Name: "Group"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 179.999893
      Roll: 7.27971465e-19
    }
    Scale {
      X: 0.836362481
      Y: 0.836362481
      Z: 0.836362481
    }
  }
  ParentId: 10800040533016037230
  ChildIds: 1327426549497476739
  ChildIds: 16465557249204418341
  ChildIds: 6608334489635257770
  ChildIds: 12433892477342205511
  ChildIds: 14153767387891322021
  ChildIds: 16427083728509028197
  ChildIds: 7349357591776283593
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
  Id: 7349357591776283593
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
  ParentId: 9405093573247114590
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16427083728509028197
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
  ParentId: 9405093573247114590
  ChildIds: 3523907503705387056
  ChildIds: 1689268435358141410
  ChildIds: 5821342560463174257
  ChildIds: 9583585944729213421
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
  Id: 9583585944729213421
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
  ParentId: 16427083728509028197
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5821342560463174257
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
  ParentId: 16427083728509028197
  ChildIds: 7001974182956569963
  ChildIds: 6694656322182936425
  ChildIds: 7744647735735006971
  ChildIds: 14733996453007350639
  ChildIds: 15851494408594365595
  ChildIds: 5379083126014890689
  ChildIds: 11310149069757784176
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
  Id: 11310149069757784176
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5379083126014890689
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15851494408594365595
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14733996453007350639
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7744647735735006971
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6694656322182936425
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7001974182956569963
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
  ParentId: 5821342560463174257
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1689268435358141410
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
  ParentId: 16427083728509028197
  ChildIds: 5966768508337128289
  ChildIds: 4377631316205812252
  ChildIds: 5515278306905804896
  ChildIds: 5460899984289026226
  ChildIds: 71591873293859347
  ChildIds: 11883380598531416669
  ChildIds: 17400804692970583051
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
  Id: 17400804692970583051
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11883380598531416669
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 71591873293859347
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5460899984289026226
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5515278306905804896
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4377631316205812252
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5966768508337128289
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
  ParentId: 1689268435358141410
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3523907503705387056
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
  ParentId: 16427083728509028197
  UnregisteredParameters {
    Overrides {
      Name: "cs:MinDistance"
      Float: 0
    }
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 12043669791826566394
      }
    }
    Overrides {
      Name: "cs:LitGroup"
      ObjectReference {
        SelfId: 1689268435358141410
      }
    }
    Overrides {
      Name: "cs:UnlitGroup"
      ObjectReference {
        SelfId: 5821342560463174257
      }
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
  Id: 14153767387891322021
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
  ParentId: 9405093573247114590
  ChildIds: 11837122751731185624
  ChildIds: 12111789830239792169
  ChildIds: 14154231968922806281
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
  Id: 14154231968922806281
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
  ParentId: 14153767387891322021
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12111789830239792169
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
  ParentId: 14153767387891322021
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11837122751731185624
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
  ParentId: 14153767387891322021
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12433892477342205511
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
  ParentId: 9405093573247114590
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6608334489635257770
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
  ParentId: 9405093573247114590
  ChildIds: 1971067226856508398
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1971067226856508398
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
  ParentId: 6608334489635257770
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
  Id: 16465557249204418341
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
  ParentId: 9405093573247114590
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1327426549497476739
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
  ParentId: 9405093573247114590
  ChildIds: 13220341282029576503
  ChildIds: 14722428815435264013
  ChildIds: 9286427422949975176
  ChildIds: 18388503833291467166
  ChildIds: 6790720686713574544
  ChildIds: 16156104011170844449
  ChildIds: 849660471399593287
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
  Id: 849660471399593287
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16156104011170844449
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6790720686713574544
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18388503833291467166
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9286427422949975176
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14722428815435264013
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13220341282029576503
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
  ParentId: 1327426549497476739
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
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6799917063839441759
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
  ParentId: 2993990614328034157
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
    Volume: 1
    Falloff: -1
    Radius: -1
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10166944733883144300
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
  ParentId: 2993990614328034157
  UnregisteredParameters {
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 12043669791826566394
      }
    }
    Overrides {
      Name: "cs:DetectorHead"
      ObjectReference {
        SelfId: 1327426549497476739
      }
    }
    Overrides {
      Name: "cs:Telescope"
      ObjectReference {
        SelfId: 6608334489635257770
      }
    }
    Overrides {
      Name: "cs:TelescopeEndHelper"
      ObjectReference {
        SelfId: 1971067226856508398
      }
    }
    Overrides {
      Name: "cs:Cable"
      ObjectReference {
        SelfId: 11837122751731185624
      }
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
