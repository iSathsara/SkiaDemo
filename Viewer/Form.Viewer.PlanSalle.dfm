inherited frmViewerPlanSalle: TfrmViewerPlanSalle
  Caption = 'Plan Salle'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlContent: TPanel
    inherited pnlTop: TPanel
      inherited SklabelBaseTitle: TSkLabel
        Words = <
          item
            Caption = 'Plan Salle'
          end>
      end
    end
    inherited sbxContent: TScrollBox
      ExplicitWidth = 1032
      ExplicitHeight = 557
      object pnlPlanSalleContent: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 553
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 3
        DesignSize = (
          1028
          553)
        object pnlAnimatedGif: TPanel
          Left = 600
          Top = 32
          Width = 409
          Height = 201
          Anchors = [akTop, akRight]
          Caption = 'Animated Gif'
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
        end
        object pnlMouseTrack: TPanel
          Left = 600
          Top = 252
          Width = 409
          Height = 70
          Caption = 'Mouse Tracker'
          TabOrder = 1
          object SkAnimatedPaintBoxMouseMove: TSkAnimatedPaintBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 401
            Height = 62
            Align = alClient
            OnMouseMove = SkAnimatedPaintBoxMouseMoveMouseMove
            Duration = 100000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxMouseMoveAnimationDraw
            ExplicitLeft = 176
            ExplicitTop = 0
            ExplicitWidth = 50
            ExplicitHeight = 50
          end
        end
        object pnlImage1: TPanel
          Left = 24
          Top = 32
          Width = 129
          Height = 121
          Caption = 'Image 1'
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
        end
        object pnlParticleEffect: TPanel
          Left = 184
          Top = 32
          Width = 225
          Height = 121
          Caption = 'particle Effect'
          TabOrder = 3
        end
        object pnlLottieJson: TPanel
          Left = 440
          Top = 32
          Width = 129
          Height = 121
          Caption = 'Lottie Images'
          TabOrder = 4
        end
        object pnlMenuList: TPanel
          Left = 600
          Top = 328
          Width = 201
          Height = 209
          Anchors = [akTop, akRight]
          Caption = 'Text List'
          TabOrder = 5
        end
        object pnlDraw: TPanel
          Left = 824
          Top = 328
          Width = 185
          Height = 209
          Anchors = [akTop, akRight]
          Caption = 'Signature Panel'
          Color = clMenu
          ParentBackground = False
          TabOrder = 6
        end
        object pnlShaderEffect: TPanel
          Left = 24
          Top = 168
          Width = 545
          Height = 154
          Anchors = [akTop, akRight]
          Caption = 'Shader'
          TabOrder = 7
          object SkAnimatedPaintBoxWaves: TSkAnimatedPaintBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 537
            Height = 146
            Align = alClient
            Duration = 10000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxWavesAnimationDraw
            ExplicitLeft = 0
            ExplicitHeight = 108
          end
        end
        object pnlAnimatedText: TPanel
          Left = 24
          Top = 328
          Width = 545
          Height = 113
          Caption = 'Animated Text'
          TabOrder = 8
          object SkAnimatedPaintBoxAnimatedText: TSkAnimatedPaintBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 537
            Height = 105
            Align = alClient
            OnMouseMove = SkAnimatedPaintBoxMouseMoveMouseMove
            Duration = 10000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxAnimatedTextAnimationDraw
            ExplicitLeft = 144
            ExplicitTop = 40
            ExplicitWidth = 50
            ExplicitHeight = 50
          end
        end
      end
    end
  end
end
