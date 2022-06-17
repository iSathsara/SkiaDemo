unit Form.Base.Texts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.Types,

  {skia}
  Skia,
  Skia.Vcl,

  {base}
  Form.Base;

type
  TPaintBoxDrawProc = reference to procedure(const ACanvas: ISkCanvas; const ADest: TRectF);

type
  TfrmBaseTexts = class(TfrmBase)
    SkPaintBoxTexts: TSkPaintBox;
    procedure SkPaintBoxTextsDraw(ASender: TObject; const ACanvas: ISkCanvas;
      const ADest: TRectF; const AOpacity: Single);
  private
    { Private declarations }
    FDrawProc: TPaintBoxDrawProc;
  public
    { Public declarations }
    procedure Show(const ATitle:String; const ADrawProc:TPaintBoxDrawProc); reintroduce;
  end;

var
  frmBaseTexts: TfrmBaseTexts;

implementation

{$R *.dfm}

{ TfrmBaseTexts }

procedure TfrmBaseTexts.SkPaintBoxTextsDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
begin
  if Assigned(FDrawProc) then
    FDrawProc(ACanvas, ADest);
end;

procedure TfrmBaseTexts.Show(const ATitle: String; const ADrawProc: TPaintBoxDrawProc);
begin
inherited Show;
  SklabelBaseTitle.Caption:=ATitle;
  FDrawProc:= ADrawProc;
  SkPaintBoxTexts.Align:=alClient;
  SkPaintBoxTexts.Redraw;
  SkPaintBoxTexts.Parent:=sbxContent;
end;

end.
