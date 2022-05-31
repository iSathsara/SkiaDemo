inherited frmOtherSkia: TfrmOtherSkia
  Caption = 'Other Skia features'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        end
        object btnControlPaintbox: TButton
          Left = 376
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Paint box'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object pnlDrawings: TPanel
        Left = 16
        Top = 120
        Width = 473
        Height = 73
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        end
      end
      object pnlText: TPanel
        Left = 16
        Top = 219
        Width = 473
        Height = 174
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
      object Panel1: TPanel
        Left = 16
        Top = 424
        Width = 473
        Height = 73
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
    end
  end
end
