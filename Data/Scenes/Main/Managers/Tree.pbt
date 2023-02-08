Name: "Managers"
RootId: 14804995794779222633
Objects {
  Id: 15926639620485399090
  Name: "DayCycleController"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
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
      key: 1790149726386871721
      value {
        Overrides {
          Name: "Name"
          String: "DayCycleController"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -360
            Y: -230
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
        Overrides {
          Name: "cs:DayLengthMinutes"
          Float: 15
        }
      }
    }
    TemplateAsset {
      Id: 15834433509110776463
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2361322037241278537
  Name: "Upgrade Manager"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
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
      key: 12247605984523536664
      value {
        Overrides {
          Name: "Name"
          String: "Upgrade Manager"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -360
            Y: -230
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
      Id: 11949849052042469058
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11850098655096493718
  Name: "Stats and Achievements Manager"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
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
      key: 11992861489050087824
      value {
        Overrides {
          Name: "Name"
          String: "Stats and Achievements Manager"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -360
            Y: -230
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
      Id: 11505984077724237046
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3169917814478852051
  Name: "LeaderboardControllerServer"
  Transform {
    Location {
      X: -360
      Y: -230
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
  UnregisteredParameters {
    Overrides {
      Name: "cs:Resource"
      String: "MoneyAccumulated"
    }
    Overrides {
      Name: "cs:LeaderboardReference"
      NetReference {
        Key: "68FC21E7C18A4957"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:APIMembership"
      AssetReference {
        Id: 11026042278951772777
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
      Id: 16365840483425802718
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10313693037942008407
  Name: "Daily Rewards"
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
  ParentId: 14804995794779222633
  ChildIds: 9971295216547097741
  ChildIds: 13149321491998399633
  UnregisteredParameters {
    Overrides {
      Name: "cs:WeekDays"
      Int: 7
    }
    Overrides {
      Name: "cs:DaySeconds"
      Int: 84600
    }
    Overrides {
      Name: "cs:DaySeconds:tooltip"
      String: "Time it takes for player to wait until the next reward."
    }
    Overrides {
      Name: "cs:WeekDays:tooltip"
      String: "Daily rewards day in the week."
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
  Id: 13149321491998399633
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
  ParentId: 10313693037942008407
  ChildIds: 17806769200826758015
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
  Id: 17806769200826758015
  Name: "DailyRewardsManagerClient"
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
  ParentId: 13149321491998399633
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 10313693037942008407
      }
    }
    Overrides {
      Name: "cs:API"
      AssetReference {
        Id: 18130308969670679201
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:UtilitiesLibrary"
      AssetReference {
        Id: 6982211318544228041
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
      Id: 17356019524714739653
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9971295216547097741
  Name: "DailyRewardsManagerServer"
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
  ParentId: 10313693037942008407
  UnregisteredParameters {
    Overrides {
      Name: "cs:DailyRewardsLibrary"
      AssetReference {
        Id: 2883300169660606911
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 10313693037942008407
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
      Id: 17807241536875234054
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7680788365582371161
  Name: "Insta Grow Manager"
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
  ParentId: 14804995794779222633
  ChildIds: 2701253235049990213
  ChildIds: 1537932447427856847
  ChildIds: 14961630107975952624
  UnregisteredParameters {
    Overrides {
      Name: "cs:RewardAmount"
      Int: 3
    }
    Overrides {
      Name: "cs:VIPRewardAmount"
      Int: 10
    }
    Overrides {
      Name: "cs:DaySeconds"
      Int: 84600
    }
    Overrides {
      Name: "cs:DaySeconds:tooltip"
      String: "Time it takes for player to wait until the next reward."
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
  Id: 14961630107975952624
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
  ParentId: 7680788365582371161
  ChildIds: 15087940017605638307
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
  Id: 15087940017605638307
  Name: "InstaGrowManagerClient"
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
  ParentId: 14961630107975952624
  UnregisteredParameters {
    Overrides {
      Name: "cs:API"
      AssetReference {
        Id: 131185853015217525
      }
    }
    Overrides {
      Name: "cs:APIMembership"
      AssetReference {
        Id: 11026042278951772777
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 7680788365582371161
      }
    }
    Overrides {
      Name: "cs:BundlesList"
      ObjectReference {
        SelfId: 1537932447427856847
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
      Id: 18418016151714892463
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1537932447427856847
  Name: "Bundles"
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
  ParentId: 7680788365582371161
  ChildIds: 5068873967071261906
  ChildIds: 15612678027580826046
  ChildIds: 15762018788561704084
  ChildIds: 1106279602504674457
  ChildIds: 10131130888560012189
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
  Id: 10131130888560012189
  Name: "Pack Bundle 5"
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
  ParentId: 1537932447427856847
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundleReference"
      NetReference {
        Key: "d2975017422646068028ea211f1b756f"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:CounterResource"
      String: "InstaGrowBundle5"
    }
    Overrides {
      Name: "cs:RewardAmount"
      Int: 600
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
  Id: 1106279602504674457
  Name: "Pack Bundle 4"
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
  ParentId: 1537932447427856847
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundleReference"
      NetReference {
        Key: "f04ee35364ad43b4afe0721b9e5ee4af"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:CounterResource"
      String: "InstaGrowBundle4"
    }
    Overrides {
      Name: "cs:RewardAmount"
      Int: 280
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
  Id: 15762018788561704084
  Name: "Pack Bundle 3"
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
  ParentId: 1537932447427856847
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundleReference"
      NetReference {
        Key: "0f5b50fa886c4dd787f61753edcbef91"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:CounterResource"
      String: "InstaGrowBundle3"
    }
    Overrides {
      Name: "cs:RewardAmount"
      Int: 120
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
  Id: 15612678027580826046
  Name: "Pack Bundle 2"
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
  ParentId: 1537932447427856847
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundleReference"
      NetReference {
        Key: "86de49e6c6714a7bab5c94fbb9b6c583"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:CounterResource"
      String: "InstaGrowBundle2"
    }
    Overrides {
      Name: "cs:RewardAmount"
      Int: 46
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
  Id: 5068873967071261906
  Name: "Pack Bundle 1"
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
  ParentId: 1537932447427856847
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundleReference"
      NetReference {
        Key: "1e379be6dbaf4ffda9ae53bdb90b717a"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:CounterResource"
      String: "InstaGrowBundle1"
    }
    Overrides {
      Name: "cs:RewardAmount"
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
  Id: 2701253235049990213
  Name: "InstaGrowManagerServer"
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
  ParentId: 7680788365582371161
  UnregisteredParameters {
    Overrides {
      Name: "cs:BundlesList"
      ObjectReference {
        SelfId: 1537932447427856847
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
      Id: 9569437600607719171
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3440525018936753198
  Name: "VIP Membership"
  Transform {
    Location {
      X: -360
      Y: -230
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
  ChildIds: 7123199526100954856
  ChildIds: 1590513480938228684
  ChildIds: 8814953426454711218
  UnregisteredParameters {
    Overrides {
      Name: "cs:MaxMembersBonus"
      Int: 4
    }
    Overrides {
      Name: "cs:CropSellBonus"
      Float: 0.25
    }
    Overrides {
      Name: "cs:ItemSellBonus"
      Float: 0.15
    }
    Overrides {
      Name: "cs:FishSellBonus"
      Float: 0.05
    }
    Overrides {
      Name: "cs:BarnUpgradeDiscount"
      Float: 0.15
    }
    Overrides {
      Name: "cs:BackpackUpgradeDiscount"
      Float: 0.15
    }
    Overrides {
      Name: "cs:MountUpgradeDiscount"
      Float: 0.15
    }
    Overrides {
      Name: "cs:LandUpgradeDiscount"
      Float: 0.2
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
  Id: 8814953426454711218
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
  ParentId: 3440525018936753198
  ChildIds: 6093562919436178566
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
  Id: 6093562919436178566
  Name: "MembershipManagerClient"
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
  ParentId: 8814953426454711218
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 3440525018936753198
      }
    }
    Overrides {
      Name: "cs:References"
      ObjectReference {
        SelfId: 1590513480938228684
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
      Id: 14172178210022846627
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1590513480938228684
  Name: "References"
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
  ParentId: 3440525018936753198
  ChildIds: 15549000822253290315
  ChildIds: 12854719117791510514
  ChildIds: 11134850512264740872
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
  Id: 11134850512264740872
  Name: "Perk 3"
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
  ParentId: 1590513480938228684
  UnregisteredParameters {
    Overrides {
      Name: "cs:Perk"
      NetReference {
        Key: "69ce121fcdfa4f5f96623ed1b2244886"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12854719117791510514
  Name: "Perk 2"
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
  ParentId: 1590513480938228684
  UnregisteredParameters {
    Overrides {
      Name: "cs:Perk"
      NetReference {
        Key: "05c29bf8984746358364582313529265"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15549000822253290315
  Name: "Perk 1"
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
  ParentId: 1590513480938228684
  UnregisteredParameters {
    Overrides {
      Name: "cs:Perk"
      NetReference {
        Key: "ef37c34ee47a4014a2e4d44c66836d29"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7123199526100954856
  Name: "MembershipManagerServer"
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
  ParentId: 3440525018936753198
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 3440525018936753198
      }
    }
    Overrides {
      Name: "cs:References"
      ObjectReference {
        SelfId: 1590513480938228684
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
      Id: 16709029143365683060
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3404949732772419445
  Name: "Upgrades Managers"
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
  ParentId: 14804995794779222633
  ChildIds: 6190090170716704320
  ChildIds: 10199803543401539633
  ChildIds: 9351048868045068897
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
  Id: 9351048868045068897
  Name: "Stable Manager"
  Transform {
    Location {
      X: 360
      Y: 230
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3404949732772419445
  ChildIds: 15121620503294122123
  ChildIds: 8975426173524854962
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
  Id: 8975426173524854962
  Name: "Stable Player Settings"
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
  ParentId: 9351048868045068897
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
    FilePartitionName: "Stable Player Settings"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15121620503294122123
  Name: "StableManagerServer"
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
  ParentId: 9351048868045068897
  UnregisteredParameters {
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:UpgradesList"
      AssetReference {
        Id: 11924206060240164048
      }
    }
    Overrides {
      Name: "cs:StablePlayerSettings"
      ObjectReference {
        SelfId: 8975426173524854962
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
      Id: 2498902922938354031
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10199803543401539633
  Name: "ShovelManagerServer"
  Transform {
    Location {
      X: 360
      Y: 230
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3404949732772419445
  UnregisteredParameters {
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:UpgradesList"
      AssetReference {
        Id: 11924206060240164048
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
      Id: 13257604051147364800
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6190090170716704320
  Name: "BarnStorageManagerServer"
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
  ParentId: 3404949732772419445
  UnregisteredParameters {
    Overrides {
      Name: "cs:APIBarnStorage"
      AssetReference {
        Id: 4359953246305547163
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
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
      Id: 1283034963587722286
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16722618525186135401
  Name: "Inventory Manager"
  Transform {
    Location {
      X: -360
      Y: -230
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14804995794779222633
  ChildIds: 15014666195367550751
  ChildIds: 13690467066919855626
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
  Id: 13690467066919855626
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
  ParentId: 16722618525186135401
  ChildIds: 23575387344050213
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
  Id: 23575387344050213
  Name: "InventoryManagerClient"
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
  ParentId: 13690467066919855626
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryManagerServer"
      ObjectReference {
        SelfId: 15014666195367550751
      }
    }
    Overrides {
      Name: "cs:Inventory"
      AssetReference {
        Id: 6844302491945012588
      }
    }
    Overrides {
      Name: "cs:PackBits"
      AssetReference {
        Id: 14453356550125253840
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
      Id: 12010571176138019423
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15014666195367550751
  Name: "InventoryManagerServer"
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
  ParentId: 16722618525186135401
  UnregisteredParameters {
    Overrides {
      Name: "cs:Inventory"
      AssetReference {
        Id: 6844302491945012588
      }
    }
    Overrides {
      Name: "cs:PackBits"
      AssetReference {
        Id: 14453356550125253840
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:PlayerInteractionLibrary"
      AssetReference {
        Id: 4960808440174013975
      }
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
      Id: 12303969209660418384
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12694184953862034457
  Name: "Player Init Manager"
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
  ParentId: 14804995794779222633
  ChildIds: 2024577286353062629
  UnregisteredParameters {
    Overrides {
      Name: "cs:StartMoney"
      Int: 71
    }
    Overrides {
      Name: "cs:StartPlotsUnlocked"
      Int: 4
    }
    Overrides {
      Name: "cs:StartInstaGrow"
      Int: 10
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
  Id: 2024577286353062629
  Name: "PlayerInitManagerServer"
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
  ParentId: 12694184953862034457
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 12694184953862034457
      }
    }
    Overrides {
      Name: "cs:APIFarms"
      AssetReference {
        Id: 10048832509248327120
      }
    }
    Overrides {
      Name: "cs:StatsLibrary"
      AssetReference {
        Id: 9086258696745892316
      }
    }
    Overrides {
      Name: "cs:APIBarnStorage"
      AssetReference {
        Id: 4359953246305547163
      }
    }
    Overrides {
      Name: "cs:Inventory"
      AssetReference {
        Id: 6844302491945012588
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
      Id: 15896090959832410233
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
