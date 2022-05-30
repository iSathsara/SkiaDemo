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
      object pnlPlanSalleContent: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 553
        Margins.Top = 0
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        OnClick = pnlPlanSalleContentClick
        DesignSize = (
          1028
          553)
        object pnlAnimatedGif: TPanel
          Left = 728
          Top = 109
          Width = 281
          Height = 203
          Anchors = [akTop, akRight]
          Caption = 'Animated Gif'
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = pnlAnimatedGifClick
        end
        object pnlMouseTrack: TPanel
          Left = 2
          Top = 512
          Width = 1023
          Height = 37
          Caption = 'Mouse Tracker'
          TabOrder = 1
          OnClick = pnlMouseTrackClick
          object SkAnimatedPaintBoxMouseMove: TSkAnimatedPaintBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1015
            Height = 29
            Align = alClient
            OnClick = pnlMouseTrackClick
            OnMouseMove = SkAnimatedPaintBoxMouseMoveMouseMove
            Duration = 100000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxMouseMoveAnimationDraw
          end
        end
        object pnlImage1: TPanel
          Left = 21
          Top = 109
          Width = 116
          Height = 92
          Caption = 'Image 1'
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          OnClick = pnlImage1Click
        end
        object pnlSticker: TPanel
          Left = 808
          Top = 396
          Width = 121
          Height = 114
          Caption = 'Telegram Sticker'
          TabOrder = 3
          OnClick = pnlStickerClick
        end
        object pnlLottieJson: TPanel
          Left = 304
          Top = 109
          Width = 109
          Height = 92
          Caption = 'Lottie Images'
          TabOrder = 4
          OnClick = pnlLottieJsonClick
        end
        object pnlMenuList: TPanel
          Left = 464
          Top = 109
          Width = 223
          Height = 380
          Anchors = [akTop, akRight]
          Caption = 'Text List'
          TabOrder = 5
          OnClick = pnlMenuListClick
        end
        object pnlDraw: TPanel
          Left = 76
          Top = 276
          Width = 245
          Height = 193
          Anchors = [akTop, akRight]
          Caption = 'Signature Panel'
          Color = clMenu
          ParentBackground = False
          TabOrder = 6
          OnClick = pnlDrawClick
        end
        object pnlShaderEffect: TPanel
          Left = 728
          Top = 310
          Width = 281
          Height = 83
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Shader'
          TabOrder = 7
          OnClick = pnlShaderEffectClick
          object SkAnimatedPaintBoxWaves: TSkAnimatedPaintBox
            Left = 1
            Top = 1
            Width = 279
            Height = 81
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            OnClick = pnlShaderEffectClick
            Duration = 10000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxWavesAnimationDraw
          end
        end
        object pnlAnimatedText: TPanel
          Left = 20
          Top = 4
          Width = 793
          Height = 75
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Animated Text'
          ParentColor = True
          TabOrder = 8
          OnClick = pnlAnimatedTextClick
          object SkAnimatedPaintBoxAnimatedText: TSkAnimatedPaintBox
            Left = 1
            Top = 1
            Width = 791
            Height = 73
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            OnClick = pnlAnimatedTextClick
            OnMouseMove = SkAnimatedPaintBoxMouseMoveMouseMove
            Duration = 10000.000000000000000000
            OnAnimationDraw = SkAnimatedPaintBoxAnimatedTextAnimationDraw
          end
        end
        object pnlRestomaxLogo: TPanel
          Left = 840
          Top = 4
          Width = 169
          Height = 76
          Caption = 'Restomax logo'
          Color = clWhite
          ParentBackground = False
          TabOrder = 9
          OnClick = pnlRestomaxLogoClick
        end
        object pnlChair1: TPanel
          Left = 12
          Top = 276
          Width = 65
          Height = 73
          Caption = 'pnlChair1'
          TabOrder = 10
          OnClick = pnlChair1Click
        end
        object pnlChair2: TPanel
          Left = 12
          Top = 396
          Width = 65
          Height = 73
          Caption = 'pnlChair2'
          TabOrder = 11
          OnClick = pnlChair1Click
        end
        object pnlChair3: TPanel
          Left = 334
          Top = 276
          Width = 65
          Height = 73
          Caption = 'pnlChair3'
          TabOrder = 12
          OnClick = pnlChair1Click
        end
        object pnlChair4: TPanel
          Left = 334
          Top = 396
          Width = 65
          Height = 73
          Caption = 'pnlChair4'
          TabOrder = 13
          OnClick = pnlChair1Click
        end
        object pnlLoading: TPanel
          Left = 160
          Top = 109
          Width = 113
          Height = 92
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Loading'
          TabOrder = 14
          OnClick = pnlLoadingClick
        end
      end
    end
  end
end
