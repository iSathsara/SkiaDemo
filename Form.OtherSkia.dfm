inherited frmOtherSkia: TfrmOtherSkia
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlContent: TPanel
    inherited sbxContent: TScrollBox
      object pnlControls: TPanel
        Left = 16
        Top = 16
        Width = 473
        Height = 73
        Align = alCustom
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lblControlPanel: TLabel
          Left = 8
          Top = 8
          Width = 54
          Height = 16
          Caption = 'Controls'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnControlSvg: TButton
          Left = 8
          Top = 40
          Width = 75
          Height = 25
          Caption = 'SVG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnControlSvgClick
        end
        object btnControlAnimation: TButton
          Left = 128
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Animations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnControlAnimationClick
        end
        object btnControlLabels: TButton
          Left = 248
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Labels'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnControlLabelsClick
        end
        object btnControlPaintbox: TButton
          Left = 376
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Paint box'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnControlPaintboxClick
        end
      end
      object pnlDrawings: TPanel
        Left = 16
        Top = 119
        Width = 473
        Height = 73
        Align = alCustom
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lblDrawing: TLabel
          Left = 8
          Top = 8
          Width = 60
          Height = 16
          Caption = 'Drawings'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnDrawingRectElipse: TButton
          Left = 8
          Top = 40
          Width = 114
          Height = 25
          Caption = 'Rectangle / Elipse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnDrawingRectElipseClick
        end
        object btnDrawingCurves: TButton
          Left = 152
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Curves'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnDrawingCurvesClick
        end
        object btnDrawingRotation: TButton
          Left = 264
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Rotation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnDrawingRotationClick
        end
        object btnDrawingDiagonal: TButton
          Left = 376
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Diagonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnDrawingDiagonalClick
        end
      end
      object pnlText: TPanel
        Left = 16
        Top = 219
        Width = 473
        Height = 174
        Align = alCustom
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object lblText: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 16
          Caption = 'Text'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnTextBasicText: TButton
          Left = 8
          Top = 40
          Width = 89
          Height = 25
          Caption = 'Basic Text'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnTextBasicTextClick
        end
        object btnTextRightToLeft: TButton
          Left = 128
          Top = 40
          Width = 91
          Height = 25
          Caption = 'Right to Left'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnTextRightToLeftClick
        end
        object btnTextCustomFont: TButton
          Left = 248
          Top = 40
          Width = 91
          Height = 25
          Caption = 'Custom Font'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btnTextMultiStyle: TButton
          Left = 368
          Top = 40
          Width = 83
          Height = 25
          Caption = 'Multi-Style'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object btnTextParagraphPath: TButton
          Left = 8
          Top = 88
          Width = 89
          Height = 25
          Caption = 'Paragraph Path'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnTextFontWeight: TButton
          Left = 128
          Top = 88
          Width = 91
          Height = 25
          Caption = 'Font Weight'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnTextSetMaxLines: TButton
          Left = 248
          Top = 88
          Width = 203
          Height = 25
          Caption = 'Set Maximum Lines'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object btnTextOnClickEvent: TButton
          Left = 8
          Top = 136
          Width = 89
          Height = 25
          Caption = 'On-Click Event'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object btnTextFallBackFontFamily: TButton
          Left = 128
          Top = 136
          Width = 145
          Height = 25
          Caption = 'Fallback Font Fam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object btnTextJustifyText: TButton
          Left = 318
          Top = 136
          Width = 133
          Height = 25
          Caption = 'Justify Text'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
      object pnlTransforms: TPanel
        Left = 16
        Top = 424
        Width = 473
        Height = 73
        Align = alCustom
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lblTransform: TLabel
          Left = 8
          Top = 8
          Width = 73
          Height = 16
          Caption = 'Transforms'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnTransformTaper: TButton
          Left = 8
          Top = 40
          Width = 129
          Height = 25
          Caption = 'Taper Transform'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnTransformStraightCorners: TButton
          Left = 176
          Top = 40
          Width = 137
          Height = 25
          Caption = 'Straight Corners'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnTransform3DRotation: TButton
          Left = 344
          Top = 40
          Width = 107
          Height = 25
          Caption = '3D Rotation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnlDrawingPaths: TPanel
        Left = 536
        Top = 16
        Width = 473
        Height = 128
        Align = alCustom
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object lblDrawingPaths: TLabel
          Left = 8
          Top = 8
          Width = 94
          Height = 16
          Caption = 'Drawing Paths'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnDrawingPathsDiscreetPath: TButton
          Left = 8
          Top = 40
          Width = 105
          Height = 25
          Caption = 'Discreet Path'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnDrawingPathsComposedPath: TButton
          Left = 136
          Top = 40
          Width = 113
          Height = 25
          Caption = 'Composed Path'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnDrawingPathsShaders: TButton
          Left = 272
          Top = 40
          Width = 89
          Height = 25
          Caption = 'Shaders'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btnDrawingPathsSum: TButton
          Left = 392
          Top = 40
          Width = 73
          Height = 25
          Caption = 'SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object btnDrawingPathPathFill: TButton
          Left = 8
          Top = 88
          Width = 105
          Height = 25
          Caption = 'Path Fill'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnDrawingPathsRoundCorners: TButton
          Left = 136
          Top = 88
          Width = 113
          Height = 25
          Caption = 'Round Corners'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlImageEdit: TPanel
        Left = 536
        Top = 160
        Width = 473
        Height = 128
        Align = alCustom
        Color = clFuchsia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        object lblImageEdit: TLabel
          Left = 8
          Top = 8
          Width = 68
          Height = 16
          Caption = 'Image Edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnImageEditBrightContrast: TButton
          Left = 8
          Top = 40
          Width = 129
          Height = 25
          Caption = 'Bright / Contrast'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnImageEditColorFilter: TButton
          Left = 168
          Top = 40
          Width = 121
          Height = 25
          Caption = 'Color Filter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnImageEditHueSaturation: TButton
          Left = 320
          Top = 40
          Width = 137
          Height = 25
          Caption = 'Hue / Saturation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btnImageEditLightning: TButton
          Left = 320
          Top = 88
          Width = 137
          Height = 25
          Caption = 'Lightning'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object btnImageEditVingate: TButton
          Left = 8
          Top = 88
          Width = 129
          Height = 25
          Caption = 'Vingate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnImageEditDrawShadow: TButton
          Left = 168
          Top = 88
          Width = 121
          Height = 25
          Caption = 'Draw Shadow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlParticle: TPanel
        Left = 536
        Top = 307
        Width = 473
        Height = 73
        Align = alCustom
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        object lblParticle: TLabel
          Left = 8
          Top = 8
          Width = 49
          Height = 16
          Caption = 'Particle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnParticleParticle: TButton
          Left = 8
          Top = 40
          Width = 129
          Height = 25
          Caption = 'Particle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnParticleParticleText: TButton
          Left = 176
          Top = 40
          Width = 137
          Height = 25
          Caption = 'Particle Text'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object pnlRuntimeEffect: TPanel
        Left = 536
        Top = 424
        Width = 473
        Height = 73
        Align = alCustom
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        object lblRuntimeEffect: TLabel
          Left = 8
          Top = 8
          Width = 102
          Height = 16
          Caption = 'Runtime Effects'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnRuntimeEffectsShaderAnim: TButton
          Left = 8
          Top = 40
          Width = 129
          Height = 25
          Caption = 'Shader Animation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnRuntimeEffectMouseTrack: TButton
          Left = 176
          Top = 40
          Width = 137
          Height = 25
          Caption = 'Mouse Track'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
end
