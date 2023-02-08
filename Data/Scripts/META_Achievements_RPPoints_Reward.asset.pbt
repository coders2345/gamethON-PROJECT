Assets {
  Id: 12853469988535157974
  Name: "META_Achievements_RPPoints_Reward"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Enabled"
        Bool: false
      }
      Overrides {
        Name: "cs:RewardDescription"
        String: ""
      }
      Overrides {
        Name: "cs:Amount"
        Int: 1
      }
      Overrides {
        Name: "cs:ActivityName"
        String: ""
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 12040786326427113254
        }
      }
      Overrides {
        Name: "cs:Type"
        Int: 2
      }
      Overrides {
        Name: "cs:Type:tooltip"
        String: "Don\'t Change -- Leave as 2"
      }
    }
    Assets {
      Id: 12040786326427113254
      Name: "Reward Point Icon"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Reward_Point"
      }
    }
  }
  SerializationVersion: 123
}
