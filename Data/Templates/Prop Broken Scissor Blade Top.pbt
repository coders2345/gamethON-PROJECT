Assets {
  Id: 3539260054331345672
  Name: "Prop Broken Scissor Blade Top"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6223151586998818460
      Objects {
        Id: 6223151586998818460
        Name: "Prop Broken Scissor Blade Top"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7226594990964289812
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
        Id: 7226594990964289812
        Name: "Scissors"
        Transform {
          Location {
            X: 9.53674316e-07
            Y: 0.473085403
            Z: 0.3355546
          }
          Rotation {
            Pitch: 90
            Yaw: 0.000310773583
            Roll: 0.000314696896
          }
          Scale {
            X: 1.92885423
            Y: 1.92885423
            Z: 1.92885423
          }
        }
        ParentId: 6223151586998818460
        ChildIds: 10736304340804168359
        ChildIds: 6726406859154615535
        ChildIds: 1562918723737564795
        ChildIds: 11583992101134501755
        ChildIds: 6460504972557609380
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
        Id: 10736304340804168359
        Name: "Blade 1"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -22.5779362
          }
          Scale {
            X: 0.0358195901
            Y: 0.0358195901
            Z: 0.0358195901
          }
        }
        ParentId: 7226594990964289812
        ChildIds: 7686026536542936343
        ChildIds: 15363099042050204757
        ChildIds: 13393218869743503206
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
        Id: 7686026536542936343
        Name: "blade"
        Transform {
          Location {
            X: -5.569309e-07
            Y: -12.4449129
            Z: -0.0309524536
          }
          Rotation {
            Roll: -89.999939
          }
          Scale {
            X: 1
            Y: 0.1
            Z: 1.99999988
          }
        }
        ParentId: 10736304340804168359
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4329935889840254462
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.369791657
              G: 0.369791657
              B: 0.369791657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.25
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
            Id: 2264041107168619230
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
        Id: 15363099042050204757
        Name: "Stem"
        Transform {
          Location {
            X: -2.46274209
            Y: -23.9277287
            Z: -3.29407501
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 167.895
            Roll: -89.999939
          }
          Scale {
            X: 1
            Y: 0.2
            Z: 6.59999752
          }
        }
        ParentId: 10736304340804168359
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.296875
              G: 0.0262858123
              B: 0.0262858123
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
            Id: 4311924259831349264
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
        Id: 13393218869743503206
        Name: "Ring"
        Transform {
          Location {
            X: 90.8523
            Y: 411.178436
            Z: 5.44600296
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -12.1047974
            Roll: 3.00244083e-05
          }
          Scale {
            X: 2.19999981
            Y: 2.79434347
            Z: 2.19999981
          }
        }
        ParentId: 10736304340804168359
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.296875
              G: 0.0262858123
              B: 0.0262858123
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
            Id: 16372496464315477095
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
        Id: 6726406859154615535
        Name: "CentreRivet"
        Transform {
          Location {
            X: 0.0872967765
            Y: 0.333595276
            Z: -0.659398198
          }
          Rotation {
            Roll: 1.842374e-11
          }
          Scale {
            X: 0.0531247705
            Y: 0.0531247705
            Z: 0.0603078343
          }
        }
        ParentId: 7226594990964289812
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.078125
              G: 0.078125
              B: 0.078125
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0833333358
              G: 0.0833333358
              B: 0.0833333358
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
            Id: 9753995663758072886
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
        Id: 1562918723737564795
        Name: "Blade 2"
        Transform {
          Location {
            Z: 0.396102905
          }
          Rotation {
            Yaw: -3.15011668
          }
          Scale {
            X: 0.0358195901
            Y: 0.0358195901
            Z: 0.0358195901
          }
        }
        ParentId: 7226594990964289812
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
        Id: 11583992101134501755
        Name: "Group"
        Transform {
          Location {
            X: 2.72850251
            Y: 11.9246578
            Z: -5.2509408
          }
          Rotation {
            Pitch: 90
            Yaw: -75.9637375
            Roll: 104.036156
          }
          Scale {
            X: 0.518442392
            Y: 0.518442392
            Z: 0.518442392
          }
        }
        ParentId: 7226594990964289812
        ChildIds: 1227674437607346244
        ChildIds: 1062819783526472038
        ChildIds: 10335440281219786995
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
        Id: 1227674437607346244
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: 0.0243682861
            Y: -11.9833384
            Z: 4.23020935
          }
          Rotation {
            Pitch: -0.136808679
            Yaw: 90.5398865
            Roll: 88.5370636
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 11583992101134501755
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.645000041
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
            Id: 9233381958831267591
          }
          DecalBP {
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
        Id: 1062819783526472038
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: 0.426452965
            Y: 5.9730525
            Z: -0.0173201561
          }
          Rotation {
            Pitch: -0.136810303
            Yaw: 90.539772
            Roll: 88.5370255
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 11583992101134501755
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.645000041
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
            Id: 9233381958831267591
          }
          DecalBP {
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
        Id: 10335440281219786995
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: -1.75668955
            Y: 5.99719191
            Z: 18.8260098
          }
          Rotation {
            Pitch: -0.136810303
            Yaw: 90.539711
            Roll: 88.5369949
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 11583992101134501755
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.645000041
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
            Id: 9233381958831267591
          }
          DecalBP {
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
        Id: 6460504972557609380
        Name: "Group"
        Transform {
          Location {
            X: 2.72850275
            Y: 11.9246588
            Z: 6.41385698
          }
          Rotation {
            Pitch: -90
            Yaw: 0.000309099036
            Roll: -0.000305175781
          }
          Scale {
            X: 0.518442392
            Y: 0.518442392
            Z: 0.518442392
          }
        }
        ParentId: 7226594990964289812
        ChildIds: 7407431943057684628
        ChildIds: 13703207757523296784
        ChildIds: 2075051923547156961
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
        Id: 7407431943057684628
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: 0.0243682861
            Y: -11.9833384
            Z: 4.23020935
          }
          Rotation {
            Pitch: -0.136808679
            Yaw: 90.5398865
            Roll: 88.5370636
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 6460504972557609380
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.629
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
            Id: 9233381958831267591
          }
          DecalBP {
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
        Id: 13703207757523296784
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: 0.426452965
            Y: 5.9730525
            Z: -0.0173201561
          }
          Rotation {
            Pitch: -0.136810303
            Yaw: 90.539772
            Roll: 88.5370255
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 6460504972557609380
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.629
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
            Id: 9233381958831267591
          }
          DecalBP {
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
        Id: 2075051923547156961
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: -1.75668955
            Y: 5.99719191
            Z: 18.8260098
          }
          Rotation {
            Pitch: -0.136810303
            Yaw: 90.539711
            Roll: 88.5369949
          }
          Scale {
            X: 0.0735010505
            Y: 0.0701711327
            Z: 0.101544313
          }
        }
        ParentId: 6460504972557609380
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.1875
              G: 0.176913828
              B: 0.124023445
              A: 0.629
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
            Id: 9233381958831267591
          }
          DecalBP {
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
      Id: 2264041107168619230
      Name: "Cone - Bullet"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bullet_001"
      }
    }
    Assets {
      Id: 4329935889840254462
      Name: "Metal Iron Rusted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_002"
      }
    }
    Assets {
      Id: 4311924259831349264
      Name: "Cone - Truncated Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_concave_001"
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
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 9753995663758072886
      Name: "Modern Weapon - Grenade Canister 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_teeth_001"
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
      Id: 9233381958831267591
      Name: "Decal Stains Round 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_stain_round_001"
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
