unit Form.OtherSkia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.IOUtils,
  System.UITypes,
  System.Types,

  { Skia }
  Skia, Skia.Vcl,


  { Base }
  Form.Base,
  Form.Base.Controls,
  Form.Base.Drawings;


type
  TfrmOtherSkia = class(TfrmBase)
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
    pnlTransforms: TPanel;
    lblTransform: TLabel;
    btnTransformTaper: TButton;
    btnTransformStraightCorners: TButton;
    btnTransform3DRotation: TButton;
    pnlDrawingPaths: TPanel;
    lblDrawingPaths: TLabel;
    btnDrawingPathsDiscreetPath: TButton;
    btnDrawingPathsComposedPath: TButton;
    btnDrawingPathsShaders: TButton;
    btnDrawingPathsSum: TButton;
    btnDrawingPathPathFill: TButton;
    btnDrawingPathsRoundCorners: TButton;
    pnlImageEdit: TPanel;
    lblImageEdit: TLabel;
    btnImageEditBrightContrast: TButton;
    btnImageEditColorFilter: TButton;
    btnImageEditHueSaturation: TButton;
    btnImageEditLightning: TButton;
    btnImageEditVingate: TButton;
    btnImageEditDrawShadow: TButton;
    pnlParticle: TPanel;
    lblParticle: TLabel;
    btnParticleParticle: TButton;
    btnParticleParticleText: TButton;
    pnlRuntimeEffect: TPanel;
    lblRuntimeEffect: TLabel;
    btnRuntimeEffectsShaderAnim: TButton;
    btnRuntimeEffectMouseTrack: TButton;
    procedure btnControlSvgClick(Sender: TObject);
    procedure btnControlAnimationClick(Sender: TObject);
    procedure btnControlLabelsClick(Sender: TObject);
    procedure btnControlPaintboxClick(Sender: TObject);
    procedure btnDrawingRectElipseClick(Sender: TObject);
    procedure btnDrawingCurvesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOtherSkia: TfrmOtherSkia;
  FFreeHandRenderer: TFreeHandRenderer;

implementation

{$R *.dfm}

procedure TfrmOtherSkia.btnControlAnimationClick(Sender: TObject);
begin
  ChildForm<TfrmBaseControls>.Show('JSON Animations with SKIA',
  function (): TControl
    var
      LAnimationControl: TSkAnimatedImage absolute Result;
    begin
      LAnimationControl := TSkAnimatedImage.Create(nil);
      LAnimationControl.Align := alClient;
      LAnimationControl.LoadFromFile(AssetsPath + 'loading.json');
    end);
end;

procedure TfrmOtherSkia.btnControlLabelsClick(Sender: TObject);
begin
  ChildForm<TfrmBaseControls>.Show('SKIA Labels',
  function (): TControl
    var
      LLabel: TSkLabel absolute Result;
    begin
      LLabel := TSkLabel.Create(nil);
      LLabel.Align := alTop;
      LLabel.Words.Add('This is a single SKIA Label'+sLineBreak,TAlphaColors.Crimson,24, TSkFontComponent.TSkFontWeight.Bold, TSkFontComponent.TSkFontSlant.Italic);
      LLabel.Words.Add('This line is added by a line break'+sLineBreak,TAlphaColors.Blue,20, TSkFontComponent.TSkFontWeight.Thin, TSkFontComponent.TSkFontSlant.Regular);
      LLabel.Words.Add('There are four properties to make changes on each line'+sLineBreak,TAlphaColors.Orchid,20, TSkFontComponent.TSkFontWeight.Regular, TSkFontComponent.TSkFontSlant.Regular);
      LLabel.Words.Add('Color,Size,Font weight & Slant (Regular/italic)'+sLineBreak,TAlphaColors.Blueviolet,20, TSkFontComponent.TSkFontWeight.Medium, TSkFontComponent.TSkFontSlant.Regular);
      LLabel.Words.Add('Are the four properties'+sLineBreak,TAlphaColors.Greenyellow,20, TSkFontComponent.TSkFontWeight.Bold, TSkFontComponent.TSkFontSlant.Regular);
      LLabel.Words.Add('Label.Words.Add("description",color,size,weight,slant) is the format...'+sLineBreak,TAlphaColors.Red,20, TSkFontComponent.TSkFontWeight.UltraBold, TSkFontComponent.TSkFontSlant.Regular);
    end);
end;

procedure TfrmOtherSkia.btnControlPaintboxClick(Sender: TObject);
begin
  FFreeHandRenderer := TFreeHandRenderer.Create;
  ChildForm<TfrmBaseControls>.Show('Drawing Pad with SKIA',
  function (): TControl
    var
      // For SVG -> TSkSvg
      LPaintBox: TSkPaintBox absolute Result;
    begin
      LPaintBox := TSkPaintBox.Create(nil);
      LPaintBox.Align := alClient;
//      LPaintBox.OnDraw := TFreeHandRenderer(FFreehandRenderer).OnDraw;
//      LPaintBox.OnMouseDown := TFreeHandRenderer(FFreehandRenderer).OnMouseDown;
//      LPaintBox.OnMouseMove := TFreeHandRenderer(FFreehandRenderer).OnMouseMove;
//      LPaintBox.OnMouseUp := TFreeHandRenderer(FFreehandRenderer).OnMouseUp;
//      LPaintBox.OnMouseLeave := TFreeHandRenderer(FFreehandRenderer).OnMouseLeave;
    end);
end;

procedure TfrmOtherSkia.btnControlSvgClick(Sender: TObject);
begin
  ChildForm<TfrmBaseControls>.Show('SVG with SKIA',
  function (): TControl
    var
      // For SVG -> TSkSvg
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'lion.svg');
    end);
end;

procedure TfrmOtherSkia.btnDrawingRectElipseClick(Sender: TObject);
begin
  ChildForm<TfrmBaseDrawings>.Show('Elipses & Circles',
   procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LPaint: ISkPaint;
      LOval : ISkRoundRect;
      LRect : TRectF;
    begin
      LRect := TRectF.Create(PointF(10, 10), 200, 300);
              //    x   y
      LRect.Offset(180, 50);

      LPaint:= TSkPaint.Create;
      LPaint.AntiAlias:= True;
      LPaint.Color:= TAlphaColors.Royalblue;    // drawing color
      LPaint.Style := TSkPaintStyle.Stroke;
      LPaint.StrokeWidth := 8;
      ACanvas.DrawRect(LRect, LPaint);          // Draw rectangle

      LPaint.Color := TAlphaColors.Tomato;
                  //      x    y    size
      ACanvas.DrawCircle(500, 150, 50, LPaint);  // Draw circle

      LOval := TSkRoundRect.Create;
      LOval.SetOval(LRect);
              //   x     y
      LOval.Offset(150, 90);
      LPaint.Color := TAlphaColors.Gold;
      ACanvas.DrawRoundRect(LOval, LPaint);

    end);
end;

procedure TfrmOtherSkia.btnDrawingCurvesClick(Sender: TObject);
begin
  ChildForm<TfrmBaseDrawings>.Show('Curved Line',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LPaint: ISkPaint;
      LPath: ISkPath;
      LPathBuilder: ISkPathBuilder;
    begin
      LPaint:= TSkPaint.Create(TSkPaintStyle.Stroke);
      LPaint.StrokeWidth:= 9;
      LPaint.AntiAlias:= True;
      LPaint.StrokeCap := TSkStrokeCap.Round;
      LPaint.Color := TAlphaColors.Tomato;

      LPathBuilder:= TSkPathBuilder.Create;
      LPathBuilder.MoveTo(20,20);
             // positions  x1  y1, x2  y2
      LPathBuilder.QuadTo(250,100,300,150);
      LPathBuilder.QuadTo(300,150,350,350);
      LPath:= LPathBuilder.Detach;
      ACanvas.DrawPath(LPath,LPaint);
    end);
end;

end.
