Assets {
  Id: 16403178488348374141
  Name: "FPS Meter _ Chathooks"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17478968791579359850
      Objects {
        Id: 17478968791579359850
        Name: "FPS Meter & Chathooks"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 157335770096928293
        ChildIds: 7464841899298645397
        ChildIds: 7920614129869869853
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
          FilePartitionName: "Chat"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7464841899298645397
        Name: "FPSMeter_v2"
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
        ParentId: 17478968791579359850
        ChildIds: 11522397784631071037
        ChildIds: 16233777929512885534
        UnregisteredParameters {
          Overrides {
            Name: "cs:ShouldDebug"
            Bool: true
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
        Id: 11522397784631071037
        Name: "FPSMeterServer"
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
        ParentId: 7464841899298645397
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
            Id: 14082252533534762355
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16233777929512885534
        Name: "FPSMeter"
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
        ParentId: 7464841899298645397
        ChildIds: 5435187590874392005
        ChildIds: 10371301653311410345
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
        Id: 5435187590874392005
        Name: "FPSMeterClient"
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
        ParentId: 16233777929512885534
        UnregisteredParameters {
          Overrides {
            Name: "cs:UIText"
            ObjectReference {
              SubObjectId: 3890464766039541374
            }
          }
          Overrides {
            Name: "cs:WriteToGlobal"
            Bool: true
          }
          Overrides {
            Name: "cs:OverallMin_FPS"
            ObjectReference {
              SubObjectId: 3815999696315631288
            }
          }
          Overrides {
            Name: "cs:OverallMax_FPS"
            ObjectReference {
              SubObjectId: 3353434230245192558
            }
          }
          Overrides {
            Name: "cs:AverageSinceLoad_FPS"
            ObjectReference {
              SubObjectId: 8219984233443615179
            }
          }
          Overrides {
            Name: "cs:LastFiveSec_FPS"
            ObjectReference {
              SubObjectId: 13030434578999476623
            }
          }
          Overrides {
            Name: "cs:LastFiveSecAverageMin_FPS"
            ObjectReference {
              SubObjectId: 13234218804905361996
            }
          }
          Overrides {
            Name: "cs:LastFiveSecAverageMax_FPS"
            ObjectReference {
              SubObjectId: 9989526024583910852
            }
          }
          Overrides {
            Name: "cs:UIPanel"
            ObjectReference {
              SubObjectId: 9048737483133952810
            }
          }
          Overrides {
            Name: "cs:FPSMeter_v2"
            ObjectReference {
              SubObjectId: 7464841899298645397
            }
          }
          Overrides {
            Name: "cs:FPSMeterCommandsAPI"
            AssetReference {
              Id: 17775000266512524489
            }
          }
          Overrides {
            Name: "cs:TimerText"
            ObjectReference {
              SubObjectId: 2370549334662686723
            }
          }
          Overrides {
            Name: "cs:LoggingText"
            ObjectReference {
              SubObjectId: 975556398485249625
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
            Id: 7234354945653695657
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10371301653311410345
        Name: "UI Container"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.7075472e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16233777929512885534
        ChildIds: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            TwoSided: true
            TickWhenOffScreen: true
            RedrawTime: 30
            UseSafeZoneAdjustment: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9048737483133952810
        Name: "UI Panel"
        Transform {
          Location {
            X: -74566.1094
            Y: -39875.0156
            Z: 12259.4531
          }
          Rotation {
            Yaw: -13.9371042
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10371301653311410345
        ChildIds: 2686578651565339068
        ChildIds: 2370549334662686723
        ChildIds: 975556398485249625
        ChildIds: 6285248689875140589
        ChildIds: 1528424615842312270
        ChildIds: 17606553453099574906
        ChildIds: 9883140941255717062
        ChildIds: 12403299425893129835
        ChildIds: 10595091426864392676
        ChildIds: 11709383470939822832
        ChildIds: 3890464766039541374
        ChildIds: 3815999696315631288
        ChildIds: 3353434230245192558
        ChildIds: 8219984233443615179
        ChildIds: 13030434578999476623
        ChildIds: 13234218804905361996
        ChildIds: 9989526024583910852
        ChildIds: 4941471424817639350
        ChildIds: 226160241154480506
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 195
          Height: 254
          UIX: -136.752914
          UIY: -268.040039
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2686578651565339068
        Name: "Background"
        Transform {
          Location {
            X: -8760.92676
            Y: 53352.9531
            Z: 11038.9336
          }
          Rotation {
            Yaw: 99.4374237
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 521
          Height: 237
          UIX: 319.023315
          UIY: -40.7425232
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 17289448223043935888
            }
            Color {
              G: 0.0639762208
              B: 0.598958313
              A: 0.405000031
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2370549334662686723
        Name: "TimerText"
        Transform {
          Location {
            X: 62766.7773
            Y: 56660.8633
            Z: -12259.4531
          }
          Rotation {
            Yaw: 13.9371414
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 83
          Height: 60
          UIX: 235.377731
          UIY: -33.184967
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "00:00"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            ClipTextToSize: true
            Font {
              Id: 841534158063459245
            }
            VerticalJustification {
              Value: "mc:everticaljustification:top"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 975556398485249625
        Name: "LoggingText"
        Transform {
          Location {
            X: 62766.7617
            Y: 56660.8633
            Z: -12259.4531
          }
          Rotation {
            Yaw: 13.9371605
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 121
          Height: 60
          UIX: 131.677444
          UIY: -33.184967
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Logging..."
            Color {
              R: 0.99
              G: 0.786754966
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:left"
            }
            AutoWrapText: true
            ClipTextToSize: true
            Font {
              Id: 841534158063459245
            }
            VerticalJustification {
              Value: "mc:everticaljustification:top"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6285248689875140589
        Name: "Current_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.42997
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIY: -6.58284
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "current:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1528424615842312270
        Name: "OverallMin_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 29.0940323
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "overal min:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17606553453099574906
        Name: "OverallMax_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429886
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 53.66959
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "overall max:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9883140941255717062
        Name: "AverageSinceLoad_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429787
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 78.239
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "avg  since load:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12403299425893129835
        Name: "LastFiveSec_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.42984
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 112.231
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "last 5s avg:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10595091426864392676
        Name: "LastFiveSecAverageMin_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429787
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 137.446426
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "5s avg (min):"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11709383470939822832
        Name: "LastFiveSecAverageMax_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429733
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 46.5300598
          UIY: 159.895645
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "5s avg (max): "
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 13
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3890464766039541374
        Name: "Current_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.430023
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 106.199097
          UIY: -6.58284
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3815999696315631288
        Name: "OverallMin_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.42997
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 29.0940323
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "25"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3353434230245192558
        Name: "OverallMax_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 53.5747223
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "75"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8219984233443615179
        Name: "AverageSinceLoad_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.42984
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 78.2386093
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "55"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13030434578999476623
        Name: "LastFiveSec_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429886
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 112.231
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "52"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13234218804905361996
        Name: "LastFiveSecAverageMin_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.42984
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 137.220795
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "45"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9989526024583910852
        Name: "LastFiveSecAverageMax_FPS"
        Transform {
          Location {
            X: -460.331024
            Y: -1503.56824
            Z: 1.90734863e-05
          }
          Rotation {
            Yaw: -116.429787
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 42
          UIX: 111.199097
          UIY: 159.358582
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "65"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:right"
            }
            AutoWrapText: true
            Font {
            }
            ShadowColor {
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
            OutlineColor {
              A: 0.990000069
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4941471424817639350
        Name: "UI Image"
        Transform {
          Location {
            X: -8760.92676
            Y: 53352.9531
            Z: 11038.9336
          }
          Rotation {
            Yaw: 99.4374466
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 395
          Height: 52
          UIX: 327.24939
          UIY: 80.9590302
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 6184978581431306217
            }
            Color {
              R: 0.010416667
              G: 0.00897302106
              B: 0.00775824627
              A: 0.948000073
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            FlipHorizontal: true
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 226160241154480506
        Name: "UI Image"
        Transform {
          Location {
            X: -8760.92676
            Y: 53352.9531
            Z: 11038.9336
          }
          Rotation {
            Yaw: 99.4374695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9048737483133952810
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 395
          Height: 52
          UIX: 327.24939
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 6184978581431306217
            }
            Color {
              R: 0.010416667
              G: 0.00897302106
              B: 0.00775824627
              A: 0.948000073
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            FlipHorizontal: true
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7920614129869869853
        Name: "Chat Controller"
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
        ParentId: 17478968791579359850
        ChildIds: 10859671142741973538
        ChildIds: 13065939696602813695
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
        Id: 10859671142741973538
        Name: "ChatControllerServer"
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
        ParentId: 7920614129869869853
        UnregisteredParameters {
          Overrides {
            Name: "cs:CommandsList"
            AssetReference {
              Id: 16333179939683747270
            }
          }
          Overrides {
            Name: "cs:AdminData"
            AssetReference {
              Id: 11744387492311440543
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
            Id: 7873343617131349597
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13065939696602813695
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
        ParentId: 7920614129869869853
        ChildIds: 14734769188417072494
        ChildIds: 15303424857979540566
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
        Id: 14734769188417072494
        Name: "ChatControllerClient"
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
        ParentId: 13065939696602813695
        UnregisteredParameters {
          Overrides {
            Name: "cs:CommandsList"
            AssetReference {
              Id: 16333179939683747270
            }
          }
          Overrides {
            Name: "cs:Helper"
            AssetReference {
              Id: 17248021429363262373
            }
          }
          Overrides {
            Name: "cs:Container"
            ObjectReference {
              SubObjectId: 15303424857979540566
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
            Id: 11040303571396754395
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15303424857979540566
        Name: "UI Container"
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
        ParentId: 13065939696602813695
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            ContentType {
              Value: "mc:ecanvascontenttype:static"
            }
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            TwoSided: true
            TickWhenOffScreen: true
            RedrawTime: 30
            UseSafeZoneAdjustment: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 17289448223043935888
      Name: "UI Gradient Rectangular 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_002"
      }
    }
    Assets {
      Id: 6184978581431306217
      Name: "Line Half 006a"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "LineHalf_006a"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
