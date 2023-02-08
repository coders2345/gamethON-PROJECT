Assets {
  Id: 13581291665814450657
  Name: "Prop Broken Scissor Blade"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14090276356579096104
      Objects {
        Id: 14090276356579096104
        Name: "Prop Broken Scissor Blade"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16439217252296531260
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
        Id: 16439217252296531260
        Name: "Scissors"
        Transform {
          Location {
            X: -9.02939405e-07
            Y: 0.473085403
            Z: 2.59394073
          }
          Rotation {
            Pitch: 90
            Yaw: 0.000621547166
            Roll: 0.000629393791
          }
          Scale {
            X: 1.92885423
            Y: 1.92885423
            Z: 1.92885423
          }
        }
        ParentId: 14090276356579096104
        ChildIds: 5291469899905766155
        ChildIds: 8828279736248454631
        ChildIds: 9405312928169099664
        ChildIds: 15961726580914197217
        ChildIds: 6484157468369911291
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
        Id: 5291469899905766155
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
        ParentId: 16439217252296531260
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
        Id: 8828279736248454631
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
        ParentId: 16439217252296531260
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
              R: 0.182291672
              G: 0.182291672
              B: 0.182291672
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.322916657
              G: 0.322916657
              B: 0.322916657
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
        Id: 9405312928169099664
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
        ParentId: 16439217252296531260
        ChildIds: 12926283855749502031
        ChildIds: 167715137488523997
        ChildIds: 13985229362616275567
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
        Id: 12926283855749502031
        Name: "blade"
        Transform {
          Location {
            X: 3.99304554e-08
            Y: -12.4449282
            Z: -5.24372101
          }
          Rotation {
            Yaw: -3.80123901
            Roll: -89.999939
          }
          Scale {
            X: 1
            Y: 0.1
            Z: 1.99999988
          }
        }
        ParentId: 9405312928169099664
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
        Id: 167715137488523997
        Name: "Stem"
        Transform {
          Location {
            X: 3.09153748
            Y: -25.9497128
            Z: -3.29407883
          }
          Rotation {
            Yaw: -167.105927
            Roll: -89.9999084
          }
          Scale {
            X: 1
            Y: 0.2
            Z: 6.59999752
          }
        }
        ParentId: 9405312928169099664
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
        Id: 13985229362616275567
        Name: "Ring"
        Transform {
          Location {
            X: -96.2086487
            Y: 407.829498
            Z: -13.0709076
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 12.894124
            Roll: -3.05175781e-05
          }
          Scale {
            X: 2.19999981
            Y: 2.79434347
            Z: 2.19999981
          }
        }
        ParentId: 9405312928169099664
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
        Id: 15961726580914197217
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
        ParentId: 16439217252296531260
        ChildIds: 11029600841054684742
        ChildIds: 14595372566789004994
        ChildIds: 17341944727178471224
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
        Id: 11029600841054684742
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
        ParentId: 15961726580914197217
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
        Id: 14595372566789004994
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
        ParentId: 15961726580914197217
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
        Id: 17341944727178471224
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
        ParentId: 15961726580914197217
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
        Id: 6484157468369911291
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
        ParentId: 16439217252296531260
        ChildIds: 16388350544579146951
        ChildIds: 13560325931844824266
        ChildIds: 10931963365458508882
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
        Id: 16388350544579146951
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
        ParentId: 6484157468369911291
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
        Id: 13560325931844824266
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
        ParentId: 6484157468369911291
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
        Id: 10931963365458508882
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
        ParentId: 6484157468369911291
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
