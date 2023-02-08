Assets {
  Id: 10775672866998142869
  Name: "BigWheelSpawner"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11574992514487740969
      Objects {
        Id: 11574992514487740969
        Name: "BigWheelSpawner"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8568336417442047963
        ChildIds: 10485166197246350549
        ChildIds: 15442083496366688516
        ChildIds: 16778717896407285694
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 10485166197246350549
        Name: "Static Rider"
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
        ParentId: 11574992514487740969
        UnregisteredParameters {
          Overrides {
            Name: "cs:EquipmentTemplate"
            AssetReference {
              Id: 17099914698621996687
            }
          }
          Overrides {
            Name: "cs:Team"
            Int: 0
          }
          Overrides {
            Name: "cs:ReplaceOnEachRespawn"
            Bool: true
          }
          Overrides {
            Name: "cs:EquipmentTemplate:tooltip"
            String: "Equipment template to give to players"
          }
          Overrides {
            Name: "cs:Team:tooltip"
            String: "If non-zero, only give equipment to players on that team"
          }
          Overrides {
            Name: "cs:ReplaceOnEachRespawn:tooltip"
            String: "Whether to replace that equipment every time a player spawns"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 12654550575277745068
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15442083496366688516
        Name: "StaticPlayerEquipmentServer"
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
        ParentId: 11574992514487740969
        UnregisteredParameters {
          Overrides {
            Name: "cs:EquipmentTemplate"
            AssetReference {
              Id: 17450139840359020831
            }
          }
          Overrides {
            Name: "cs:Team"
            Int: 0
          }
          Overrides {
            Name: "cs:ReplaceOnEachRespawn"
            Bool: true
          }
          Overrides {
            Name: "cs:EquipmentTemplate:tooltip"
            String: "Equipment template to give to players"
          }
          Overrides {
            Name: "cs:Team:tooltip"
            String: "If non-zero, only give equipment to players on that team"
          }
          Overrides {
            Name: "cs:ReplaceOnEachRespawn:tooltip"
            String: "Whether to replace that equipment every time a player spawns"
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
        Script {
          ScriptAsset {
            Id: 3403025055362370891
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16778717896407285694
        Name: "PG_Requipper"
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
        ParentId: 11574992514487740969
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 2979918189026994856
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
