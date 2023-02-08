Assets {
  Id: 64542765882865964
  Name: "VehicleGroundedHandlerServer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:FlipOnUpsideDown"
        Bool: true
      }
      Overrides {
        Name: "cs:FlipSpeedThreshold"
        Float: 100
      }
      Overrides {
        Name: "cs:FlipDelay"
        Float: 5
      }
      Overrides {
        Name: "cs:RaycastStartUpOffset"
        Float: 20
      }
      Overrides {
        Name: "cs:RaycastEndUpOffset"
        Float: -50
      }
      Overrides {
        Name: "cs:Debug"
        Bool: false
      }
      Overrides {
        Name: "cs:FlipOnUpsideDown:tooltip"
        String: "Auto turn the vehicle back on ground if it\'s flipped upside down."
      }
      Overrides {
        Name: "cs:FlipSpeedThreshold:tooltip"
        String: "Speed at which to consider the vehicle being flipped."
      }
      Overrides {
        Name: "cs:RaycastStartUpOffset:tooltip"
        String: "Start raycast offset from vehicle position in up direction."
      }
      Overrides {
        Name: "cs:RaycastEndUpOffset:tooltip"
        String: "End raycast offset from vehicle position in up direction."
      }
      Overrides {
        Name: "cs:Debug:tooltip"
        String: "Display raycast for debugging."
      }
    }
  }
  SerializationVersion: 123
}
