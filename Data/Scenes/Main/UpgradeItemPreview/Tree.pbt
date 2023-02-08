Name: "UpgradeItemPreview"
RootId: 11066959449240739795
Objects {
  Id: 1335921223556627397
  Name: "PreviewParent"
  Transform {
    Location {
      X: 209.230164
      Y: 1055.46875
      Z: 0.00110412051
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11066959449240739795
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
    IsFilePartition: true
    FilePartitionName: "PreviewParent_5"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3624292829299301456
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
  ParentId: 11066959449240739795
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
            Pitch: 6.83018879e-06
            Yaw: -2.14510619e-05
            Roll: -9.5893714e-13
          }
        }
        Overrides {
          Name: "cs:Object"
          ObjectReference {
            SelfId: 1335921223556627397
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
Objects {
  Id: 11410138676488398197
  Name: "Flare Billboard"
  Transform {
    Location {
      X: 2.38765988e-05
      Y: -130.742188
      Z: -9.35140415e-05
    }
    Rotation {
    }
    Scale {
      X: 1.5999999
      Y: 1.5999999
      Z: 1.5999999
    }
  }
  ParentId: 11066959449240739795
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
        R: 0.919999957
        G: 0.91390729
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
