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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = pnlPlanSalleContentClick
        object pnlAnimatedGif: TPanel
          Left = 728
          Top = 109
          Width = 281
          Height = 203
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
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          OnClick = pnlImage1Click
        end
        object pnlSticker: TPanel
          Left = 160
          Top = 237
          Width = 89
          Height = 80
          TabOrder = 3
          OnClick = pnlStickerClick
        end
        object pnlLottieJson: TPanel
          Left = 304
          Top = 109
          Width = 109
          Height = 92
          TabOrder = 4
          OnClick = pnlLottieJsonClick
        end
        object pnlMenuList: TPanel
          Left = 464
          Top = 109
          Width = 223
          Height = 380
          TabOrder = 5
          OnClick = pnlMenuListClick
        end
        object pnlDraw: TPanel
          Left = 96
          Top = 311
          Width = 232
          Height = 170
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          OnClick = pnlRestomaxLogoClick
        end
        object pnlChair1: TPanel
          Left = 12
          Top = 300
          Width = 65
          Height = 73
          TabOrder = 10
          OnClick = pnlChair1Click
        end
        object pnlChair2: TPanel
          Left = 25
          Top = 416
          Width = 65
          Height = 73
          TabOrder = 11
          OnClick = pnlChair1Click
        end
        object pnlChair4: TPanel
          Left = 334
          Top = 433
          Width = 65
          Height = 73
          TabOrder = 12
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
          TabOrder = 13
          OnClick = pnlLoadingClick
        end
        object pnlChair3: TPanel
          Left = 364
          Top = 315
          Width = 65
          Height = 73
          TabOrder = 14
          OnClick = pnlChair1Click
        end
      end
    end
  end
end
