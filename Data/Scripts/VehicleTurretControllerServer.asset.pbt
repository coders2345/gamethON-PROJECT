Assets {
  Id: 10640764949971533658
  Name: "VehicleTurretControllerServer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:TurretRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:TurretWeapon"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:TurretGun"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:RotateTurretYaw"
        Bool: true
      }
      Overrides {
        Name: "cs:RotateTurretGunPitch"
        Bool: true
      }
      Overrides {
        Name: "cs:PitchMinMaxAngle"
        Vector2 {
          X: -10
          Y: 25
        }
      }
      Overrides {
        Name: "cs:PitchCenterOffset"
        Float: 10
      }
      Overrides {
        Name: "cs:RotationSmoothness"
        Float: 1
      }
      Overrides {
        Name: "cs:FriendlyExplosionDamage"
        Bool: true
      }
      Overrides {
        Name: "cs:ExplosionDamageRange"
        Vector2 {
          X: 10
          Y: 50
        }
      }
      Overrides {
        Name: "cs:ExplosionRadius"
        Float: 400
      }
      Overrides {
        Name: "cs:ExplosionKnockbackSpeed"
        Float: 1000
      }
      Overrides {
        Name: "cs:DebugExplosion"
        Bool: false
      }
      Overrides {
        Name: "cs:FriendlyExplosionDamage:tooltip"
        String: "Whether or not to apply damage on allies (including self damage)."
      }
      Overrides {
        Name: "cs:ExplosionDamageRange:tooltip"
        String: "Set the minimum to maximum damage of the explosion. X is damage far from the explosion center and Y is damage close to the explosion center."
      }
      Overrides {
        Name: "cs:ExplosionRadius:tooltip"
        String: "How far the explosion impacts the surrounding players."
      }
      Overrides {
        Name: "cs:ExplosionKnockbackSpeed:tooltip"
        String: "How strong the explosion blasts the player from the center."
      }
      Overrides {
        Name: "cs:DebugExplosion:tooltip"
        String: "Whether to show the explosion gizmo or not for debugging purposes."
      }
      Overrides {
        Name: "cs:RotateTurretGunPitch:tooltip"
        String: "Can the tank rotate the turret gun up and down."
      }
      Overrides {
        Name: "cs:RotateTurretYaw:tooltip"
        String: "Can the tank rotate the turret gun left and right."
      }
      Overrides {
        Name: "cs:PitchMinMaxAngle:tooltip"
        String: "Minimum (x) and maximum (y) angle the turret gun can rotate down and up."
      }
      Overrides {
        Name: "cs:PitchCenterOffset:tooltip"
        String: "Offset in up direction for turret gun to look at."
      }
    }
  }
  SerializationVersion: 123
}
