unit Form.OtherSkia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Base, Skia, Vcl.StdCtrls, Skia.Vcl,
  Vcl.ExtCtrls;

type
  TfrmBase1 = class(TfrmBase)
    pnlControls: TPanel;
    lblControlPanel: TLabel;
    btnControlSvg: TButton;
    btnControlAnimation: TButton;
    btnControlLabels: TButton;
    btnControlPaintbox: TButton;
    pnlDrawings: TPanel;
    lblDrawing: TLabel;
    btnDrawingRectElipse: TButton;
    btnDrawingCurves: TButton;
    btnDrawingRotation: TButton;
    btnDrawingDiagonal: TButton;
    pnlText: TPanel;
    lblText: TLabel;
    btnTextBasicText: TButton;
    btnTextRightToLeft: TButton;
    btnTextCustomFont: TButton;
    btnTextMultiStyle: TButton;
    btnTextParagraphPath: TButton;
    btnTextFontWeight: TButton;
    btnTextSetMaxLines: TButton;
    btnTextOnClickEvent: TButton;
    btnTextFallBackFontFamily: TButton;
    btnTextJustifyText: TButton;
    Panel1: TPanel;
    lblTransform: TLabel;
    btnTransformTaper: TButton;
    btnTransformStraightCorners: TButton;
    btnTransform3DRotation: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase1: TfrmBase1;

implementation

{$R *.dfm}

end.
