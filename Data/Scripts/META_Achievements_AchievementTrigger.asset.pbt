Assets {
  Id: 11420458156135101101
  Name: "META_Achievements_AchievementTrigger"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Enabled"
        Bool: true
      }
      Overrides {
        Name: "cs:ID"
        String: "E1"
      }
      Overrides {
        Name: "cs:Family"
        String: ""
      }
      Overrides {
        Name: "cs:Required"
        Float: 5
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 4426746368885012124
        }
      }
      Overrides {
        Name: "cs:Description"
        String: "Get 5 Lifetime Wins"
      }
      Overrides {
        Name: "cs:IsRepeatable"
        Bool: false
      }
      Overrides {
        Name: "cs:ResetOnRoundStart"
        Bool: false
      }
      Overrides {
        Name: "cs:ResetDaily"
        Bool: false
      }
      Overrides {
        Name: "cs:GivesReward"
        Bool: false
      }
      Overrides {
        Name: "cs:AutoClaimReward"
        Bool: false
      }
      Overrides {
        Name: "cs:PreRequisite"
        String: ""
      }
      Overrides {
        Name: "cs:Trigger"
        ObjectReference {
          SelfId: 17521062360355069690
        }
      }
      Overrides {
        Name: "cs:PreRequisite:tooltip"
        String: "Achievment needing to be completed before progress can begin"
      }
      Overrides {
        Name: "cs:Enabled:tooltip"
        String: "Used to enable or disable an achievement, without turning off the entire system. (Achievements that are disabled afterprogress is stored for a player will remain saved)"
      }
      Overrides {
        Name: "cs:ID:tooltip"
        String: "Unique ID for this achievement. The smaller the ID (while remaining unique, the better) but there is no real limit on ID size."
      }
      Overrides {
        Name: "cs:Family:tooltip"
        String: "If two achievements have the same family only the one with the highest required progression while be displayed."
      }
      Overrides {
        Name: "cs:Required:tooltip"
        String: "The amount of time an action must be performed to complete this Achievement."
      }
      Overrides {
        Name: "cs:Icon:tooltip"
        String: "Icon that will show in both the Achievement panel and Notification when progress is made towards this Achievement."
      }
      Overrides {
        Name: "cs:Description:tooltip"
        String: "An explaination of what a player must do to complete this achievement. Will be shown in the Achievement UI."
      }
      Overrides {
        Name: "cs:IsRepeatable:tooltip"
        String: "Set this to true, if you\'d like players to be able to complete an achievement multiple times."
      }
      Overrides {
        Name: "cs:ResetOnRoundStart:tooltip"
        String: "Make sure IsRepeatable is set to true - If ResetOnRoundStart is set to true, all repeatable Achievements will have their progress set to 0 each time the RoundStart even is fired."
      }
      Overrides {
        Name: "cs:GivesReward:tooltip"
        String: "Set this to true if the Achievement gives rewards upon completion of the Achievement."
      }
      Overrides {
        Name: "cs:Trigger:tooltip"
        String: "Object refrence to the trigger that will be us to unlock this achievement."
      }
      Overrides {
        Name: "cs:AutoClaimReward:tooltip"
        String: "Set to true if you want the player to be granted rewards automatically on completion"
      }
    }
    Assets {
      Id: 4426746368885012124
      Name: "Survival Binoculars 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Survival_Equip_Binoculars_001"
      }
    }
  }
  SerializationVersion: 123
}
