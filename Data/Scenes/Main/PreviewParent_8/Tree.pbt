Name: "PreviewParent_8"
RootId: 10233458821115556789
Objects {
  Id: 7395118638417548205
  Name: "Wood Fishing Rod"
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
  ParentId: 10233458821115556789
  ChildIds: 13990412888960581592
  UnregisteredParameters {
    Overrides {
      Name: "cs:RodEquipment"
      Bool: true
    }
    Overrides {
      Name: "cs:RodLength"
      Int: 380
    }
    Overrides {
      Name: "cs:EyeletCount"
      Int: 3
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
      SelfId: 13260518641436042785
    }
  }
  InstanceHistory {
    SelfId: 7395118638417548205
    SubobjectId: 8039356222346077380
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13990412888960581592
  Name: "ClientContext"
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
  ParentId: 7395118638417548205
  ChildIds: 10158745662702393704
  ChildIds: 13282563011139160316
  ChildIds: 15747453892890729417
  ChildIds: 1455605471496873753
  ChildIds: 13793367793327261282
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
    SelfId: 13990412888960581592
    SubobjectId: 14634117953289095345
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13793367793327261282
  Name: "Cast Throw Sound"
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
  ParentId: 13990412888960581592
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:esfx_airswooshes:15"
      }
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
      Id: 2338106759265965555
    }
    TeamSettings {
    }
    AudioBP {
      Volume: 1
      Falloff: 3600
      Radius: 400
      IsSpatializationEnabled: true
      IsAttenuationEnabled: true
    }
  }
  InstanceHistory {
    SelfId: 13793367793327261282
    SubobjectId: 13140052592684560651
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1455605471496873753
  Name: "Execute Throw Sound"
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
  ParentId: 13990412888960581592
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
      Id: 13561968283857076734
    }
    Pitch: 159.794
    Volume: 0.8
    Falloff: -1
    Radius: -1
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  InstanceHistory {
    SelfId: 1455605471496873753
    SubobjectId: 2090342773358301296
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15747453892890729417
  Name: "Geo"
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
  ParentId: 13990412888960581592
  ChildIds: 15444466162499658384
  ChildIds: 8341865112604444146
  ChildIds: 5012842631500976737
  ChildIds: 11400323024882788953
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
  InstanceHistory {
    SelfId: 15747453892890729417
    SubobjectId: 15256800508529355936
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11400323024882788953
  Name: "Bobber"
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
  ParentId: 15747453892890729417
  ChildIds: 15083763451018814704
  ChildIds: 1689905869174239746
  ChildIds: 17677331622901489026
  UnregisteredParameters {
    Overrides {
      Name: "cs:FishParent"
      ObjectReference {
        SelfId: 17677331622901489026
      }
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 11400323024882788953
    SubobjectId: 10882719492079902000
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17677331622901489026
  Name: "Fish Parent"
  Transform {
    Location {
      Z: -39.7531738
    }
    Rotation {
      Pitch: 90
      Yaw: -179.999695
      Roll: 90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11400323024882788953
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
  InstanceHistory {
    SelfId: 17677331622901489026
    SubobjectId: 18186456309764631275
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1689905869174239746
  Name: "Hook"
  Transform {
    Location {
      Z: -36.3688965
    }
    Rotation {
      Roll: -89.9998779
    }
    Scale {
      X: 0.00992477499
      Y: 0.00992477499
      Z: 0.00992477499
    }
  }
  ParentId: 11400323024882788953
  ChildIds: 14837690545449915983
  ChildIds: 2911918358230913733
  ChildIds: 15142540850522492629
  ChildIds: 7176214137539154421
  ChildIds: 557203022127080002
  ChildIds: 818800925926299747
  ChildIds: 2415299946201622167
  ChildIds: 9436501358354362115
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
    SelfId: 1689905869174239746
    SubobjectId: 2180580822992962923
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9436501358354362115
  Name: "Rope"
  Transform {
    Location {
      Y: 659.994202
      Z: 0.00134526391
    }
    Rotation {
      Pitch: 90
      Roll: 90
    }
    Scale {
      X: 0.437704593
      Y: 0.438001782
      Z: 25.9919815
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10613300414682810643
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.25
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.25
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 9436501358354362115
    SubobjectId: 10071197922584680554
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2415299946201622167
  Name: "Cylinder - Chamfered Polished"
  Transform {
    Location {
      Y: 659.998596
      Z: 0.00136639294
    }
    Rotation {
      Pitch: 90
      Yaw: -5.71060181
      Roll: 84.2894135
    }
    Scale {
      X: 1.31838095
      Y: 1.27362537
      Z: 0.527352333
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.25
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.25
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3976689022037025620
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
  InstanceHistory {
    SelfId: 2415299946201622167
    SubobjectId: 2933501810220077566
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 818800925926299747
  Name: "Fantasy Pommel 04"
  Transform {
    Location {
      Y: 650
      Z: -1.03871571e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 14.0362635
      Roll: 104.035728
    }
    Scale {
      X: 35.5309601
      Y: 22.610611
      Z: -29.0707836
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 55
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 55
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12510064410993333055
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
  InstanceHistory {
    SelfId: 818800925926299747
    SubobjectId: 175022190136471306
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 557203022127080002
  Name: "Pipe"
  Transform {
    Location {
      X: 8.32943697e-12
      Y: -260.000092
      Z: -1.55271919e-05
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 0.799537957
      Y: 0.799539566
      Z: 9.14107418
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 5
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1870027201424284195
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
  InstanceHistory {
    SelfId: 557203022127080002
    SubobjectId: 1047843282821092651
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7176214137539154421
  Name: "Horn"
  Transform {
    Location {
      Y: -260
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 2
      Y: 3
      Z: 1.5
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    DisableReceiveDecals: true
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 7176214137539154421
    SubobjectId: 7684885232408094364
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15142540850522492629
  Name: "Horn"
  Transform {
    Location {
      Y: -260
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 2
      Y: 3
      Z: -1.5
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    DisableReceiveDecals: true
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15142540850522492629
    SubobjectId: 15786284888484755900
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2911918358230913733
  Name: "Horn"
  Transform {
    Location {
      Y: -260
    }
    Rotation {
    }
    Scale {
      X: 2
      Y: 3
      Z: -1.5
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    DisableReceiveDecals: true
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 2911918358230913733
    SubobjectId: 2402684188721866156
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14837690545449915983
  Name: "Horn"
  Transform {
    Location {
      Y: -260
    }
    Rotation {
    }
    Scale {
      X: 2
      Y: 3
      Z: 1.5
    }
  }
  ParentId: 1689905869174239746
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1321536556956774297
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    DisableReceiveDecals: true
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 14837690545449915983
    SubobjectId: 14184977818689659174
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15083763451018814704
  Name: "Bobber Sphere"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.12
      Y: 0.12
      Z: 0.12
    }
  }
  ParentId: 11400323024882788953
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4050437425243511619
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.14415431
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.73611951
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1064960179719297784
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
  InstanceHistory {
    SelfId: 15083763451018814704
    SubobjectId: 15592992613492528025
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5012842631500976737
  Name: "Handle"
  Transform {
    Location {
      X: -1.81246948
      Y: -4.77558933e-05
    }
    Rotation {
    }
    Scale {
      X: 0.78244859
      Y: 0.78244859
      Z: 0.78244859
    }
  }
  ParentId: 15747453892890729417
  ChildIds: 10732811831135973128
  ChildIds: 8605334114888976539
  ChildIds: 647404285241832978
  ChildIds: 11488144837540351096
  ChildIds: 7581112239340928077
  ChildIds: 8849301127027984538
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
  InstanceHistory {
    SelfId: 5012842631500976737
    SubobjectId: 5521425288668439816
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8849301127027984538
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      Z: 29.5119095
    }
    Rotation {
    }
    Scale {
      X: 0.105757974
      Y: 0.105757974
      Z: 0.136938483
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11559324891790146189
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.590000033
        G: 0.421986759
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 11349432262464512950
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
  InstanceHistory {
    SelfId: 8849301127027984538
    SubobjectId: 8358173651279527923
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7581112239340928077
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      Y: 6.10351562e-05
      Z: 12.7272034
    }
    Rotation {
    }
    Scale {
      X: 0.0992657915
      Y: 0.0992657915
      Z: 0.174995482
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7826262166276673097
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.279999971
        G: 0.194701985
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 11349432262464512950
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
  InstanceHistory {
    SelfId: 7581112239340928077
    SubobjectId: 6918865698658978596
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11488144837540351096
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      Y: 6.10351562e-05
      Z: 21.0823059
    }
    Rotation {
    }
    Scale {
      X: 0.105757974
      Y: 0.105757974
      Z: 0.0345383361
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14212988502358508072
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 11349432262464512950
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
  InstanceHistory {
    SelfId: 11488144837540351096
    SubobjectId: 10835427638607657745
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 647404285241832978
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      Y: 6.10351562e-05
      Z: 4.07727051
    }
    Rotation {
    }
    Scale {
      X: 0.105757974
      Y: 0.105757974
      Z: 0.0345383361
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3983801708230342157
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.3
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 11349432262464512950
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
  InstanceHistory {
    SelfId: 647404285241832978
    SubobjectId: 129812877633356155
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8605334114888976539
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      Y: 6.10351562e-05
      Z: -1.13231659
    }
    Rotation {
    }
    Scale {
      X: 0.105757974
      Y: 0.105757974
      Z: 0.0665181503
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3983801708230342157
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.5
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 11349432262464512950
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
  InstanceHistory {
    SelfId: 8605334114888976539
    SubobjectId: 9105560548782522354
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10732811831135973128
  Name: "Capsule"
  Transform {
    Location {
      Y: 6.10351562e-05
      Z: -7.348526
    }
    Rotation {
    }
    Scale {
      X: 0.0986505449
      Y: 0.0986505449
      Z: 0.464576274
    }
  }
  ParentId: 5012842631500976737
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11559324891790146189
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.301000029
        G: 0.197344497
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 916665379155427451
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
  InstanceHistory {
    SelfId: 10732811831135973128
    SubobjectId: 11368107616309090401
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8341865112604444146
  Name: "Reel"
  Transform {
    Location {
      X: 17.4572296
      Y: -0.0291794464
      Z: -15.9267731
    }
    Rotation {
    }
    Scale {
      X: 0.286840469
      Y: 0.286840469
      Z: 0.286840469
    }
  }
  ParentId: 15747453892890729417
  ChildIds: 17975325676795828573
  ChildIds: 2124166331922708150
  ChildIds: 168569677480724750
  ChildIds: 16911043019741383530
  ChildIds: 16161410422099207865
  ChildIds: 8374627950137541890
  ChildIds: 13014412160577005405
  ChildIds: 11266862423947795439
  ChildIds: 1390880195755357597
  ChildIds: 10286618589786724731
  ChildIds: 4508900448501666932
  ChildIds: 14931292115640549454
  ChildIds: 10958668853352526527
  ChildIds: 12390639639186280846
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
  InstanceHistory {
    SelfId: 8341865112604444146
    SubobjectId: 8860120628426912411
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12390639639186280846
  Name: "Cube - Rounded"
  Transform {
    Location {
      X: -54.8515625
      Z: 89.8885269
    }
    Rotation {
      Pitch: 90
      Yaw: 1.36603776e-05
      Roll: 2.39056608e-05
    }
    Scale {
      X: 0.441909134
      Y: 0.0743786
      Z: 0.0301928185
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 6777447344140592468
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8536284487215287595
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
  InstanceHistory {
    SelfId: 12390639639186280846
    SubobjectId: 11728886090527844071
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10958668853352526527
  Name: "Cylinder - Bottom-Aligned"
  Transform {
    Location {
      X: -14.8693724
      Y: -37.8611488
      Z: 117.941032
    }
    Rotation {
      Roll: -89.999939
    }
    Scale {
      X: 0.0513624288
      Y: 0.051362358
      Z: 0.120354861
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 6777447344140592468
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10958668853352526527
    SubobjectId: 10458547563992368598
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14931292115640549454
  Name: "Cube - Rounded"
  Transform {
    Location {
      X: -48.9438095
      Z: 92.3729706
    }
    Rotation {
    }
    Scale {
      X: 0.441909134
      Y: 0.0372021124
      Z: 0.130877018
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 6777447344140592468
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8536284487215287595
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
  InstanceHistory {
    SelfId: 14931292115640549454
    SubobjectId: 14269551835099739943
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4508900448501666932
  Name: "Cube - Rounded - bottom aligned"
  Transform {
    Location {
      X: -8.80714512
      Y: -51.5568047
      Z: 112.069168
    }
    Rotation {
      Pitch: 45.6286392
      Yaw: 6.98597e-12
      Roll: 5.12262923e-05
    }
    Scale {
      X: 0.0725223869
      Y: 0.171934962
      Z: 0.180312037
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10082618102837437093
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 17485881147669499682
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
  InstanceHistory {
    SelfId: 4508900448501666932
    SubobjectId: 4009311744923443997
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10286618589786724731
  Name: "Cylinder - Bottom-Aligned"
  Transform {
    Location {
      X: -14.8693724
      Y: -37.8611488
      Z: 89.9999695
    }
    Rotation {
      Roll: 5.12264e-05
    }
    Scale {
      X: 0.0513624288
      Y: 0.0513621531
      Z: 0.304721296
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 6777447344140592468
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10286618589786724731
    SubobjectId: 9795421277879987730
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1390880195755357597
  Name: "Cone - Truncated Narrow"
  Transform {
    Location {
      X: -14.8693724
      Y: -37.8611488
      Z: 89.9999695
    }
    Rotation {
      Roll: -89.999939
    }
    Scale {
      X: 0.139659673
      Y: 0.139659658
      Z: 0.121592052
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10082618102837437093
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 585112705082600373
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
  InstanceHistory {
    SelfId: 1390880195755357597
    SubobjectId: 1908502530315485940
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11266862423947795439
  Name: "Cone - Truncated Wide"
  Transform {
    Location {
      X: -14.8693724
      Y: -30.8162842
      Z: 89.9999695
    }
    Rotation {
      Pitch: 4.09811328e-05
      Yaw: -179.999954
      Roll: 89.9999466
    }
    Scale {
      X: 0.199999958
      Y: 0.200000077
      Z: 0.127867445
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10082618102837437093
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 13168784332205840745
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
  InstanceHistory {
    SelfId: 11266862423947795439
    SubobjectId: 10766652560185420934
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13014412160577005405
  Name: "Cylinder - Bottom-Aligned"
  Transform {
    Location {
      X: -14.8693724
      Y: -26.744442
      Z: 89.9999695
    }
    Rotation {
      Roll: -89.999939
    }
    Scale {
      X: 0.2
      Y: 0.200000122
      Z: 0.0416125543
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10082618102837437093
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 13014412160577005405
    SubobjectId: 13667651034792284212
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8374627950137541890
  Name: "Cone - Truncated Wide"
  Transform {
    Location {
      X: -14.8693724
      Y: -19.1554871
      Z: 89.9999695
    }
    Rotation {
      Pitch: 4.09811328e-05
      Yaw: -179.999954
      Roll: 90.0000229
    }
    Scale {
      X: 0.2
      Y: 0.2
      Z: 0.2
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 6777447344140592468
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13168784332205840745
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
  InstanceHistory {
    SelfId: 8374627950137541890
    SubobjectId: 9009905583620207211
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16161410422099207865
  Name: "Cone - Truncated Wide"
  Transform {
    Location {
      X: -14.8693724
      Z: 79.9999847
    }
    Rotation {
      Pitch: -3.05175781e-05
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.44192329
      Y: 0.441923797
      Z: 0.355098516
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7736438366154425254
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
      Id: 13168784332205840745
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
  InstanceHistory {
    SelfId: 16161410422099207865
    SubobjectId: 16823732958374973904
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16911043019741383530
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: -14.8693724
      Z: 129.999969
    }
    Rotation {
      Pitch: -3.05175781e-05
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.441909134
      Y: 0.441909134
      Z: 0.441909134
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10082618102837437093
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
      Id: 2427234873479672713
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
  InstanceHistory {
    SelfId: 16911043019741383530
    SubobjectId: 16393422449317051395
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 168569677480724750
  Name: "Cylinder - Bottom-Aligned"
  Transform {
    Location {
      X: -14.8693724
      Z: 79.9999847
    }
    Rotation {
    }
    Scale {
      X: 0.441909134
      Y: 0.441909134
      Z: 0.2
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7736438366154425254
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
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 168569677480724750
    SubobjectId: 821867217361059431
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2124166331922708150
  Name: "Cone - Truncated Wide"
  Transform {
    Location {
      X: -14.8693724
      Z: 104.999992
    }
    Rotation {
    }
    Scale {
      X: 0.441909134
      Y: 0.441909134
      Z: 0.441909134
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7736438366154425254
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
      Id: 13168784332205840745
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
  InstanceHistory {
    SelfId: 2124166331922708150
    SubobjectId: 1462461369577423327
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17975325676795828573
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: -14.8693724
      Z: 98.7947464
    }
    Rotation {
    }
    Scale {
      X: 0.441909134
      Y: 0.441909134
      Z: 0.441909134
    }
  }
  ParentId: 8341865112604444146
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5878447851173300930
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2427234873479672713
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
  InstanceHistory {
    SelfId: 17975325676795828573
    SubobjectId: 17312986698180963892
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15444466162499658384
  Name: "Rod"
  Transform {
    Location {
      X: -1.86279297
    }
    Rotation {
    }
    Scale {
      X: 0.782448411
      Y: 0.782448411
      Z: 0.782448411
    }
  }
  ParentId: 15747453892890729417
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
  InstanceHistory {
    SelfId: 15444466162499658384
    SubobjectId: 16097271335879251449
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13282563011139160316
  Name: "FishingPoleShowcaseClient"
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
  ParentId: 13990412888960581592
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemLibrary"
      AssetReference {
        Id: 10359656733423806507
      }
    }
    Overrides {
      Name: "cs:Bobber"
      ObjectReference {
        SelfId: 11400323024882788953
      }
    }
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 7395118638417548205
      }
    }
    Overrides {
      Name: "cs:Geo"
      ObjectReference {
        SelfId: 15747453892890729417
      }
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
      Id: 3429136611424578290
    }
  }
  InstanceHistory {
    SelfId: 13282563011139160316
    SubobjectId: 12782375130056458133
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10158745662702393704
  Name: "FishingPoleClient"
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
  ParentId: 13990412888960581592
  UnregisteredParameters {
    Overrides {
      Name: "cs:FishSiteLibrary"
      AssetReference {
        Id: 3548985631184828125
      }
    }
    Overrides {
      Name: "cs:RodSegmentTemplate"
      AssetReference {
        Id: 13714316966009610581
      }
    }
    Overrides {
      Name: "cs:EyeletTemplate"
      AssetReference {
        Id: 10004794198219607706
      }
    }
    Overrides {
      Name: "cs:LineSegmentTemplate"
      AssetReference {
        Id: 3652099856676821247
      }
    }
    Overrides {
      Name: "cs:ProjectileTemplate"
      AssetReference {
        Id: 8663750294674299353
      }
    }
    Overrides {
      Name: "cs:FishingRodUpgradesList"
      AssetReference {
        Id: 16679381364160281589
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:SplashEffect"
      AssetReference {
        Id: 2908449674102620171
      }
    }
    Overrides {
      Name: "cs:Equipment"
      ObjectReference {
        SelfId: 7395118638417548205
      }
    }
    Overrides {
      Name: "cs:Rod"
      ObjectReference {
        SelfId: 15444466162499658384
      }
    }
    Overrides {
      Name: "cs:Bobber"
      ObjectReference {
        SelfId: 11400323024882788953
      }
    }
    Overrides {
      Name: "cs:ExecuteThrowSound"
      ObjectReference {
        SelfId: 1455605471496873753
      }
    }
    Overrides {
      Name: "cs:CastThrowSound"
      ObjectReference {
        SelfId: 13793367793327261282
      }
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
      Id: 18382131348559136541
    }
  }
  InstanceHistory {
    SelfId: 10158745662702393704
    SubobjectId: 9640561386968231425
    InstanceId: 13077388342242392795
    TemplateId: 9728378994592708807
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
