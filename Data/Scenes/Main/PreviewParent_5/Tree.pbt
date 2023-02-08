Name: "PreviewParent_5"
RootId: 1335921223556627397
Objects {
  Id: 11225806703870712684
  Name: "IronMetalDetector"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 9.56226431e-05
      Yaw: 2.04905537e-05
      Roll: -3.1754651e-11
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1335921223556627397
  ChildIds: 15265506092678081572
  ChildIds: 11587689606883648882
  UnregisteredParameters {
    Overrides {
      Name: "cs:DetectorHeadCenter"
      ObjectReference {
        SelfId: 11587689606883648882
      }
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
  InstanceHistory {
    SelfId: 11225806703870712684
    SubobjectId: 8815243777727826795
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11587689606883648882
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
  ParentId: 11225806703870712684
  ChildIds: 1426371526878510162
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
  InstanceHistory {
    SelfId: 11587689606883648882
    SubobjectId: 4707286868676326773
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1426371526878510162
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
  ParentId: 11587689606883648882
  ChildIds: 11971022493325575722
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
  InstanceHistory {
    SelfId: 1426371526878510162
    SubobjectId: 17462539752632364117
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11971022493325575722
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
  ParentId: 1426371526878510162
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
        SelfId: 11225806703870712684
      }
    }
    Overrides {
      Name: "cs:PulseScanPostProcess"
      ObjectReference {
        SelfId: 1426371526878510162
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
  InstanceHistory {
    SelfId: 11971022493325575722
    SubobjectId: 5169437148255409709
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15265506092678081572
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
  ParentId: 11225806703870712684
  ChildIds: 3488996299070009837
  ChildIds: 13561197615025307135
  ChildIds: 18235195825223855997
  ChildIds: 14567911100991809004
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
  InstanceHistory {
    SelfId: 15265506092678081572
    SubobjectId: 3622550873776487459
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14567911100991809004
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
  ParentId: 15265506092678081572
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  InstanceHistory {
    SelfId: 14567911100991809004
    SubobjectId: 3150135776903116267
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18235195825223855997
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
  ParentId: 15265506092678081572
  ChildIds: 11814580920327182982
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
  InstanceHistory {
    SelfId: 18235195825223855997
    SubobjectId: 2057150830590459770
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11814580920327182982
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
  ParentId: 18235195825223855997
  ChildIds: 17122475120656187449
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
  Id: 17122475120656187449
  Name: "Group"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 179.999893
      Roll: 1.45577054e-19
    }
    Scale {
      X: 0.836362481
      Y: 0.836362481
      Z: 0.836362481
    }
  }
  ParentId: 11814580920327182982
  ChildIds: 10461049313463735969
  ChildIds: 2005299770513499286
  ChildIds: 761846233953420431
  ChildIds: 15483587849023815723
  ChildIds: 17422649854604717181
  ChildIds: 440252143430859592
  ChildIds: 6675854012084125193
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
  Id: 6675854012084125193
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
  ParentId: 17122475120656187449
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
  Id: 440252143430859592
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
  ParentId: 17122475120656187449
  ChildIds: 17778285240752209187
  ChildIds: 6906212950039302026
  ChildIds: 15718511541781553573
  ChildIds: 3160125524044128046
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
  Id: 3160125524044128046
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
  ParentId: 440252143430859592
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
  Id: 15718511541781553573
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
  ParentId: 440252143430859592
  ChildIds: 14061958791474895545
  ChildIds: 6601472348293108852
  ChildIds: 9513666038290834497
  ChildIds: 4468910843093359612
  ChildIds: 12789756080169586305
  ChildIds: 16412084518465041496
  ChildIds: 17570965637574755869
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
  Id: 17570965637574755869
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
  ParentId: 15718511541781553573
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
  Id: 16412084518465041496
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
  ParentId: 15718511541781553573
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
  Id: 12789756080169586305
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
  ParentId: 15718511541781553573
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
  Id: 4468910843093359612
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
  ParentId: 15718511541781553573
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
  Id: 9513666038290834497
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
  ParentId: 15718511541781553573
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
  Id: 6601472348293108852
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
  ParentId: 15718511541781553573
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
  Id: 14061958791474895545
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
  ParentId: 15718511541781553573
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
  Id: 6906212950039302026
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
  ParentId: 440252143430859592
  ChildIds: 10214389466867300083
  ChildIds: 7467970234841127773
  ChildIds: 376943502028871526
  ChildIds: 3127595295306411523
  ChildIds: 13596879375732756269
  ChildIds: 6452713065110867777
  ChildIds: 13996428320128333874
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
  Id: 13996428320128333874
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
  ParentId: 6906212950039302026
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
  Id: 6452713065110867777
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
  ParentId: 6906212950039302026
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
  Id: 13596879375732756269
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
  ParentId: 6906212950039302026
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
  Id: 3127595295306411523
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
  ParentId: 6906212950039302026
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
  Id: 376943502028871526
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
  ParentId: 6906212950039302026
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
  Id: 7467970234841127773
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
  ParentId: 6906212950039302026
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
  Id: 10214389466867300083
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
  ParentId: 6906212950039302026
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
  Id: 17778285240752209187
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
  ParentId: 440252143430859592
  UnregisteredParameters {
    Overrides {
      Name: "cs:MinDistance"
      Float: 0
    }
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 11225806703870712684
      }
    }
    Overrides {
      Name: "cs:LitGroup"
      ObjectReference {
        SelfId: 6906212950039302026
      }
    }
    Overrides {
      Name: "cs:UnlitGroup"
      ObjectReference {
        SelfId: 15718511541781553573
      }
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
  Id: 17422649854604717181
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
  ParentId: 17122475120656187449
  ChildIds: 8980998469587574578
  ChildIds: 18283240329053478166
  ChildIds: 13577366081722422058
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
  Id: 13577366081722422058
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
  ParentId: 17422649854604717181
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
  Id: 18283240329053478166
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
  ParentId: 17422649854604717181
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
  Id: 8980998469587574578
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
  ParentId: 17422649854604717181
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
  Id: 15483587849023815723
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
  ParentId: 17122475120656187449
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
  Id: 761846233953420431
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
  ParentId: 17122475120656187449
  ChildIds: 11766217914873819692
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
  Id: 11766217914873819692
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
  ParentId: 761846233953420431
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
  Id: 2005299770513499286
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
  ParentId: 17122475120656187449
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
  Id: 10461049313463735969
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
  ParentId: 17122475120656187449
  ChildIds: 4495957231869837089
  ChildIds: 12286181462030221024
  ChildIds: 11626579587844387191
  ChildIds: 1131631946478965046
  ChildIds: 324188862899222640
  ChildIds: 12412339361883763779
  ChildIds: 458125554533819903
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
  Id: 458125554533819903
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
  ParentId: 10461049313463735969
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
  Id: 12412339361883763779
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
  ParentId: 10461049313463735969
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
  Id: 324188862899222640
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
  ParentId: 10461049313463735969
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
  Id: 1131631946478965046
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
  ParentId: 10461049313463735969
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
  Id: 11626579587844387191
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
  ParentId: 10461049313463735969
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
  Id: 12286181462030221024
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
  ParentId: 10461049313463735969
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
  Id: 4495957231869837089
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
  ParentId: 10461049313463735969
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
  Id: 13561197615025307135
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
  ParentId: 15265506092678081572
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
  InstanceHistory {
    SelfId: 13561197615025307135
    SubobjectId: 6750640049062948344
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3488996299070009837
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
  ParentId: 15265506092678081572
  UnregisteredParameters {
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 11225806703870712684
      }
    }
    Overrides {
      Name: "cs:DetectorHead"
      ObjectReference {
        SelfId: 10461049313463735969
      }
    }
    Overrides {
      Name: "cs:Telescope"
      ObjectReference {
        SelfId: 761846233953420431
      }
    }
    Overrides {
      Name: "cs:TelescopeEndHelper"
      ObjectReference {
        SelfId: 11766217914873819692
      }
    }
    Overrides {
      Name: "cs:Cable"
      ObjectReference {
        SelfId: 8980998469587574578
      }
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
  InstanceHistory {
    SelfId: 3488996299070009837
    SubobjectId: 15129699585802461674
    InstanceId: 16039869173892651578
    TemplateId: 17696279941308099301
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
