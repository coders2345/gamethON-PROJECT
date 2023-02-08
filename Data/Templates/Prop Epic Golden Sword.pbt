Assets {
  Id: 5609259535302014159
  Name: "Prop Epic Golden Sword"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9052512892043308388
      Objects {
        Id: 9052512892043308388
        Name: "Prop Epic Golden Sword"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2802070444886896844
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
        Id: 2802070444886896844
        Name: "Sword1"
        Transform {
          Location {
            Z: -58.1552048
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 0.292582095
            Y: 0.292582095
            Z: 0.292582095
          }
        }
        ParentId: 9052512892043308388
        ChildIds: 11117433675018056231
        ChildIds: 3495373691173048263
        ChildIds: 6322362278685354843
        ChildIds: 7292906935118201392
        ChildIds: 3674218494962631319
        ChildIds: 16453257068537048570
        ChildIds: 16261105353095794296
        ChildIds: 6936873371371760393
        ChildIds: 16552997178103848649
        ChildIds: 11490312515889586224
        ChildIds: 9957284052770020446
        ChildIds: 14938519897483744984
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
        Id: 11117433675018056231
        Name: "Outline Object"
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
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 16261105353095794296
            }
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.409999967
              G: 0.138476819
              A: 0.8
            }
          }
          Overrides {
            Name: "bp:Thickness"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 12032540805562280382
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
        Id: 3495373691173048263
        Name: "Fantasy Pommel 03"
        Transform {
          Location {
            X: 0.280883789
            Y: -0.0685424879
            Z: 14.1313982
          }
          Rotation {
          }
          Scale {
            X: 3.30019522
            Y: 3.30019522
            Z: 2.85079193
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Building_FoundationAccent:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 15
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505208313
              G: 0.505208313
              B: 0.505208313
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
            Id: 9675776263369201294
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
        Id: 6322362278685354843
        Name: "Fantasy Axe Blade 01"
        Transform {
          Location {
            X: 6.27697754
            Y: 0.102783203
            Z: 114.50457
          }
          Rotation {
            Pitch: 84.9994583
            Yaw: -179.999969
            Roll: -179.999969
          }
          Scale {
            X: 1.54392111
            Y: 1.326
            Z: 1.54392111
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
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
            Id: 18423898048047861963
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
        Id: 7292906935118201392
        Name: "Fantasy Axe Blade 01"
        Transform {
          Location {
            X: -7.11961365
            Y: 0.102783203
            Z: 114.50457
          }
          Rotation {
            Pitch: 84.9972229
            Roll: -179.999634
          }
          Scale {
            X: 1.54392111
            Y: 1.326
            Z: 1.54392111
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 3
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
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
            Id: 18423898048047861963
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
        Id: 3674218494962631319
        Name: "Craftsman Porch Pillar 01"
        Transform {
          Location {
            X: 0.280883789
            Y: 0.0185546875
            Z: 72.6670609
          }
          Rotation {
          }
          Scale {
            X: 0.146386683
            Y: 0.131585658
            Z: 0.0674581081
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Building_FoundationAccent:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Building_LowerTrimOuter:id"
            AssetReference {
              Id: 1740499025818237214
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
            Id: 13243011116332696511
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
        Id: 16453257068537048570
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 0.280883789
            Y: -0.0685424805
          }
          Rotation {
          }
          Scale {
            X: 2.33129311
            Y: 2.33129311
            Z: 2.42969012
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1740499025818237214
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.130208
              G: 0.0745585337
              B: 0.0590005
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 12
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.697916687
              G: 0.697916687
              B: 0.697916687
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
            Id: 3682206342183528038
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
        Id: 16261105353095794296
        Name: "Fantasy Sword Blade 04"
        Transform {
          Location {
            X: 0.280883789
            Y: -0.0685424805
            Z: 108.235435
          }
          Rotation {
          }
          Scale {
            X: 2.44697523
            Y: 2.44697523
            Z: 2.80993366
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3703288937253212394
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.393966883
              B: 0.1130125
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
            Id: 13888119501670323283
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
        Id: 6936873371371760393
        Name: "Craftsman Porch Pillar 01"
        Transform {
          Location {
            X: 0.286354065
            Y: 2.37866211
            Z: 107.301941
          }
          Rotation {
            Pitch: -90
            Yaw: 5.71059704
            Roll: 84.2896729
          }
          Scale {
            X: -0.161540523
            Y: 0.146386713
            Z: 0.165511042
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Building_FoundationAccent:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18342295445976233439
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
            Id: 11492412647233344446
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
        Id: 16552997178103848649
        Name: "Craftsman Porch Pillar 01"
        Transform {
          Location {
            X: 0.286361694
            Y: -2.34118652
            Z: 107.301941
          }
          Rotation {
            Pitch: -90
            Yaw: 14.0362635
            Roll: 75.9640121
          }
          Scale {
            X: -0.161540523
            Y: 0.146386638
            Z: 0.178561568
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Building_FoundationAccent:id"
            AssetReference {
              Id: 6529174308351763386
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18342295445976233439
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
            Id: 11492412647233344446
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
        Id: 11490312515889586224
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: -0.067779541
            Y: 3.43017578
            Z: 93.020134
          }
          Rotation {
            Pitch: -43.7749252
            Yaw: -0.226256892
            Roll: 82.5585785
          }
          Scale {
            X: 0.0406719819
            Y: 0.0406719819
            Z: 0.0406719819
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.614583313
              G: 0.114672326
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
            Id: 14582343423026952646
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
        Id: 9957284052770020446
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: 0.701080322
            Y: -2.99261475
            Z: 93.020134
          }
          Rotation {
            Pitch: -43.7749
            Yaw: -175.226288
            Roll: 82.557991
          }
          Scale {
            X: 0.0406719819
            Y: 0.0406719819
            Z: 0.0406719819
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.614583313
              G: 0.114672326
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
            Id: 14582343423026952646
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
        Id: 14938519897483744984
        Name: "Callout Sparkle"
        Transform {
          Location {
            X: 3.75040722
            Y: 2.75479221
            Z: 194.617142
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.451141119
            Y: 0.462804258
            Z: 2.17188835
          }
        }
        ParentId: 2802070444886896844
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 2
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
              X: 0.5
            }
          }
          Overrides {
            Name: "bp:Curl Speed"
            Vector {
              Y: 1
              Z: 0.04
            }
          }
          Overrides {
            Name: "bp:Curl Offset"
            Vector {
              X: 3
            }
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
              X: 3
              Y: 3
              Z: 3
            }
          }
          Overrides {
            Name: "bp:Gravity"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 4576336487085497817
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
      Id: 12032540805562280382
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    Assets {
      Id: 9675776263369201294
      Name: "Fantasy Pommel 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_003"
      }
    }
    Assets {
      Id: 6529174308351763386
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
      }
    }
    Assets {
      Id: 1740499025818237214
      Name: "Metal Old Beaten Gold 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_002"
      }
    }
    Assets {
      Id: 18423898048047861963
      Name: "Fantasy Axe Blade 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_axe_001"
      }
    }
    Assets {
      Id: 13243011116332696511
      Name: "Craftsman Porch Pillar 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_porch_001_pillar"
      }
    }
    Assets {
      Id: 3682206342183528038
      Name: "Fantasy Sword Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_grip_sword_001"
      }
    }
    Assets {
      Id: 13888119501670323283
      Name: "Fantasy Sword Blade 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_sword_004_ref"
      }
    }
    Assets {
      Id: 11492412647233344446
      Name: "Gem - Trillion Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_trillion_polished_001"
      }
    }
    Assets {
      Id: 14582343423026952646
      Name: "Decal Elven Symbols"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_elven_symbols_001"
      }
    }
    Assets {
      Id: 4576336487085497817
      Name: "Callout Sparkle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sparkles_volume_vfx"
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
