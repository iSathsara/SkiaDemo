unit Form.Viewer.PlanSalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.IOUtils,
  System.Types,
  System.UITypes,

  { skia }
  Skia, Skia.Vcl,

  { Base }
  Form.Base;

type
  IFreehandRender = interface
  end;

  TFreeHandRenderer = class(TInterfacedObject, IFreehandRender)
  strict private
    FCurrentPath: ISkPath;
    FOldPaths: TArray<ISkPath>;
    FPathBuilder: ISkPathBuilder;
    FPressed: Boolean;
  private
    procedure OnDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
    procedure OnMouseDown(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
    procedure OnMouseLeave(ASender: TObject);
    procedure OnMouseMove(ASender: TObject; AShift: TShiftState; X, Y: Integer);
    procedure OnMouseUp(ASender: TObject; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
  end;


type
  TAnimatedPaintBoxDrawProc = reference to procedure(const ACanvas: ISkCanvas; const ADest: TRectF; const ASeconds: Double);
  TMouseMoveProc = reference to procedure(const X,Y: Single);

type
  TfrmViewerPlanSalle = class(TfrmBase)
    pnlPlanSalleContent: TPanel;
    pnlAnimatedGif: TPanel;
    pnlMouseTrack: TPanel;
    pnlImage1: TPanel;
    pnlParticleEffect: TPanel;
    pnlLottieJson: TPanel;
    pnlMenuList: TPanel;
    pnlDraw: TPanel;
    pnlShaderEffect: TPanel;
    pnlAnimatedText: TPanel;
    pnlRestomaxLogo: TPanel;
    SkAnimatedPaintBoxWaves: TSkAnimatedPaintBox;
    SkAnimatedPaintBoxMouseMove: TSkAnimatedPaintBox;
    SkAnimatedPaintBoxAnimatedText: TSkAnimatedPaintBox;
    pnlChair1: TPanel;
    pnlChair2: TPanel;
    pnlChair3: TPanel;
    pnlChair4: TPanel;
    pnlRainbowShader: TPanel;
    SkAnimatedPaintBoxRainbowShader: TSkAnimatedPaintBox;
    procedure FormCreate(Sender: TObject);
    procedure SkAnimatedPaintBoxWavesAnimationDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double; const AOpacity: Single);
    procedure SkAnimatedPaintBoxMouseMoveMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SkAnimatedPaintBoxMouseMoveAnimationDraw(ASender: TObject;const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double;const AOpacity: Single);
    procedure SkAnimatedPaintBoxAnimatedTextAnimationDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double; const AOpacity: Single);
  private
    { Private declarations }

    // Svg, Gif, json animations
    FControl: TControl;
    FControlCreationFunc: TFunc<TControl>;

    // Animated paintbox related
    FOnMouseMove: TMouseMoveProc;
    FDrawProc: TAnimatedPaintBoxDrawProc;
    FDrawProcMouse: TAnimatedPaintBoxDrawProc;
    FDrawProcAnimatedText: TAnimatedPaintBoxDrawProc;


    { Build Panel Components }

    /// <summary> Animated Gif </summary>
    procedure BuildAnimatedGif;
    /// <summary> Mouse tracker pad </summary>
    procedure BuildMouseTracker;
    /// <summary> Text Effects </summary>
    procedure BuildTextEffects;
    /// <summary> Signature Pad </summary>
    procedure BuildSignaturePad;
    /// <summary> Image 1 (svg) </summary>
    procedure BuildSvgImage;
    /// <summary> Particle Effect </summary>
    procedure BuildParticleEffect;
    /// <summary> Lottie Animation </summary>
    procedure BuildLottieAnimation;
    /// <summary> Shader Effect </summary>
    procedure BuildShaderEffect;
    /// <summary> Animated Text </summary>
    procedure BuildAnimatedText;
    /// <summary> Restomax Logo </summary>
    procedure BuildRestomaxLogo;
    /// <summary> BuildChairs </summary>
    procedure BuildChairs;
    /// <summary> Build Text List </summary>
    procedure BuildTextList;

    procedure Show(const ATitle; const AControlCreationFunc: TFunc<TControl>; const APanel: TPanel); reintroduce;
    procedure ShowWaves(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);
    procedure ShowMouseMove(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);
    procedure ShowAnimatedText(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);

    property OnMouseMove: TMouseMoveProc read FOnMouseMove write FOnMouseMove;
  public
    { Public declarations }
  end;


var
  frmViewerPlanSalle: TfrmViewerPlanSalle;
  FFreeHandRenderer: TFreeHandRenderer;

implementation

{$R *.dfm}

{ TfrmViewerPlanSalle }

{______________________________________________________________________________}
procedure TfrmViewerPlanSalle.FormCreate(Sender: TObject);
begin

  // build background image
  Self.Show('Tile Wrap Mode',
    function (): TControl
    var
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.WrapMode := TSkSvgWrapMode.Tile;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'woodbackground.svg');
    end, pnlPlanSalleContent);

  Self.BuildAnimatedGif;
  Self.BuildMouseTracker;
  Self.BuildTextEffects;
  Self.BuildSignaturePad;
  Self.BuildSvgImage;
  Self.BuildParticleEffect;
  Self.BuildLottieAnimation;
  Self.BuildShaderEffect;
  Self.BuildAnimatedText;
  Self.BuildRestomaxLogo;
  Self.BuildChairs;
  Self.BuildTextList;

end;
{______________________________________________________________________________}
// SVG, GIF CONTROLLER
procedure TfrmViewerPlanSalle.Show(const ATitle; const AControlCreationFunc: TFunc<TControl>;const APanel: TPanel);
begin
  FControlCreationFunc := AControlCreationFunc;
  FControl := FControlCreationFunc();
  FControl.Parent := APanel;
end;
{______________________________________________________________________________}
// SHADER CONTROLLER
procedure TfrmViewerPlanSalle.ShowWaves(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);
begin
  FDrawProc := ADrawProc;
  SkAnimatedPaintBoxWaves.Align := alClient;
  SkAnimatedPaintBoxWaves.Redraw;
  SkAnimatedPaintBoxWaves.Animate := TRUE;
  SkAnimatedPaintBoxWaves.Parent := APanel;
end;
procedure TfrmViewerPlanSalle.ShowMouseMove(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);
begin
  FDrawProcMouse := ADrawProc;
  SkAnimatedPaintBoxMouseMove.Align := alClient;
  SkAnimatedPaintBoxMouseMove.Redraw;
  SkAnimatedPaintBoxMouseMove.Animate := TRUE;
  SkAnimatedPaintBoxMouseMove.Parent := APanel;
end;
procedure TfrmViewerPlanSalle.ShowAnimatedText(const ATitle; ADrawProc: TAnimatedPaintBoxDrawProc; const APanel: TPanel);
begin
  FDrawProcAnimatedText := ADrawProc;
  SkAnimatedPaintBoxAnimatedText.Align := alClient;
  SkAnimatedPaintBoxAnimatedText.Redraw;
  SkAnimatedPaintBoxAnimatedText.Animate := TRUE;
  SkAnimatedPaintBoxAnimatedText.Parent := APanel;
end;
{______________________________________________________________________________}
// EVENT CALLER FOR MOUSE MOVEMENT
procedure TfrmViewerPlanSalle.SkAnimatedPaintBoxMouseMoveMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(FOnMouseMove) then
    FOnMouseMove(X,Y)
end;
{______________________________________________________________________________}
// EVENT CALLERS FOR SHADER
procedure TfrmViewerPlanSalle.SkAnimatedPaintBoxMouseMoveAnimationDraw(
  ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF;
  const AProgress: Double; const AOpacity: Single);
begin
  if Assigned(FDrawProcMouse) then
    FDrawProcMouse(ACanvas, ADest, AProgress * SkAnimatedPaintBoxMouseMove.Duration);
end;
procedure TfrmViewerPlanSalle.SkAnimatedPaintBoxAnimatedTextAnimationDraw(
  ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF;
  const AProgress: Double; const AOpacity: Single);
begin
  if Assigned(FDrawProcAnimatedText) then
    FDrawProcAnimatedText(ACanvas, ADest, AProgress * SkAnimatedPaintBoxAnimatedText.Duration);
end;
procedure TfrmViewerPlanSalle.SkAnimatedPaintBoxWavesAnimationDraw(
  ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF;
  const AProgress: Double; const AOpacity: Single);
begin
  if Assigned(FDrawProc) then
    FDrawProc(ACanvas, ADest, AProgress * SkAnimatedPaintBoxWaves.Duration);
end;
{______________________________________________________________________________}
{______________________________________________________________________________}
{______________________________________________________________________________}
procedure TfrmViewerPlanSalle.BuildAnimatedGif;
begin
  pnlAnimatedGif.Caption := 'Animated Gif is running...';
  Self.Show('Animated Gif', function (): TControl
    var
      // TSkAnimatedImage --> Gif
      LAnimatedImage: TSkAnimatedImage absolute Result;
    begin
      LAnimatedImage := TSkAnimatedImage.Create(nil);
      LAnimatedImage.Align := alClient;
      LAnimatedImage.LoadFromFile(AssetsPath + 'television.gif');
    end,pnlAnimatedGif);
end;

procedure TfrmViewerPlanSalle.BuildAnimatedText;
const
  // TPointF --> Define a pixel location on screen
  DrawPosition: TPointF = (X:90; Y:60);
  Size: TSize = (cx:400; cy:400);
var
  LParticleText: ISkParticleEffect;
begin
  pnlAnimatedText.Caption := 'Animated Text is running...';
  // Load particle file
  LParticleText := TSkParticleEffect.Make(TFile.ReadAllText(AssetsPath + 'writing.json'));
  LParticleText.Position := PointF(0,0);
  LParticleText.Start(0,TRUE);

//  Add mouse movement
//  OnMouseMove := procedure(const X,Y: Single)
//                 begin
//                   LParticleText.SetUniform('mouse_pos', [X - DrawPosition.X, Y - DrawPosition.Y]);
//                 end;
  Self.ShowAnimatedText('Animated Text'
    ,procedure(const ACanvas: ISkCanvas; const ADest: TRectF; const ASeconds: Double)
     begin
       ACanvas.Save;
       try
         ACanvas.Translate(DrawPosition.X, DrawPosition.Y);
         LParticleText.Update(ASeconds);
         LParticleText.Render(ACanvas);
       finally
         ACanvas.Restore;
       end;
     end
    ,pnlAnimatedText);
end;

procedure TfrmViewerPlanSalle.BuildChairs;
begin
  pnlChair1.Caption := '';
  pnlChair2.Caption := '';
  pnlChair3.Caption := '';
  pnlChair4.Caption := '';

  Self.Show('Chair1',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'chair_left.svg');
    end,pnlChair1);

    Self.Show('Chair2',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'chair_left.svg');
    end,pnlChair2);

    Self.Show('Chair3',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'chair_right.svg');
    end,pnlChair3);

    Self.Show('Chair4',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'chair_right.svg');
    end,pnlChair4);

end;

procedure TfrmViewerPlanSalle.BuildLottieAnimation;
begin
  pnlLottieJson.Caption := 'Lottie is running...';
  Self.Show('Lottie Rocket',
  function (): TControl
  var
    LAnimatedImage: TSkAnimatedImage absolute Result;
  begin
    LAnimatedImage := TSkAnimatedImage.Create(nil);
    LAnimatedImage.Align := alClient;
    LAnimatedImage.LoadFromFile(AssetsPath + 'rocket.json');
  end,pnlLottieJson);
end;

procedure TfrmViewerPlanSalle.BuildMouseTracker;
var
  LEffect: ISkRuntimeEffect;
  LPaint: ISkPaint;
begin
  pnlMouseTrack.Caption := 'Mouse is tracking...';
  LEffect := TSkRuntimeEffect.MakeForShader(TFile.ReadAllText(AssetsPath + 'mouse.sksl'));
  LPaint := TSkPaint.Create;
  LPaint.Shader := LEffect.MakeShader(TRUE);

  OnMouseMove := procedure(const X,Y: Single)
                 begin
                   LEffect.SetUniform('iMouse', PointF(X,Y));
                 end;

  Self.ShowMouseMove(
    'Mouse Tracker'
    ,procedure (const ACanvas: ISkCanvas; const ADest: TRectF; const ASeconds: Double)
    begin
      LEffect.SetUniform('iResolution', PointF(ADest.Width, ADest.Height));
      ACanvas.DrawPaint(LPaint);
    end
    ,pnlMouseTrack);

end;

procedure TfrmViewerPlanSalle.BuildParticleEffect;
begin
  pnlParticleEffect.Caption := 'Particle effect is running...';
end;

procedure TfrmViewerPlanSalle.BuildRestomaxLogo;
begin
  pnlRestomaxLogo.Caption := '';
  Self.Show('Restomax Logo',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'Restomax_Logo.svg');
    end,pnlRestomaxLogo);
end;

procedure TfrmViewerPlanSalle.BuildShaderEffect;
var
  LEffect: ISkRuntimeEffect;
  LPaint: ISkPaint;
begin
  pnlShaderEffect.Caption := 'Shader is running...';

  // get shader file
  LEffect := TSkRuntimeEffect.MakeForShader(TFile.ReadAllText(AssetsPath + 'waves.sksl'));
  // LPaint is acting like platform to run shader
  LPaint := TSkPaint.Create;
  LPaint.Shader := LEffect.MakeShader(TRUE);
  Self.ShowWaves(
      'Shader effect'
      ,procedure (const ACanvas: ISkCanvas; const ADest: TRectF; const ASeconds: Double)
       begin
        LEffect.SetUniform('iResolution', PointF(ADest.Width, ADest.Height));
        LEffect.SetUniform('iTime', ASeconds);
        ACanvas.DrawPaint(LPaint);
       end
       ,pnlShaderEffect);
end;

procedure TfrmViewerPlanSalle.BuildSignaturePad;

begin
  pnlDraw.Caption := '';
  pnlDraw.Color := clWhite;
  FFreeHandRenderer := TFreeHandRenderer.Create;
  Self.Show('Signature',
    function (): TControl
    var
      LPaintBox: TSkPaintBox absolute Result;
    begin
      LPaintBox := TSkPaintBox.Create(nil);
      LPaintBox.Align := alClient;
      LPaintBox.OnDraw := TFreeHandRenderer(FFreehandRenderer).OnDraw;
      LPaintBox.OnMouseDown := TFreeHandRenderer(FFreehandRenderer).OnMouseDown;
      LPaintBox.OnMouseMove := TFreeHandRenderer(FFreehandRenderer).OnMouseMove;
      LPaintBox.OnMouseUp := TFreeHandRenderer(FFreehandRenderer).OnMouseUp;
      LPaintBox.OnMouseLeave := TFreeHandRenderer(FFreehandRenderer).OnMouseLeave;
    end,
    pnlDraw);
end;

procedure TfrmViewerPlanSalle.BuildSvgImage;
begin
  pnlImage1.Caption := 'Svg is displaying...';
  Self.Show('delphi.svg',
    function (): TControl
    var
      // TSkSvg --> For SVGs
      LSvgControl: TSkSvg absolute Result;
    begin
      LSvgControl := TSkSvg.Create(nil);
      LSvgControl.Align := alClient;
      LSvgControl.Svg.Source := TFile.ReadAllText(AssetsPath + 'delphi.svg');
    end,pnlImage1);
end;

procedure TfrmViewerPlanSalle.BuildTextEffects;
begin
  pnlMenuList.Caption := 'Text effect is showing...';
end;

procedure TfrmViewerPlanSalle.BuildTextList;
begin
  pnlMenuList.Caption := '';
  Self.Show('Multiple Styles',
    function (): TControl
    var
      LLabel: TSkLabel absolute Result;
    begin
      LLabel := TSkLabel.Create(nil);
      LLabel.Align := alTop;
      LLabel.Words.Add('Liste des articles'+sLineBreak, TAlphaColors.Crimson, 24, TSkFontComponent.TSkFontWeight.Bold, TSkFontComponent.TSkFontSlant.Italic);
      LLabel.Words.Add('-- 🍟🍗🍤🥧🍷 --'+sLineBreak, TAlphaColors.Black, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add(sLineBreak+'Chicken confit'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add('French onion soup'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add('Bouillabaisse'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add('Boeuf bourguignon'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add('海鲜'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
      LLabel.Words.Add('Paris-brest'+sLineBreak, TAlphaColors.Yellow, 18, TSkFontComponent.TSkFontWeight.Semibold);
    end,pnlMenuList);
end;

{ TFreeHandRenderer }

procedure TFreeHandRenderer.OnDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
var
  LPaint: ISkPaint;
  LPath: ISkPath;
begin
  ACanvas.Save;
  try
    ACanvas.ClipRect(ADest);
    LPaint := TSkPaint.Create(TSkPaintStyle.Stroke);
    LPaint.AntiAlias := True;
    LPaint.Color := TAlphaColors.Royalblue;
    LPaint.SetPathEffect(TSkPathEffect.MakeCorner(50));
    LPaint.StrokeCap := TSkStrokeCap.Round;
    LPaint.StrokeWidth := 4;
  finally
    for LPath in FOldPaths do
      ACanvas.DrawPath(LPath, LPaint);

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
  FPathBuilder := TSkPathBuilder.Create;
  FPathBuilder.MoveTo(X, Y);
  FCurrentPath := nil;
end;

procedure TFreeHandRenderer.OnMouseLeave(ASender: TObject);
begin
  if Assigned(FPathBuilder) then
  begin
    if FCurrentPath = nil then
      FCurrentPath := FPathBuilder.Snapshot;
    FOldPaths := FOldPaths + [FCurrentPath];
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
