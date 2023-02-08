Assets {
  Id: 16258950987246937681
  Name: "META_Achievements_Resource_Reward"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Enabled"
        Bool: false
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 1283463588493558965
        }
      }
      Overrides {
        Name: "cs:Amount"
        Int: 1
      }
      Overrides {
        Name: "cs:ResourceName"
        String: ""
      }
      Overrides {
        Name: "cs:RewardDescription"
        String: ""
      }
      Overrides {
        Name: "cs:Type"
        Int: 1
      }
      Overrides {
        Name: "cs:Type:tooltip"
        String: "Don\'t Change --  Leave as 1"
      }
      Overrides {
        Name: "cs:Enabled:tooltip"
        String: "Set to true if the reward should be enabled."
      }
      Overrides {
        Name: "cs:Icon:tooltip"
        String: "The image that will under the reward section of an Achievement."
      }
      Overrides {
        Name: "cs:Amount:tooltip"
        String: "How much claiming this reward will add to a players resources."
      }
      Overrides {
        Name: "cs:ResourceName:tooltip"
        String: "The resource name of the resource this reward gives to players on a completed Achievement."
      }
      Overrides {
        Name: "cs:RewardDescription:tooltip"
        String: "The description of the reward to better explain what it is."
      }
    }
    Assets {
      Id: 1283463588493558965
      Name: "Fantasy Gold 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Gold_002"
      }
    }
  }
  SerializationVersion: 123
}
