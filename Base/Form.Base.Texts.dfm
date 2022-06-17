inherited frmBaseTexts: TfrmBaseTexts
  Caption = 'Form Texts'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlContent: TPanel
    inherited sbxContent: TScrollBox
      object SkPaintBoxTexts: TSkPaintBox
        Left = 0
        Top = 0
        Width = 1028
        Height = 553
        Align = alClient
        OnDraw = SkPaintBoxTextsDraw
        ExplicitLeft = 240
        ExplicitTop = 176
        ExplicitWidth = 50
        ExplicitHeight = 50
      end
    end
  end
end
