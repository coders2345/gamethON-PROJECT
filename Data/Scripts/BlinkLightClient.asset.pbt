Assets {
  Id: 15639207597315071671
  Name: "BlinkLightClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:StatsLibrary"
        AssetReference {
          Id: 9086258696745892316
        }
      }
      Overrides {
        Name: "cs:Equipment"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:MinSpeed"
        Float: 2.5
      }
      Overrides {
        Name: "cs:MaxSpeed"
        Float: 25
      }
      Overrides {
        Name: "cs:MinDistance"
        Float: 0
      }
      Overrides {
        Name: "cs:DepthDistanceScale"
        Float: 0
      }
      Overrides {
        Name: "cs:MaxDistanceStat"
        String: "DetectionRadius"
      }
    }
  }
  SerializationVersion: 123
}
