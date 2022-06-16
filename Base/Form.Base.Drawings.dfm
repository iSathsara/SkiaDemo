inherited frmBaseDrawings: TfrmBaseDrawings
  Caption = 'Form Drawings'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlContent: TPanel
    inherited sbxContent: TScrollBox
      object SkPaintBoxDrawings: TSkPaintBox
        Left = 0
        Top = 0
        Width = 1028
        Height = 553
        Align = alClient
        OnDraw = SkPaintBoxDrawingsDraw
        ExplicitLeft = 272
        ExplicitTop = 200
        ExplicitWidth = 50
        ExplicitHeight = 50
      end
    end
  end
end
