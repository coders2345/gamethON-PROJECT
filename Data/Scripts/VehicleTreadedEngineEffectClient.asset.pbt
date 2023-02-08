Assets {
  Id: 4746949617771156708
  Name: "VehicleTreadedEngineEffectClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:EngineSound"
        ObjectReference {
          SelfId: 2309269672100763954
        }
      }
      Overrides {
        Name: "cs:MinEnginePitch"
        Float: 100
      }
      Overrides {
        Name: "cs:MaxEnginePitch"
        Float: 1500
      }
      Overrides {
        Name: "cs:TreadSound"
        ObjectReference {
          SelfId: 1176835750701301933
        }
      }
      Overrides {
        Name: "cs:MinEnginePitch:tooltip"
        String: "Engine sound minimum pitch. Sets when vehicle is not accelerating."
      }
      Overrides {
        Name: "cs:MaxEnginePitch:tooltip"
        String: "Engine sound maximum pitch. Sets towards when vehicle is accelerating and reaches maximum speed."
      }
    }
  }
  SerializationVersion: 123
}
