inherited frmMain: TfrmMain
  Caption = 'Form Main'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlContent: TPanel
    inherited pnlTop: TPanel
      inherited SklabelBaseTitle: TSkLabel
        Width = 411
        Words = <
          item
            Caption = 'Main Menu'
          end>
        ExplicitWidth = 108
      end
      inherited btnBack: TButton
        Enabled = False
        Visible = False
      end
    end
    inherited sbxContent: TScrollBox
      Color = clSkyBlue
      ParentColor = False
      object btnPlanSalle: TButton
        Left = 120
        Top = 152
        Width = 792
        Height = 57
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Plan Salle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnPlanSalleClick
      end
      object btnSkiaFeatures: TButton
        Left = 120
        Top = 280
        Width = 792
        Height = 57
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Other Skia Features'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
