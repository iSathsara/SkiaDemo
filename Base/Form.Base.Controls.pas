unit Form.Base.Controls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.Types,
  System.UITypes,

  { skia }
  Skia, Skia.Vcl,

  { base }
  Form.Base;

type
  IFreeHandRenderer = Interface
  End;

type
  TFreeHandRenderer = class(TInterfacedObject, IFreeHandRenderer)
  private
    FCurrentPath : ISkPath;
    FOldPaths    : TArray<ISkPath>;
    FPathBuilder : ISkPathBuilder;
    FPressed     : Boolean;
  published
    procedure OnDraw(ASender: TObject; ACanvas: ISkCanvas;const ADest: TRectF; const AOpacity: Single);
    procedure OnMouseDown(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
    procedure OnMouseUp(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
    procedure OnMouseLeave(ASender: TObject);
    procedure OnMouseMove(ASender: TObject; AShift: TShiftState; X, Y: Integer);
  end;

type
  TfrmBaseControls = class(TfrmBase)
  private
    { Private declarations }
    FControl: TControl;
    FControlCreationFunc: TFunc<TControl>;
  public
    { Public declarations }
    procedure Show(const ATitle:String; const AControlCreationFunc: TFunc<TControl>); reintroduce;
  end;

var
  frmBaseControls: TfrmBaseControls;

implementation

{$R *.dfm}


{ TfrmBaseControls }

procedure TfrmBaseControls.Show(const ATitle: String; const AControlCreationFunc: TFunc<TControl>);
begin
  inherited Show;  // this calls the Show method of base class. It responsible for displaying new form
  SklabelBaseTitle.Caption:=ATitle;
  frmBaseControls.Caption:=ATitle;
  FControlCreationFunc := AControlCreationFunc;
  FControl := FControlCreationFunc();
  FControl.Parent := sbxContent;
end;

{ TFreeHandRenderer }

procedure TFreeHandRenderer.OnDraw(ASender: TObject; ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
var
  LPaint: ISkPaint;
  LPath : ISkPath;
begin
  ACanvas.Save;
  try
    ACanvas.ClipRect(ADest);
    LPaint := TSkPaint.Create(TSkPaintStyle.Stroke);          // Create SKIA Paint with a style
    LPaint.AntiAlias := True;                                 // Set Anti-Alias of SKIA Paint
    LPaint.Color := TAlphaColors.Royalblue;                   // Set Drawing color
    LPaint.SetPathEffect(TSkPathEffect.MakeCorner(50));
    LPaint.StrokeCap := TSkStrokeCap.Butt;
    LPaint.StrokeWidth := 4;
  finally
    for LPath in FOldPaths do
      ACanvas.DrawPath(LPath, LPaint);        // Drawing is happening here, on Canvas

    if Assigned(FPathBuilder) and not Assigned(FCurrentPath) then
      FCurrentPath := FPathBuilder.Snapshot;
    if Assigned(FCurrentPath) then
      ACanvas.DrawPath(FCurrentPath, LPaint);
  end;
  ACanvas.Restore;
end;

procedure TFreeHandRenderer.OnMouseDown(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
begin
  FPressed := True;
  FPathBuilder := TSkPathBuilder.Create;   // Create path builder
  FPathBuilder.MoveTo(X, Y);
  FCurrentPath := nil;
end;

procedure TFreeHandRenderer.OnMouseLeave(ASender: TObject);
begin
  if Assigned(FPathBuilder) then
  begin
    if FCurrentPath = nil then
      FCurrentPath := FPathBuilder.Snapshot;    // this returns a SKIA Path

    FOldPaths := FOldPaths + [FCurrentPath];    // Collect paths
    FPathBuilder := nil;
    FCurrentPath := nil;
  end;
end;

procedure TFreeHandRenderer.OnMouseMove(ASender: TObject; AShift: TShiftState; X, Y: Integer);
begin
  if FPressed and Assigned(FPathBuilder) then
  begin
    FCurrentPath := nil;
    FPathBuilder.LineTo(X, Y);
    (ASender as TSkPaintBox).Redraw;
  end;
end;

procedure TFreeHandRenderer.OnMouseUp(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
begin
  OnMouseLeave(ASender);
end;

end.

