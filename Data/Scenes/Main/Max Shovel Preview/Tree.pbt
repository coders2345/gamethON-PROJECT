Name: "Max Shovel Preview"
RootId: 14903309712423898809
Objects {
  Id: 13981434626255482380
  Name: "Flare Billboard"
  Transform {
    Location {
      X: 910.531494
      Y: -5.8939209
      Z: -99.2475433
    }
    Rotation {
      Pitch: -15.0004578
      Yaw: 89.9996262
      Roll: -179.999756
    }
    Scale {
      X: 1.5999999
      Y: 1.5999999
      Z: 1.5999999
    }
  }
  ParentId: 14903309712423898809
  UnregisteredParameters {
    Overrides {
      Name: "bp:Rotate Texture"
      Bool: false
    }
    Overrides {
      Name: "bp:Auto Rotate"
      Bool: false
    }
    Overrides {
      Name: "bp:Color Offset A"
      Float: 0
    }
    Overrides {
      Name: "bp:Rotation Rate"
      Float: 2
    }
    Overrides {
      Name: "bp:Camera Distance Offset"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
    }
    Overrides {
      Name: "bp:Width"
      Float: 8
    }
    Overrides {
      Name: "bp:Flare Shape"
      Int: 2
    }
    Overrides {
      Name: "bp:Height"
      Float: 12
    }
    Overrides {
      Name: "bp:Rotation"
      Float: 29.0954018
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        G: 0.810596168
        B: 0.9
        A: 1
      }
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.6
        G: 0.6
        B: 0.6
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 84931335621543932
    }
    TeamSettings {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 592020937988266135
  Name: "PreviewParent"
  Transform {
    Location {
      X: -4.13258858e-05
      Y: 0.00100056326
      Z: 14.7689562
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14903309712423898809
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
    IsFilePartition: true
    FilePartitionName: "PreviewParent"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8256431941101051591
  Name: "Object Rotator Continuous"
  Transform {
    Location {
      X: -11420
      Y: 26642.3672
      Z: 3166.93823
    }
    Rotation {
      Pitch: 9.56226431e-05
      Yaw: 89.9997406
      Roll: 164.999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14903309712423898809
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
      key: 5456438743692384211
      value {
        Overrides {
          Name: "Name"
          String: "Object Rotator Continuous"
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 1.36603776e-05
            Yaw: -5.86969363e-05
            Roll: -8.53781444e-07
          }
        }
        Overrides {
          Name: "cs:Object"
          ObjectReference {
            SelfId: 592020937988266135
          }
        }
      }
    }
    TemplateAsset {
      Id: 13694979525542638951
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
