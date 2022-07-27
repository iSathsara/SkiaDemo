unit Form.OtherSkia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.IOUtils,
  System.UITypes,
  System.Types,
  System.Math,
  System.Math.Vectors,

  { Skia }
  Skia, Skia.Vcl,


  { Base }
  Form.Base,
  Form.Base.Controls,
  Form.Base.Drawings,
  Form.Base.Texts;

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
    procedure btnDrawingRotationClick(Sender: TObject);
    procedure btnDrawingDiagonalClick(Sender: TObject);
    procedure btnTextBasicTextClick(Sender: TObject);
    procedure btnTextRightToLeftClick(Sender: TObject);
    procedure btnTextCustomFontClick(Sender: TObject);
    procedure btnTextMultiStyleClick(Sender: TObject);
    procedure btnTextParagraphPathClick(Sender: TObject);
    procedure btnTextFontWeightClick(Sender: TObject);
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
{______________________________________________________________________________}
// CONTROLS - SVG, ANIMATION...
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
{______________________________________________________________________________}
// DRAWINGS
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

procedure TfrmOtherSkia.btnDrawingRotationClick(Sender: TObject);
begin
  ChildForm<TfrmBaseDrawings>.Show('Rotations / Transition',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LPaint: ISkPaint;
      // Creates a rectangle value from either 4 coordinates or 2 points
      // look at its create method!
      LRect: TRectF;
    begin
      // move the canvas
      // coordinates     x  y
      ACanvas.Translate(300,100);

      ACanvas.Rotate(50);
      LRect:= RectF(0,0,200,100);

      LPaint:= TSkPaint.Create;
      LPaint.AntiAlias:=True;
      LPaint.Color:= TAlphaColors.Firebrick;
      ACanvas.DrawRect(LRect,LPaint);         // draw 1st rectangle on canvas

      ACanvas.Rotate(60);
      LPaint.Color:= TAlphaColors.Darkcyan;
      ACanvas.DrawRect(LRect, LPaint);       // draw 2nd rectangle on canvas

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
      // set alignment     x y
      LPathBuilder.MoveTo(100,10);
      // coordinates      x1  y1, x2  y2
      LPathBuilder.QuadTo(256,64,128,128);
      LPathBuilder.QuadTo(10,192,350,350);
      LPath:= LPathBuilder.Detach;
      ACanvas.DrawPath(LPath,LPaint);
    end);
end;

procedure TfrmOtherSkia.btnDrawingDiagonalClick(Sender: TObject);
begin
  ChildForm<TfrmBaseDrawings>.Show('Diagonal Lines',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    const
      LineDegree = 30;
      LineDistance = 10;
      LineSize = 2;

    var
      LPaint: ISkPaint;
      LLattice: TMatrix;
      LRectF: TRectF;
    begin
      // create diagnal lines with matrix
      LLattice := TMatrix.CreateRotation(DegToRad(LineDegree)) * TMatrix.CreateScaling(LineDistance, LineDistance);
      LPaint:=TSkPaint.Create;
      LPaint.AntiAlias:=True;
      LPaint.PathEffect:=TSkPathEffect.Make2DLine(LineSize,LLattice); // insert lines to matrix
      LRectF:= ADest;
      ACanvas.Save;
      try
        ACanvas.ClipRect(LRectF);
        LRectF.Inflate(LineDistance, LineDistance);
        ACanvas.DrawRect(LRectF, LPaint);
      finally
        ACanvas.Restore;
      end;
    end);
end;
{______________________________________________________________________________}
// TEXTS
procedure TfrmOtherSkia.btnTextBasicTextClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Basic Texts',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LTypeFace: ISkTypeface;
      LFont1: ISkFont;
      LFont2: ISkFont;
      LBlob1: ISkTextBlob;  // combines multiple text runs into an immutable container
      LBlob2: ISkTextBlob;
     LPaint1: ISkPaint;
     LPaint2: ISkPaint;
    begin
      // TypeFace specifies the typeface & real behaviour/structure of font
      LTypeFace:= TSkTypeface.MakeFromName('Monospace', TSkFontStyle.Normal);

      //                         font size,scale
      LFont1:= TSkFont.Create(LTypeFace, 80, 1);
      LFont1.Edging:= TSkFontEdging.AntiAlias;

      LBlob1:= TSkTextBlob.MakeFromText('SKiA',LFont1);

      LPaint1:= TSkPaint.Create;
      LPaint1.AntiAlias:=True;
      LPaint1.SetARGB($FF, $42, $85, $F4);

      //      coordinate           x  y
      ACanvas.DrawTextBlob(LBlob1,50,100,LPaint1);   // Draw text on canvas via blob

      LFont2:= TSkFont.Create(LTypeFace, 85, 2, 1.1);
      LFont2.Edging:= TSkFontEdging.AntiAlias;
      LBlob2:= TSkTextBlob.MakeFromText('For Delphi', LFont2);

      LPaint2:= TSkPaint.Create;
      LPaint2.AntiAlias:=True;
      LPaint2.Color:= TAlphaColors.Tomato;

      ACanvas.DrawTextBlob(LBlob2, 110, 190, LPaint2);

      // DrawSimpleText --> Another method of adding text to canvas
      ACanvas.DrawSimpleText('SKiA Text features', 100, 280, LFont1, LPaint1);
    end);
end;
procedure TfrmOtherSkia.btnTextRightToLeftClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Right to Left Alignment',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LTypeFace : ISkTypeface;
      LFont : ISkFont;
      LPaint: ISkPaint;
      LBlob : ISkTextBlob;
      LShaper : ISkShaper;
    begin
      // MakeFromName --> creates typeface according to requested font family
      LTypeFace:= TSkTypeface.MakeFromName('Monospace', TSkFontStyle.Normal);

      LFont:= TSkFont.Create(LTypeFace, 30, 1);
      LFont.Edging:= TSkFontEdging.AntiAlias;

      LShaper := TSkShaper.Create;
      // handles the alignment    text ,                      font ,   LeftToRight ,    Width
      LBlob := LShaper.Shape('This text should be aligned from right to left', LFont, False, MaxSingle);

      LPaint:= TSkPaint.Create;
      LPaint.AntiAlias:= True;
      LPaint.Color:= TAlphaColors.Tomato;

      ACanvas.DrawTextBlob(LBlob,10,10,LPaint);
    end);
end;
procedure TfrmOtherSkia.btnTextCustomFontClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Customized Fonts',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LTypeFace: ISkTypeface;
      LPaint: ISkPaint;
      LFont : ISkFont;
    begin
      LPaint:= TSkPaint.Create;
      LPaint.Color:= TAlphaColors.Wheat;
      ACanvas.DrawRect(ADest, LPaint);

      // load text design from external file
      LTypeFace:= TSkTypeface.MakeFromFile(AssetsPath + 'ArianaVioleta-dz2K.ttf');
      LFont:= TSkFont.Create(LTypeFace,70);
      LPaint.Shader:= TSkShader.MakeGradientLinear(PointF(0, 0), PointF(256, 145), TAlphaColors.Red, TAlphaColors.Orange, TSkTileMode.Clamp);

      // draw on canvas             text                x   y   font paint
      // here, x and y values are provided by considering whole canvas
      ACanvas.DrawSimpleText('Every nights in my dreams',2,50,LFont,LPaint);
      ACanvas.DrawSimpleText('I see you... I feel you!',50,110,LFont,LPaint);

      LTypeFace:= TSkTypeface.MakeFromFile(AssetsPath + 'Pacifico.ttf');
      LFont:= TSkFont.Create(LTypeFace,40);
      LPaint.Shader := TSkShader.MakeColor(TAlphaColors.Blueviolet);
      ACanvas.DrawSimpleText('~ Titanic Movie ~', 2, 180, LFont, LPaint);

    end);
end;

procedure TfrmOtherSkia.btnTextMultiStyleClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Multi-Style paragraph',
    procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
    var
      LParagraph: ISkParagraph;
      LParagraphStyle: ISkParagraphStyle;
      LParagraphBuilder: ISkParagraphBuilder;
      LTextStyle: ISkTextStyle;
      LFontStyle:TSkFontStyle;
    begin
      // Overall formatting of the paragraph
      LParagraphStyle:= TSkParagraphStyle.Create;
      LParagraphStyle.MaxLines:= 3;  // if text are exceeding more than 3 lines, it will not show
      LParagraphStyle.Ellipsis:= '...';
      LParagraphBuilder:= TSkParagraphBuilder.Create(LParagraphStyle);

      // paragraph line 1
      LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Thin, TSkFontWidth.Normal, TSkFontSlant.Italic);
      LTextStyle:= TSkTextStyle.Create;
      LTextStyle.Color:= TAlphaColors.Blue;
      LTextStyle.FontSize:= 28;
      LTextStyle.FontStyle:= LFontStyle;
      LParagraphBuilder.PushStyle(LTextStyle);
      LParagraphBuilder.AddText('Skia for Delphi - Paragraphs');

      // paragraph line 2
      LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Bold, TSkFontWidth.Expanded, TSkFontSlant.Upright);
      LTextStyle:= TSkTextStyle.Create;
      LTextStyle.Color:= TAlphaColors.MoneyGreen;
      LTextStyle.FontSize:= 25;
      LTextStyle.FontStyle:= LFontStyle;
      LParagraphBuilder.PushStyle(LTextStyle);
      LParagraphBuilder.AddText(' This is the second line of paragraph');

      // paragraph line 3
      LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Medium, TSkFontWidth.UltraExpanded, TSkFontSlant.Upright);
      LTextStyle:= TSkTextStyle.Create;
      LTextStyle.Color:= TAlphaColors.Crimson;
      LTextStyle.FontSize:= 25;
      LTextStyle.FontStyle:= LFontStyle;
      LParagraphBuilder.PushStyle(LTextStyle);
      LParagraphBuilder.AddText(' Resize the window to see the effect!');

      // draw paragraph line on canvas
      LParagraph:= LParagraphBuilder.Build;
      LParagraph.Layout(ADest.Width);
      //                       x  y coordinates
      // texts are drawing as paint on canvas.
      LParagraph.Paint(ACanvas,0,0);
    end);
end;

procedure TfrmOtherSkia.btnTextParagraphPathClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Paragraph to Path. Draw on Canvas',
  procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
  var
    LParagraph: ISkParagraph;
    LParagraphStyle: ISkParagraphStyle;
    LParagraphBuilder: ISkParagraphBuilder;
    LTextStyle: ISkTextStyle;
    LFontStyle:TSkFontStyle;
    LPaint: ISkPaint;
  begin
    // Overall formatting of the paragraph
    LParagraphStyle:= TSkParagraphStyle.Create;
    LParagraphStyle.MaxLines:= 5;  // if text are exceeding more than 3 lines, it will not show
    LParagraphStyle.Ellipsis:= '...';
    LParagraphBuilder:= TSkParagraphBuilder.Create(LParagraphStyle);

    // paragraph line 1
    LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Thin, TSkFontWidth.Normal, TSkFontSlant.Italic);
    LTextStyle:= TSkTextStyle.Create;
    LTextStyle.Color:= TAlphaColors.Blue;
    LTextStyle.FontSize:= 25;
    LTextStyle.FontStyle:= LFontStyle;
    LParagraphBuilder.PushStyle(LTextStyle);
    LParagraphBuilder.AddText('This is paragraph one! Color is Blue!!');

    // paragraph line 2
    LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Normal, TSkFontWidth.Expanded, TSkFontSlant.Upright);
    LTextStyle:= TSkTextStyle.Create;
    LTextStyle.Color:= TAlphaColors.MoneyGreen;
    LTextStyle.FontSize:= 25;
    LTextStyle.FontStyle:= LFontStyle;
    LParagraphBuilder.PushStyle(LTextStyle);
    LParagraphBuilder.AddText(' This is the second paragraph. Color is Green');

    // paragraph line 3
    LFontStyle:= TSkFontStyle.Create(TSkFontWeight.Bold, TSkFontWidth.UltraExpanded, TSkFontSlant.Upright);
    LTextStyle:= TSkTextStyle.Create;
    LTextStyle.Color:= TAlphaColors.Crimson;
    LTextStyle.FontSize:= 28;
    LTextStyle.FontStyle:= LFontStyle;
    LParagraphBuilder.PushStyle(LTextStyle);
    LParagraphBuilder.AddText('These paragraphs are drawn on Canvas, using .ToPath method');

    // Build paragraph
    LParagraph:= LParagraphBuilder.Build;
    LParagraph.Layout(ADest.Width);

    // Since DrawPath needs paint, above customized styles will be overriden!
    LPaint:= TSkPaint.Create;
    LPaint.Color:= TAlphaColors.Blueviolet;
    LPaint.AntiAlias:= True;
    ACanvas.DrawPath(LParagraph.ToPath, LPaint);
  end);
end;

procedure TfrmOtherSkia.btnTextFontWeightClick(Sender: TObject);
begin
  ChildForm<TfrmBaseTexts>.Show('Font Weights...',
  procedure (const ACanvas: ISkCanvas; const ADest: TRectF)
  var
    WordList: array of String;
    Word: String;
    I: Integer;
    LPaint: ISkPaint;
    LParagraph: ISkParagraph;
    LParagraphBuilder: ISkParagraphBuilder;
    LParagraphStyle: ISkParagraphStyle;
  begin
    WordList:= ['Invisible', 'Thin', 'Extra Light', 'Light', 'Normal', 'Medium', 'Semi-Bold', 'Bold', 'Extra Bold', 'Black', 'Extra-Black'];

    LParagraphStyle:= TSkParagraphStyle.Create;


//    LParagraphBuilder:= TSkParagraphBuilder.Create();

    for I := Low(WordList) to High(WordList) do begin
      Word:= WordList[I];

    end;

  end);
end;

end.
