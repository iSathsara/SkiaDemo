object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = 'Base Form'
  ClientHeight = 600
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContent: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 600
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 731
    ExplicitHeight = 573
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 1032
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 729
      DesignSize = (
        1032
        41)
      object SklabelBaseTitle: TSkLabel
        Left = 336
        Top = 8
        Width = 345
        Height = 27
        Anchors = [akLeft, akTop, akRight]
        TextSettings.Font.Size = 20.000000000000000000
        TextSettings.Font.Weight = Bold
        TextSettings.HorzAlign = Center
        Words = <
          item
            Caption = 'Title'
          end>
        ExplicitWidth = 42
      end
      object btnBack: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 75
        Height = 33
        Align = alLeft
        Caption = 'Back'
        TabOrder = 0
        OnClick = btnBackClick
      end
    end
    object sbxContent: TScrollBox
      Left = 1
      Top = 42
      Width = 1032
      Height = 557
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 729
      ExplicitHeight = 530
    end
  end
end
