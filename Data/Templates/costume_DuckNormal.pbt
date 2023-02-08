Assets {
  Id: 11412144064380787458
  Name: "costume_DuckNormal"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12428015373662087225
      Objects {
        Id: 12428015373662087225
        Name: "costume_DuckNormal"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7582066392277905372
        ChildIds: 5280211944229135596
        UnregisteredParameters {
          Overrides {
            Name: "cs:FX_Template"
            AssetReference {
              Id: 13713238088668800394
            }
          }
          Overrides {
            Name: "cs:Duration"
            Float: 0
          }
          Overrides {
            Name: "cs:IsPlayerVisible"
            Bool: false
          }
          Overrides {
            Name: "cs:Duration:isrep"
            Bool: true
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
        Equipment {
          SocketName: "root"
          PickupTrigger {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7582066392277905372
        Name: "ServerContext"
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
        ParentId: 12428015373662087225
        ChildIds: 4499613518969235068
        ChildIds: 13457098003478535498
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
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4499613518969235068
        Name: "EquipmentPlayerCostumeServer"
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
        ParentId: 7582066392277905372
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
            Id: 15084912338818064481
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13457098003478535498
        Name: "EquipmentPersisterServer"
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
        ParentId: 7582066392277905372
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
            Id: 3379952949325994711
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5280211944229135596
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
        ParentId: 12428015373662087225
        ChildIds: 5885018418529064213
        ChildIds: 7360631148787807989
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 5885018418529064213
        Name: "ChickenCostumeV2"
        Transform {
          Location {
            Z: 47.321
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5280211944229135596
        ChildIds: 240855571027003937
        ChildIds: 4810991386112255115
        ChildIds: 10848714227232462532
        UnregisteredParameters {
          Overrides {
            Name: "cs:pelvisSource"
            ObjectReference {
              SubObjectId: 2209760385363052660
            }
          }
          Overrides {
            Name: "cs:pelvisTarget"
            ObjectReference {
              SubObjectId: 3123059983670810923
            }
          }
          Overrides {
            Name: "cs:leftHipSource"
            ObjectReference {
              SubObjectId: 10521840204904031842
            }
          }
          Overrides {
            Name: "cs:leftHipTarget"
            ObjectReference {
              SubObjectId: 8917145951943878579
            }
          }
          Overrides {
            Name: "cs:rightHipSource"
            ObjectReference {
              SubObjectId: 5296995863694785550
            }
          }
          Overrides {
            Name: "cs:rightHipTarget"
            ObjectReference {
              SubObjectId: 7669643967886119737
            }
          }
          Overrides {
            Name: "cs:leftKneeSource"
            ObjectReference {
              SubObjectId: 16123651748929588199
            }
          }
          Overrides {
            Name: "cs:leftKneeTarget"
            ObjectReference {
              SubObjectId: 5669129419486168708
            }
          }
          Overrides {
            Name: "cs:rightKneeSource"
            ObjectReference {
              SubObjectId: 6429494328217487748
            }
          }
          Overrides {
            Name: "cs:rightKneeTarget"
            ObjectReference {
              SubObjectId: 17458663174376277885
            }
          }
          Overrides {
            Name: "cs:headSource"
            ObjectReference {
              SubObjectId: 18200285996799058273
            }
          }
          Overrides {
            Name: "cs:headTarget"
            ObjectReference {
              SubObjectId: 13818238179231316172
            }
          }
          Overrides {
            Name: "cs:rootTarget"
            ObjectReference {
              SubObjectId: 8712231179115763194
            }
          }
          Overrides {
            Name: "cs:rootSource"
            ObjectReference {
              SubObjectId: 13844466624233993008
            }
          }
          Overrides {
            Name: "cs:leftAnkleTarget"
            ObjectReference {
              SubObjectId: 17027585443880407612
            }
          }
          Overrides {
            Name: "cs:leftAnkleSource"
            ObjectReference {
              SubObjectId: 13133739114211619114
            }
          }
          Overrides {
            Name: "cs:rightAnkleTarget"
            ObjectReference {
              SubObjectId: 10216978866778877348
            }
          }
          Overrides {
            Name: "cs:rightAnkleSource"
            ObjectReference {
              SubObjectId: 6017602773935139087
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
        Id: 240855571027003937
        Name: "CleanupCostumeScript"
        Transform {
          Location {
            Z: -138.416992
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 5885018418529064213
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
            Id: 8492745159484701794
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4810991386112255115
        Name: "ScaleGroup"
        Transform {
          Location {
            Z: -138.416992
          }
          Rotation {
          }
          Scale {
            X: 0.935848951
            Y: 0.935848951
            Z: 0.935848951
          }
        }
        ParentId: 5885018418529064213
        ChildIds: 8712231179115763194
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
        Id: 8712231179115763194
        Name: "root_target"
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
        ParentId: 4810991386112255115
        ChildIds: 3123059983670810923
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
        Id: 3123059983670810923
        Name: "pelvis_target"
        Transform {
          Location {
            X: -8.067
            Z: 142
          }
          Rotation {
            Pitch: -77.255043
            Yaw: -179.999
            Roll: 179.997986
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8712231179115763194
        ChildIds: 17348521070249369217
        ChildIds: 8917145951943878579
        ChildIds: 7669643967886119737
        ChildIds: 13818238179231316172
        ChildIds: 4808155532382783448
        ChildIds: 14884288114781442633
        ChildIds: 7312339955370868184
        UnregisteredParameters {
        }
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
        Id: 17348521070249369217
        Name: "bodyBottom_GEO"
        Transform {
          Location {
            X: 3.37373185
            Y: 0.000136950606
            Z: 6.81637573
          }
          Rotation {
            Pitch: -33.427887
            Yaw: 180
            Roll: -90
          }
          Scale {
            X: 0.584535718
            Y: 0.745312
            Z: 0.631355047
          }
        }
        ParentId: 3123059983670810923
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 8917145951943878579
        Name: "left_hip_target"
        Transform {
          Location {
            X: -1.49723899
            Y: -18
            Z: 3.96595597
          }
          Rotation {
            Pitch: 67.8086243
            Yaw: 174.281067
            Roll: -172.423096
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3123059983670810923
        ChildIds: 5669129419486168708
        UnregisteredParameters {
        }
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
        Id: 5669129419486168708
        Name: "left_knee_target"
        Transform {
          Location {
            X: 4.43499851
            Y: -2.88
            Z: -19.7728176
          }
          Rotation {
            Pitch: -73.9964066
            Yaw: 125.021347
            Roll: -135.256531
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.99999994
          }
        }
        ParentId: 8917145951943878579
        ChildIds: 11277592605117022357
        ChildIds: 17027585443880407612
        UnregisteredParameters {
        }
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
        Id: 11277592605117022357
        Name: "Gem - Heart Polished"
        Transform {
          Location {
            X: 4.10706663
            Y: 0.327202022
            Z: -14.1951323
          }
          Rotation {
            Pitch: -46.9129639
            Yaw: -169.774811
            Roll: -112.769989
          }
          Scale {
            X: 0.189998314
            Y: 0.31021297
            Z: 0.120967418
          }
        }
        ParentId: 5669129419486168708
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 17027585443880407612
        Name: "left_ankle_target"
        Transform {
          Location {
            X: 12.7791815
            Y: -2.998
            Z: -20.6774559
          }
          Rotation {
            Pitch: 57.5201759
            Yaw: 165.41597
            Roll: 174.045715
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.00000012
          }
        }
        ParentId: 5669129419486168708
        ChildIds: 13088205263390715017
        ChildIds: 14990084092227258974
        ChildIds: 1357950624305485105
        ChildIds: 1937182102110296270
        ChildIds: 7047982591860632913
        UnregisteredParameters {
        }
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
        Id: 13088205263390715017
        Name: "left_ankle_GEO"
        Transform {
          Location {
            X: 0.00121172681
            Y: 0.0021586048
            Z: -8.73756695
          }
          Rotation {
            Pitch: 0.000519094348
            Yaw: 0.000816635496
            Roll: 0.000282976194
          }
          Scale {
            X: 0.0440530516
            Y: 0.043981161
            Z: 0.184687883
          }
        }
        ParentId: 17027585443880407612
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8619830679695120720
          }
          Teams {
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
        Id: 14990084092227258974
        Name: "left_toe_01_GEO"
        Transform {
          Location {
            X: 5.55797529
            Y: 0.595154524
            Z: -20.204155
          }
          Rotation {
            Pitch: 57.2913933
            Yaw: -17.7085571
            Roll: -19.8798828
          }
          Scale {
            X: 0.0280423407
            Y: 0.0279843565
            Z: 0.131601259
          }
        }
        ParentId: 17027585443880407612
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 2448982667642731065
          }
          Teams {
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
        Id: 1357950624305485105
        Name: "left_toe_01_GEO"
        Transform {
          Location {
            X: 4.9262
            Y: -3.20270467
            Z: -20.5461445
          }
          Rotation {
            Pitch: 57.2920647
            Yaw: -17.3105469
            Roll: 1.91012061
          }
          Scale {
            X: 0.0272140801
            Y: 0.0269849319
            Z: 0.120641299
          }
        }
        ParentId: 17027585443880407612
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 2448982667642731065
          }
          Teams {
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
        Id: 1937182102110296270
        Name: "left_toe_01_GEO"
        Transform {
          Location {
            X: 5.07798
            Y: 4.675488
            Z: -19.1062851
          }
          Rotation {
            Pitch: 57.20261
            Yaw: -18.1253967
            Roll: -44.3318481
          }
          Scale {
            X: 0.0221393462
            Y: 0.0219876971
            Z: 0.123095967
          }
        }
        ParentId: 17027585443880407612
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 2448982667642731065
          }
          Teams {
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
        Id: 7047982591860632913
        Name: "left_toe_01_GEO"
        Transform {
          Location {
            X: 5.96701622
            Y: 0.459902614
            Z: -20.4866409
          }
          Rotation {
            Pitch: 11.387639
            Yaw: 90.5592499
            Roll: 59.5335655
          }
          Scale {
            X: 0.133003712
            Y: 0.175015673
            Z: 0.14460136
          }
        }
        ParentId: 17027585443880407612
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 4543315673208588897
          }
          Teams {
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
        Id: 7669643967886119737
        Name: "right_hip_target"
        Transform {
          Location {
            X: -1.49723601
            Y: 18
            Z: 3.96595478
          }
          Rotation {
            Pitch: 67.8084564
            Yaw: -174.285934
            Roll: 172.417236
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3123059983670810923
        ChildIds: 17458663174376277885
        UnregisteredParameters {
        }
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
        Id: 17458663174376277885
        Name: "right_knee_target"
        Transform {
          Location {
            X: 4.4350009
            Y: 2.87950802
            Z: -19.7728119
          }
          Rotation {
            Pitch: -73.9931946
            Yaw: -125.018005
            Roll: 135.25325
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.999999881
          }
        }
        ParentId: 7669643967886119737
        ChildIds: 11139644052147373668
        ChildIds: 10216978866778877348
        UnregisteredParameters {
        }
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
        Id: 11139644052147373668
        Name: "Gem - Heart Polished"
        Transform {
          Location {
            X: 4.10823917
            Y: -0.329421252
            Z: -14.1997089
          }
          Rotation {
            Pitch: -46.9129333
            Yaw: 169.775116
            Roll: 112.769943
          }
          Scale {
            X: 0.189998314
            Y: 0.31021297
            Z: 0.120966963
          }
        }
        ParentId: 17458663174376277885
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 10216978866778877348
        Name: "right_ankle_target"
        Transform {
          Location {
            X: 12.7791824
            Y: 2.99785304
            Z: -20.6774673
          }
          Rotation {
            Pitch: 57.5183868
            Yaw: -165.412186
            Roll: -174.045334
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.999999881
          }
        }
        ParentId: 17458663174376277885
        ChildIds: 14062554686530055737
        ChildIds: 14101088032464871242
        ChildIds: 14963496062451341509
        ChildIds: 12932027069267503035
        ChildIds: 17097351318050117277
        UnregisteredParameters {
        }
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
        Id: 14062554686530055737
        Name: "right_ankle_GEO"
        Transform {
          Location {
            X: 0.00112765539
            Y: 0.000875620346
            Z: -8.7381773
          }
          Rotation {
          }
          Scale {
            X: 0.0440530516
            Y: 0.0440211482
            Z: 0.184687927
          }
        }
        ParentId: 10216978866778877348
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8619830679695120720
          }
          Teams {
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
        Id: 14101088032464871242
        Name: "right_toe_01_GEO"
        Transform {
          Location {
            X: 5.55077314
            Y: -0.480346918
            Z: -20.2219448
          }
          Rotation {
            Pitch: 57.2913
            Yaw: 17.7095585
            Roll: 19.8801212
          }
          Scale {
            X: 0.0280423407
            Y: 0.0280305818
            Z: 0.131601095
          }
        }
        ParentId: 10216978866778877348
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 11076240285386210842
          }
          Teams {
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
        Id: 14963496062451341509
        Name: "right_toe_01_GEO"
        Transform {
          Location {
            X: 5.26602602
            Y: -4.18905449
            Z: -19.3191967
          }
          Rotation {
            Pitch: 57.2341614
            Yaw: 18.0440731
            Roll: 38.876194
          }
          Scale {
            X: 0.0221393369
            Y: 0.0221300554
            Z: 0.123096
          }
        }
        ParentId: 10216978866778877348
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 11076240285386210842
          }
          Teams {
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
        Id: 12932027069267503035
        Name: "right_toe_01_GEO"
        Transform {
          Location {
            X: 4.62472725
            Y: 3.12991595
            Z: -20.3480778
          }
          Rotation {
            Pitch: 57.2923775
            Yaw: 17.3110352
            Roll: -1.91085815
          }
          Scale {
            X: 0.0272140838
            Y: 0.0272026677
            Z: 0.144486442
          }
        }
        ParentId: 10216978866778877348
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 11076240285386210842
          }
          Teams {
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
        Id: 17097351318050117277
        Name: "left_toe_01_GEO"
        Transform {
          Location {
            X: 6.62990856
            Y: -0.62874186
            Z: -20.7257595
          }
          Rotation {
            Pitch: -10.9927063
            Yaw: 90.5579147
            Roll: 59.3163643
          }
          Scale {
            X: 0.133003712
            Y: 0.175015673
            Z: 0.144601405
          }
        }
        ParentId: 10216978866778877348
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.698513806
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
            Id: 4543315673208588897
          }
          Teams {
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
        Id: 13818238179231316172
        Name: "head_target"
        Transform {
          Location {
            X: -26.2568932
            Y: 0.00048978749
            Z: 23.9787636
          }
          Rotation {
            Pitch: 76.1332092
            Yaw: 0.00466513401
            Roll: 0.00455881655
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3123059983670810923
        ChildIds: 17402868637258357532
        ChildIds: 15391040238605446971
        ChildIds: 13051537090641830200
        ChildIds: 18220721291690051102
        ChildIds: 12139042941721613431
        ChildIds: 8930651105649375773
        ChildIds: 16169439427160755540
        ChildIds: 6601608241264650243
        ChildIds: 13064524228008930377
        ChildIds: 2410135872825144948
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
        Id: 17402868637258357532
        Name: "head_GEO"
        Transform {
          Location {
            X: -17.437212
            Y: 0.0829194263
            Z: 11.2860384
          }
          Rotation {
            Pitch: 26.5946045
            Yaw: 2.2131834
            Roll: -89.0087891
          }
          Scale {
            X: 0.520182788
            Y: 0.450712711
            Z: 0.422557414
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 15391040238605446971
        Name: "beak_GEO"
        Transform {
          Location {
            X: 5.47989845
            Y: 0.0828986168
            Z: 19.1084194
          }
          Rotation {
            Pitch: 115.849014
          }
          Scale {
            X: 0.049500756
            Y: 0.233871132
            Z: 0.250600159
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 13051537090641830200
        Name: "eye"
        Transform {
          Location {
            X: -3.06116557
            Y: 6.1036849
            Z: 27.6386166
          }
          Rotation {
            Roll: 45
          }
          Scale {
            X: 0.102726035
            Y: 0.102733351
            Z: 0.103000015
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 18220721291690051102
        Name: "eye"
        Transform {
          Location {
            X: -3.06117797
            Y: -7.13580894
            Z: 27.6386185
          }
          Rotation {
            Roll: -45
          }
          Scale {
            X: 0.102726035
            Y: 0.102733351
            Z: 0.103000015
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 12139042941721613431
        Name: "pupil"
        Transform {
          Location {
            X: 1.02252877
            Y: -7.49023581
            Z: 30.5541592
          }
          Rotation {
            Pitch: -56.6306763
            Yaw: -8.99081421
            Roll: 11.2426586
          }
          Scale {
            X: 0.0286616236
            Y: 0.0286778528
            Z: 0.0284144841
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 3381973076649511207
          }
          Teams {
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
        Id: 8930651105649375773
        Name: "pupil"
        Transform {
          Location {
            X: 1.01827455
            Y: 6.76525
            Z: 30.5520191
          }
          Rotation {
            Pitch: -54.7518921
            Yaw: 9.23112
            Roll: -179.754593
          }
          Scale {
            X: 0.030097805
            Y: 0.0301148556
            Z: 0.0298382901
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 3381973076649511207
          }
          Teams {
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
        Id: 16169439427160755540
        Name: "beak_GEO"
        Transform {
          Location {
            X: 4.73921633
            Y: -1.84956707e-06
            Z: 22.4421844
          }
          Rotation {
            Pitch: 123.709854
            Yaw: -0.534362793
            Roll: -0.481445312
          }
          Scale {
            X: 0.0495013893
            Y: 0.233871132
            Z: 0.250600129
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.115629144
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 6601608241264650243
        Name: "head_GEO"
        Transform {
          Location {
            X: -9.86831188
            Y: 0.0829111859
            Z: -3.8211019
          }
          Rotation {
            Pitch: 26.5945969
            Yaw: 2.21318126
            Roll: -89.0087585
          }
          Scale {
            X: 0.330040157
            Y: 0.175984949
            Z: 0.268099785
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 13064524228008930377
        Name: "eye"
        Transform {
          Location {
            X: -2.78458405
            Y: -3.47916365
            Z: 33.5955353
          }
          Rotation {
            Pitch: 27.391222
            Yaw: 5.32710361
            Roll: -56.6438599
          }
          Scale {
            X: 0.0331284367
            Y: 0.0283479653
            Z: 0.0152617469
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
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
            Id: 8617818292148704575
          }
          Teams {
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
        Id: 2410135872825144948
        Name: "eye"
        Transform {
          Location {
            X: -2.72153187
            Y: 1.57317901
            Z: 33.4698219
          }
          Rotation {
            Pitch: 27.3907585
            Yaw: 5.32732964
            Roll: 61.979866
          }
          Scale {
            X: 0.0331284367
            Y: 0.0283479653
            Z: 0.0152617469
          }
        }
        ParentId: 13818238179231316172
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14715636290873654336
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
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
            Id: 8617818292148704575
          }
          Teams {
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
        Id: 4808155532382783448
        Name: "bodyBottom_GEO"
        Transform {
          Location {
            X: 0.209150806
            Y: -24.3972454
            Z: 3.70914173
          }
          Rotation {
            Pitch: -31.7895508
            Yaw: 177.842789
            Roll: -87.8129883
          }
          Scale {
            X: 0.37195456
            Y: 0.525087357
            Z: 0.228440136
          }
        }
        ParentId: 3123059983670810923
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 14884288114781442633
        Name: "tailFeathers_01_GEO"
        Transform {
          Location {
            X: 12.3652992
            Y: 0.0510699
            Z: -28.6402054
          }
          Rotation {
            Pitch: -30.0882568
          }
          Scale {
            X: 0.145402655
            Y: 0.259123713
            Z: 0.364562869
          }
        }
        ParentId: 3123059983670810923
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 7312339955370868184
        Name: "bodyBottom_GEO"
        Transform {
          Location {
            X: -1.35556424
            Y: 26.0291672
            Z: 3.35437608
          }
          Rotation {
            Pitch: -25.598053
            Yaw: -167.817963
            Roll: -90.3219604
          }
          Scale {
            X: 0.37195456
            Y: 0.525087357
            Z: 0.228440136
          }
        }
        ParentId: 3123059983670810923
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14715636290873654336
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
            Id: 1064960179719297784
          }
          Teams {
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
        Id: 10848714227232462532
        Name: "SourceNodes"
        Transform {
          Location {
            X: 7.109375
            Z: -138.416992
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 5885018418529064213
        ChildIds: 13844466624233993008
        ChildIds: 2209760385363052660
        ChildIds: 10521840204904031842
        ChildIds: 5296995863694785550
        ChildIds: 16123651748929588199
        ChildIds: 6429494328217487748
        ChildIds: 18200285996799058273
        ChildIds: 6017602773935139087
        ChildIds: 13133739114211619114
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
        Id: 13844466624233993008
        Name: "root"
        Transform {
          Location {
            X: -4.74015
            Y: -4.76837158e-07
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
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
        Id: 2209760385363052660
        Name: "pelvis"
        Transform {
          Location {
            X: -3.81469732e-07
            Y: -3.71415138
            Z: 122.678
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
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
        Id: 10521840204904031842
        Name: "left_hip"
        Transform {
          Location {
            X: 9.32199669
            Y: -5.25015163
            Z: 110.309
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 5296995863694785550
        Name: "right_hip"
        Transform {
          Location {
            X: -9.3219986
            Y: -5.25015163
            Z: 110.309
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 16123651748929588199
        Name: "left_knee"
        Transform {
          Location {
            X: 21.0600014
            Y: 21.2757874
            Z: 39.5077286
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 6429494328217487748
        Name: "right_knee"
        Transform {
          Location {
            X: -21.06
            Y: 21.2757874
            Z: 39.5077286
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 18200285996799058273
        Name: "head"
        Transform {
          Location {
            X: -3.81468823e-07
            Y: -4.74015141
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -1.41650389e-05
            Roll: 2.13421757e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
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
        Id: 6017602773935139087
        Name: "right_ankle"
        Transform {
          Location {
            X: 290.792175
            Y: -5.23082304
            Z: 88.9471588
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 13133739114211619114
        Name: "left_ankle"
        Transform {
          Location {
            X: 290.792175
            Y: -5.23082304
            Z: 88.9471588
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10848714227232462532
        UnregisteredParameters {
        }
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
        Id: 7360631148787807989
        Name: "ChickenClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 5280211944229135596
        ChildIds: 3031578780118899104
        UnregisteredParameters {
          Overrides {
            Name: "cs:Chicken"
            ObjectReference {
              SubObjectId: 3031578780118899104
            }
          }
          Overrides {
            Name: "cs:Sound"
            ObjectReference {
              SubObjectId: 8724630455249735965
            }
          }
          Overrides {
            Name: "cs:Stance"
            String: "unarmed_idle_relax"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "unarmed_run_forward"
          }
          Overrides {
            Name: "cs:JumpAnimation"
            String: "unarmed_bite"
          }
          Overrides {
            Name: "cs:RunScale"
            Vector2 {
              X: 0.25
              Y: 2
            }
          }
          Overrides {
            Name: "cs:RunSpeedMax"
            Float: 500
          }
          Overrides {
            Name: "cs:JumpAnimationLength"
            Float: 0.4
          }
          Overrides {
            Name: "cs:TimeBetweenClucks"
            Float: 2
          }
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SubObjectId: 12428015373662087225
            }
          }
          Overrides {
            Name: "cs:RunScale:tooltip"
            String: "X is the lowest animation speed of the run animation that will play, and Y is the highest speed. Tune these along with speed max to get good feeling strides from your chicken."
          }
          Overrides {
            Name: "cs:TimeBetweenClucks:tooltip"
            String: "Roughly the amount of time between clucks. Some randomness is applied to further mix it up."
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
            Id: 11279084958612998996
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3031578780118899104
        Name: "Raptor Mob"
        Transform {
          Location {
            X: 1.05892563
            Y: 0.0876045227
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 0.861271799
            Y: 0.861272156
            Z: 0.861272037
          }
        }
        ParentId: 7360631148787807989
        ChildIds: 2982058438958073998
        ChildIds: 2423388058169165123
        ChildIds: 8724630455249735965
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3973623883385786958
          }
          Teams {
          }
          AnimatedMesh {
            AnimationStancePlaybackRate: 2
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 1
              ShouldLoop: true
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
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
        Id: 2982058438958073998
        Name: "Creature Bird Rooster Full Morning Caw 01 SFX"
        Transform {
          Location {
            Z: -80
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 3031578780118899104
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
            Id: 13490996272578098154
          }
          AutoPlay: true
          Volume: 1
          Falloff: 5000
          Radius: 1000
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2423388058169165123
        Name: "CostumeManagerScriptClient"
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
        ParentId: 3031578780118899104
        UnregisteredParameters {
          Overrides {
            Name: "cs:PelvisZOffset"
            Float: -30
          }
          Overrides {
            Name: "cs:UpdateMaxDistanceFromPlayer"
            Float: 0
          }
          Overrides {
            Name: "cs:CostumeScale"
            Float: 2
          }
          Overrides {
            Name: "cs:Costume"
            ObjectReference {
              SubObjectId: 5885018418529064213
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
            Id: 120287087225471347
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8724630455249735965
        Name: "Creature Bird Chicken Cluck 01 SFX"
        Transform {
          Location {
            Z: -80
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3031578780118899104
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
            Id: 4832317491132024529
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 1064960179719297784
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 8619830679695120720
      Name: "Prism - 6-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_hexagon_001"
      }
    }
    Assets {
      Id: 2448982667642731065
      Name: "Prism - 5-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_pentagon_hq_001"
      }
    }
    Assets {
      Id: 4543315673208588897
      Name: "Street Sign - Triangle"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_street-sign_triangle_001"
      }
    }
    Assets {
      Id: 11076240285386210842
      Name: "Prism - 5-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_pentagon_001"
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    Assets {
      Id: 3381973076649511207
      Name: "Lens"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_lense_001"
      }
    }
    Assets {
      Id: 8617818292148704575
      Name: "Craftsman Stairs 01 Pillar"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_stairs_001_pillar"
      }
    }
    Assets {
      Id: 3973623883385786958
      Name: "Raptor Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_raptor_default_basic_001_ref"
      }
    }
    Assets {
      Id: 13490996272578098154
      Name: "Creature Bird Rooster Full Morning Caw 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bird_rooster_full_morning_caw_01_Cue_ref"
      }
    }
    Assets {
      Id: 4832317491132024529
      Name: "Creature Bird Chicken Cluck 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bird_chicken_cluck_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
