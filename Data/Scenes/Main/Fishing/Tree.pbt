Name: "Fishing"
RootId: 18123593825811806837
Objects {
  Id: 14384010204959939711
  Name: "Fishing Areas Client Context"
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
  ParentId: 18123593825811806837
  ChildIds: 8665152307783661589
  ChildIds: 2685317056419235428
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
  Id: 2685317056419235428
  Name: "Areas"
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
  ParentId: 14384010204959939711
  ChildIds: 5260046855263091179
  ChildIds: 11105618181358654717
  ChildIds: 4676705407797448595
  ChildIds: 5226929025309570243
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
  Id: 5226929025309570243
  Name: "Barrel"
  Transform {
    Location {
      X: -5600
      Y: 17600
      Z: 3000
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2685317056419235428
  ChildIds: 10414519355620040422
  ChildIds: 14375574042315781484
  ChildIds: 6879123784975357053
  UnregisteredParameters {
    Overrides {
      Name: "cs:AreaID"
      String: "FISHINGBARREL"
    }
    Overrides {
      Name: "cs:SpawnPointsRoot"
      ObjectReference {
        SelfId: 6879123784975357053
      }
    }
    Overrides {
      Name: "cs:ActiveSpawnPointsPerArea"
      Int: 1
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6879123784975357053
  Name: "Fish Spawn Points"
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
  ParentId: 5226929025309570243
  ChildIds: 15957396262067984204
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
  Id: 15957396262067984204
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -16025
      Y: -10800
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6879123784975357053
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14375574042315781484
  Name: "Wooden Barrel"
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
  ParentId: 5226929025309570243
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
  CoreMesh {
    MeshAsset {
      Id: 1763920700836873880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10414519355620040422
  Name: "RegisterAreaFishing"
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
  ParentId: 5226929025309570243
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 5226929025309570243
      }
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
      Id: 10168620682853600811
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4676705407797448595
  Name: "Lower Lake"
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
  ParentId: 2685317056419235428
  ChildIds: 16430085330202600076
  ChildIds: 4969407347192740032
  UnregisteredParameters {
    Overrides {
      Name: "cs:AreaID"
      String: "FISHINGLOWERLAKE"
    }
    Overrides {
      Name: "cs:SpawnPointsRoot"
      ObjectReference {
        SelfId: 4969407347192740032
      }
    }
    Overrides {
      Name: "cs:ActiveSpawnPointsPerArea"
      Int: 15
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4969407347192740032
  Name: "Fish Spawn Points"
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
  ParentId: 4676705407797448595
  ChildIds: 9547248788584115263
  ChildIds: 2115903638923484931
  ChildIds: 17195880700158612119
  ChildIds: 6077392709837940876
  ChildIds: 13629081296723819007
  ChildIds: 13995186343605154651
  ChildIds: 10741627201716103153
  ChildIds: 10797007301334228270
  ChildIds: 4363139992911116128
  ChildIds: 10810448332167112763
  ChildIds: 1982025720964738813
  ChildIds: 4614017217829191312
  ChildIds: 4786492292034282377
  ChildIds: 11747849904947031256
  ChildIds: 15372354573564574162
  ChildIds: 2479165917700173730
  ChildIds: 16404126219610506694
  ChildIds: 17070765601214448262
  ChildIds: 4262846096767809958
  ChildIds: 11191243664539009884
  ChildIds: 6991004907633261988
  ChildIds: 10777960684431083470
  ChildIds: 7958496506020324200
  ChildIds: 3400778337029080524
  ChildIds: 17392922273325535191
  ChildIds: 3945756932708896572
  ChildIds: 11524543031524453754
  ChildIds: 5405632228494314604
  ChildIds: 537485400915837494
  ChildIds: 10762333799172190363
  ChildIds: 1081385244732446778
  ChildIds: 6977163114984800727
  ChildIds: 16033571634079701151
  ChildIds: 8570286933567768106
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
  Id: 8570286933567768106
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -18150
      Y: -10900
      Z: 2205.00122
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -19950
            Y: -9700
            Z: 2205.00122
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16033571634079701151
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -28850
      Y: -24350
      Z: 2205.00024
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18150
            Y: -10900
            Z: 2205.00122
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6977163114984800727
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -12750
      Y: -22375
      Z: 2205.00293
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -14000
            Y: -19650
            Z: 2205.00293
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1081385244732446778
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -15600
      Y: -24500
      Z: 2205.00293
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -12750
            Y: -22375
            Z: 2205.00293
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10762333799172190363
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -17300
      Y: -26575
      Z: 2205.00342
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -15600
            Y: -24500
            Z: 2205.00293
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 537485400915837494
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -18600
      Y: -28550
      Z: 2205.00342
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -17300
            Y: -26575
            Z: 2205.00342
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5405632228494314604
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -21075
      Y: -28175
      Z: 2205.00342
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18600
            Y: -28550
            Z: 2205.00342
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11524543031524453754
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -23850
      Y: -27250
      Z: 2205.00342
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -21075
            Y: -28175
            Z: 2205.00342
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3945756932708896572
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -28075
      Y: -9975
      Z: 2205.00342
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -23850
            Y: -27250
            Z: 2205.00342
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17392922273325535191
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -23900
      Y: -9350
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -28075
            Y: -9975
            Z: 2205.00342
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3400778337029080524
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -13200
      Y: -13675
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -23900
            Y: -9350
            Z: 2205.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7958496506020324200
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -14075
      Y: -11525
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -14600
            Y: -15400
            Z: 2205.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10777960684431083470
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -12050
      Y: -12750
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -14075
            Y: -11525
            Z: 2205.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6991004907633261988
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -16025
      Y: -10800
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -12050
            Y: -12750
            Z: 2205.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11191243664539009884
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -16200
      Y: -18875
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -15175
            Y: -13650
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4262846096767809958
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -16325
      Y: -16275
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -16200
            Y: -18875
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17070765601214448262
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -17675
      Y: -24400
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -16325
            Y: -16275
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16404126219610506694
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -25450
      Y: -25900
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -17675
            Y: -24400
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2479165917700173730
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: -26375
      Y: -11925
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -15300
            Y: -21975
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15372354573564574162
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -28050
      Y: -13500
      Z: 2204.99976
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -22075
            Y: -9875
            Z: 2204.99976
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11747849904947031256
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -25000
      Y: -10975
      Z: 2205.00024
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -28050
            Y: -13500
            Z: 2204.99976
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4786492292034282377
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -28850
      Y: -24350
      Z: 2205.00024
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -25000
            Y: -10975
            Z: 2205.00024
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4614017217829191312
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: -30725
      Y: -16725
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -26375
            Y: -11925
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1982025720964738813
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -26850
      Y: -27100
      Z: 2205.00024
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -28850
            Y: -24350
            Z: 2205.00024
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10810448332167112763
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -25450
      Y: -25900
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -26850
            Y: -27100
            Z: 2205.00024
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4363139992911116128
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -22175
      Y: -26075
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -25450
            Y: -25900
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10797007301334228270
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: -19250
      Y: -26925
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -22175
            Y: -26075
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10741627201716103153
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -18175
      Y: -9200
      Z: 2205.00024
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -20250
            Y: -8175
            Z: 2205.00024
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13995186343605154651
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -16725
      Y: -11325
      Z: 2205.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18375
            Y: -8875
            Z: 2205.00024
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13629081296723819007
  Name: "FishSpawnFlatMedium"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -19250
            Y: -26925
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6077392709837940876
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -11988.8389
      Y: -13375.8945
      Z: 2365.99829
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -16025
            Y: -10800
            Z: 2205.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17195880700158612119
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: -31875
      Y: -19300
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -30725
            Y: -16725
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2115903638923484931
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: -31450
      Y: -22100
      Z: 2205
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -32275
            Y: -19200
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9547248788584115263
  Name: "FishSpawnFlatBig"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4969407347192740032
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -31450
            Y: -22100
            Z: 2205
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16430085330202600076
  Name: "RegisterAreaFishing"
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
  ParentId: 4676705407797448595
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 4676705407797448595
      }
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
      Id: 10168620682853600811
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11105618181358654717
  Name: "Middle Lake"
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
  ParentId: 2685317056419235428
  ChildIds: 12754754185883261797
  ChildIds: 738334953690821009
  UnregisteredParameters {
    Overrides {
      Name: "cs:AreaID"
      String: "FISHINGMIDDLELAKE"
    }
    Overrides {
      Name: "cs:SpawnPointsRoot"
      ObjectReference {
        SelfId: 738334953690821009
      }
    }
    Overrides {
      Name: "cs:ActiveSpawnPointsPerArea"
      Int: 20
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 738334953690821009
  Name: "Fish Spawn Points"
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
  ParentId: 11105618181358654717
  ChildIds: 13178242616314140429
  ChildIds: 6278101608299251551
  ChildIds: 17117268579908984688
  ChildIds: 14483559805349464594
  ChildIds: 11882528125687305276
  ChildIds: 15443958620094545410
  ChildIds: 15210993747779030628
  ChildIds: 8556036302022573102
  ChildIds: 10213897591635244890
  ChildIds: 1899118642239241604
  ChildIds: 15038021296465411828
  ChildIds: 6929018388854438436
  ChildIds: 7729393069192294013
  ChildIds: 5258949784555843155
  ChildIds: 3614142551219962338
  ChildIds: 4903763826099631788
  ChildIds: 14420553967608073731
  ChildIds: 1632574235826666820
  ChildIds: 123115888945440404
  ChildIds: 7827875276314469578
  ChildIds: 13495038880314193246
  ChildIds: 12883921123136321365
  ChildIds: 10627549732533082758
  ChildIds: 1874940994056483296
  ChildIds: 5180051073547767644
  ChildIds: 5160669957941737727
  ChildIds: 12806854049834356094
  ChildIds: 6841966455263727464
  ChildIds: 15477724486775407226
  ChildIds: 5002635631856185887
  ChildIds: 14919336946438287300
  ChildIds: 4719167123176462638
  ChildIds: 11905192389421126969
  ChildIds: 1878121642759329890
  ChildIds: 2315976120906950870
  ChildIds: 18434703506799787766
  ChildIds: 11324098727592203802
  ChildIds: 9885132994882034264
  ChildIds: 5139269860759312366
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
  Id: 5139269860759312366
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -450
      Y: -4100
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 575
            Y: -7950
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9885132994882034264
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 9650
      Y: -8750
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -450
            Y: -4100
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11324098727592203802
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 7975
      Y: -6200
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 9650
            Y: -8750
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18434703506799787766
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 6850
      Y: -4425
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 7975
            Y: -6200
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2315976120906950870
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 4250
      Y: -8800
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 6850
            Y: -4425
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1878121642759329890
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -2400
      Y: 600
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 4250
            Y: -8800
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11905192389421126969
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -3425
      Y: 2825
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2400
            Y: 600
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4719167123176462638
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -1325
      Y: 3725
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -3425
            Y: 2825
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14919336946438287300
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -2025
      Y: 4550
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -1325
            Y: 3725
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5002635631856185887
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -325
      Y: 4100
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2025
            Y: 4550
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15477724486775407226
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 200
      Y: 5025
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -325
            Y: 4100
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6841966455263727464
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -575
      Y: 6000
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 200
            Y: 5025
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12806854049834356094
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -1000
      Y: 4875
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -575
            Y: 6000
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5160669957941737727
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 4625
      Y: -1225
      Z: 2272.48071
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -1000
            Y: 4875
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5180051073547767644
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 3275
      Y: 1875
      Z: 2272.48022
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 4625
            Y: -1225
            Z: 2272.48071
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1874940994056483296
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 1200
      Y: -2875
      Z: 2272.48071
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 3275
            Y: 1875
            Z: 2272.48022
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10627549732533082758
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 825
      Y: -5850
      Z: 2275.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 3775
            Y: -3900
            Z: 2275.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12883921123136321365
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -2675
      Y: -6575
      Z: 2272.48096
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1200
            Y: -2875
            Z: 2272.48071
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13495038880314193246
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -2750
      Y: -5125
      Z: 2272.48096
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2675
            Y: -6575
            Z: 2272.48096
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7827875276314469578
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -4800
      Y: -6175
      Z: 2272.48096
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2750
            Y: -5125
            Z: 2272.48096
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 123115888945440404
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -7050
      Y: -7525
      Z: 2272.48096
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -4800
            Y: -6175
            Z: 2272.48096
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1632574235826666820
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -7000
      Y: -10050
      Z: 2272.48096
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -7050
            Y: -7525
            Z: 2272.48096
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14420553967608073731
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -7425
      Y: -11825
      Z: 2272.48047
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -7000
            Y: -10050
            Z: 2272.48096
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4903763826099631788
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -9125
      Y: -13025
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -7425
            Y: -11825
            Z: 2272.48047
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3614142551219962338
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 19900
      Y: -16575
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -9125
            Y: -13025
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5258949784555843155
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 7800
      Y: -8250
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 5575
            Y: -6125
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7729393069192294013
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 10125
      Y: -10800
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 7800
            Y: -8250
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6929018388854438436
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 13000
      Y: -13225
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 10125
            Y: -10800
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15038021296465411828
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 3700
      Y: -3900
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 2475
            Y: -1125
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1899118642239241604
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 15300
      Y: -14950
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 17625
            Y: -16275
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10213897591635244890
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 13000
      Y: -13225
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 15300
            Y: -14950
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8556036302022573102
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 9456.09766
      Y: -9207.82715
      Z: 2254.76782
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 13000
            Y: -13225
            Z: 2254.76782
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15210993747779030628
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 26025
      Y: -19825
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 21800
            Y: -16425
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15443958620094545410
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 25100
      Y: -18025
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 26025
            Y: -19825
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11882528125687305276
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 23725
      Y: -16600
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25100
            Y: -18025
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14483559805349464594
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 19900
      Y: -16575
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 23725
            Y: -16600
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17117268579908984688
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: -2963.39136
      Y: 3816.79761
      Z: 2272.48
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 19900
            Y: -16575
            Z: 2272.48
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6278101608299251551
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 825
      Y: -5850
      Z: 2275.00049
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 100
            Y: 2225
            Z: 2275.00146
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13178242616314140429
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 2415.26123
      Y: -6996.90479
      Z: 2194.15
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 738334953690821009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 825
            Y: -5850
            Z: 2275.00049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12754754185883261797
  Name: "RegisterAreaFishing"
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
  ParentId: 11105618181358654717
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 11105618181358654717
      }
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
      Id: 10168620682853600811
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5260046855263091179
  Name: "Upper Lake"
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
  ParentId: 2685317056419235428
  ChildIds: 6315472516344541408
  ChildIds: 13061992112123804221
  UnregisteredParameters {
    Overrides {
      Name: "cs:AreaID"
      String: "FISHINGUPPERLAKE"
    }
    Overrides {
      Name: "cs:SpawnPointsRoot"
      ObjectReference {
        SelfId: 13061992112123804221
      }
    }
    Overrides {
      Name: "cs:ActiveSpawnPointsPerArea"
      Int: 20
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13061992112123804221
  Name: "Fish Spawn Points"
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
  ParentId: 5260046855263091179
  ChildIds: 16371101886202393938
  ChildIds: 3079841809662390236
  ChildIds: 1272230132004156134
  ChildIds: 6215240688814748538
  ChildIds: 1572568584341292842
  ChildIds: 5452471401391535398
  ChildIds: 12204469549018899108
  ChildIds: 12981728266682285373
  ChildIds: 494954116718412507
  ChildIds: 16987903767409396785
  ChildIds: 11369128008545966867
  ChildIds: 6294304043610586598
  ChildIds: 13459768585151703795
  ChildIds: 8902689194757322246
  ChildIds: 17990719784470595705
  ChildIds: 5378273386072269994
  ChildIds: 13304176230866741354
  ChildIds: 6871399409462566028
  ChildIds: 10838095949029597719
  ChildIds: 10432198152446626474
  ChildIds: 12983930102263410282
  ChildIds: 10929086862911122448
  ChildIds: 18173026942941792563
  ChildIds: 13477282930983775289
  ChildIds: 11664443634604974903
  ChildIds: 15745365120447911152
  ChildIds: 524168805419374225
  ChildIds: 12634214333403613862
  ChildIds: 4962850999418559720
  ChildIds: 6153461820100287435
  ChildIds: 10516224309141109086
  ChildIds: 10866963771998642557
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
  Id: 10866963771998642557
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 24350
      Y: -38350
      Z: 2194.15137
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 28675
            Y: -38800
            Z: 2194.15161
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10516224309141109086
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 34725
      Y: -38500
      Z: 2194.15088
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 24350
            Y: -38350
            Z: 2194.15137
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6153461820100287435
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 36175
      Y: -40625
      Z: 2250
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 36950
            Y: -37825
            Z: 2249.99976
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4962850999418559720
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 31550
      Y: -42475
      Z: 2250
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 36175
            Y: -40625
            Z: 2250
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12634214333403613862
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 22700
      Y: -38625
      Z: 2249.99976
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 31550
            Y: -42475
            Z: 2250
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 524168805419374225
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 23375
      Y: -40075
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 26525
            Y: -37875
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15745365120447911152
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 22700
      Y: -38625
      Z: 2249.99976
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 26600
            Y: -39300
            Z: 2249.99927
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11664443634604974903
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 21725
      Y: -39250
      Z: 2249.99976
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 22700
            Y: -38625
            Z: 2249.99976
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13477282930983775289
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 23050
      Y: -33625
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 23375
            Y: -40075
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18173026942941792563
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 36950
      Y: -39250
      Z: 2250
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 21725
            Y: -39250
            Z: 2249.99976
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10929086862911122448
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 30225
      Y: -40775
      Z: 2194.15088
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 34725
            Y: -38500
            Z: 2194.15088
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12983930102263410282
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 33350
      Y: -40900
      Z: 2194.15
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 30225
            Y: -40775
            Z: 2194.15088
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10432198152446626474
  Name: "FishSpawnFlatBig"
  Transform {
    Location {
      X: 22723.3711
      Y: -36417.5469
      Z: 2194.15
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2871460005196187645
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatBig"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 33350
            Y: -40900
            Z: 2194.15
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 5658264206748830995
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10838095949029597719
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 35550
      Y: -34150
      Z: 2250
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 36950
            Y: -39250
            Z: 2250
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6871399409462566028
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 33600
      Y: -31975
      Z: 2250
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 35550
            Y: -34150
            Z: 2250
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13304176230866741354
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 31800
      Y: -29250
      Z: 2252.76489
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 33600
            Y: -31975
            Z: 2250
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5378273386072269994
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 28125
      Y: -25225
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 31625
            Y: -29400
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17990719784470595705
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 29650
      Y: -27125
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 28125
            Y: -25225
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8902689194757322246
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 27350
      Y: -23725
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 29650
            Y: -27125
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13459768585151703795
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 27400
      Y: -22500
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 27350
            Y: -23725
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6294304043610586598
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 26700
      Y: -25375
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 27400
            Y: -22500
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11369128008545966867
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 25750
      Y: -28075
      Z: 2252.76538
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 26700
            Y: -25375
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16987903767409396785
  Name: "FishSpawnFlatSmall"
  Transform {
    Location {
      X: 26173.0312
      Y: -20151.3535
      Z: 2252.76636
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12666454044991747066
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatSmall"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25750
            Y: -28075
            Z: 2252.76538
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 12572152632531886713
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 494954116718412507
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 22625
      Y: -37000
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 23050
            Y: -33625
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12981728266682285373
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 35000
      Y: -36300
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 22625
            Y: -37000
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12204469549018899108
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 33300
      Y: -34100
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 35000
            Y: -36300
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5452471401391535398
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 31500
      Y: -31475
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 33300
            Y: -34100
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1572568584341292842
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 24975
      Y: -32825
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 31500
            Y: -31475
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6215240688814748538
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 29325
      Y: -29650
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25375
            Y: -32500
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1272230132004156134
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 26700
      Y: -30000
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 29450
            Y: -29600
            Z: 2199.99951
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3079841809662390236
  Name: "FishSpawnFlatMedium"
  Transform {
    Location {
      X: 27625
      Y: -27425
      Z: 2200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 26700
            Y: -30000
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16371101886202393938
  Name: "FishSpawnFlatMedium"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13061992112123804221
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3658080276992881863
      value {
        Overrides {
          Name: "Name"
          String: "FishSpawnFlatMedium"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 27625
            Y: -27425
            Z: 2200
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 3808337171386117107
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:forceoff"
          }
        }
      }
    }
    TemplateAsset {
      Id: 18292566277919770097
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6315472516344541408
  Name: "RegisterAreaFishing"
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
  ParentId: 5260046855263091179
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 5260046855263091179
      }
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
      Id: 10168620682853600811
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8665152307783661589
  Name: "FishAreasControllerClient"
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
  ParentId: 14384010204959939711
  UnregisteredParameters {
    Overrides {
      Name: "cs:FishSiteLibrary"
      AssetReference {
        Id: 3548985631184828125
      }
    }
    Overrides {
      Name: "cs:AreasRoot"
      ObjectReference {
        SelfId: 2685317056419235428
      }
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
      Id: 12895993013336627392
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10812636774376479482
  Name: "Water Plane Visual Register - For Bobber"
  Transform {
    Location {
      X: 1063.93457
      Y: 3704.06445
      Z: 2368.7583
    }
    Rotation {
    }
    Scale {
      X: 10000
      Y: 10000
      Z: 0.717881918
    }
  }
  ParentId: 18123593825811806837
  ChildIds: 11285636847253169400
  ChildIds: 12631076225240844896
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11233004376218380622
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8301933512501920729
    }
    Teams {
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
  Id: 12631076225240844896
  Name: "ClientContext"
  Transform {
    Location {
      Z: -3359.62744
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10812636774376479482
  ChildIds: 16517830560806020872
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
  Id: 16517830560806020872
  Name: "RegisterWaterFishing"
  Transform {
    Location {
      X: -0.106393471
      Y: -0.370406449
      Z: -0.804640293
    }
    Rotation {
    }
    Scale {
      X: 0.6
      Y: 0.6
      Z: 104.474007
    }
  }
  ParentId: 12631076225240844896
  UnregisteredParameters {
    Overrides {
      Name: "cs:FishSiteLibrary"
      AssetReference {
        Id: 3548985631184828125
      }
    }
    Overrides {
      Name: "cs:Water"
      ObjectReference {
        SelfId: 10812636774376479482
      }
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
      Id: 6613453811368274852
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11285636847253169400
  Name: "RegisterWaterFishing"
  Transform {
    Location {
      X: -0.106393471
      Y: -0.370406449
      Z: -3360.43188
    }
    Rotation {
    }
    Scale {
      X: 0.6
      Y: 0.6
      Z: 104.474007
    }
  }
  ParentId: 10812636774376479482
  UnregisteredParameters {
    Overrides {
      Name: "cs:FishSiteLibrary"
      AssetReference {
        Id: 3548985631184828125
      }
    }
    Overrides {
      Name: "cs:Water"
      ObjectReference {
        SelfId: 10812636774376479482
      }
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
      Id: 6613453811368274852
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
