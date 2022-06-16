unit Form.Base.Drawings;

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
  TfrmBaseDrawings = class(TfrmBase)
    SkPaintBoxDrawings: TSkPaintBox;
    procedure SkPaintBoxDrawingsDraw(ASender: TObject; const ACanvas: ISkCanvas;
      const ADest: TRectF; const AOpacity: Single);
  private
    { Private declarations }
    FDrawProc: TPaintBoxDrawProc;
  public
    { Public declarations }
    procedure Show(const ATitle:String; const ADrawProc:TPaintBoxDrawProc); reintroduce;
  end;

var
  frmBaseDrawings: TfrmBaseDrawings;

implementation

{$R *.dfm}

{ TfrmBaseDrawings }

// OnDraw is essential for drawing on Canvas.
// Without this, nothing appears
procedure TfrmBaseDrawings.SkPaintBoxDrawingsDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
begin
  if Assigned(FDrawProc) then
    FDrawProc(ACanvas, ADest);
end;

procedure TfrmBaseDrawings.Show(const ATitle: String; const ADrawProc: TPaintBoxDrawProc);
begin
  inherited Show;
  SklabelBaseTitle.Caption:=ATitle;
  FDrawProc:= ADrawProc;
  SkPaintBoxDrawings.Align:=alClient;
  SkPaintBoxDrawings.Redraw;
  SkPaintBoxDrawings.Parent:=sbxContent;
end;

end.
