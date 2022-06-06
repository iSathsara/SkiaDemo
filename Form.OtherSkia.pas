unit Form.OtherSkia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.IOUtils,
  System.UITypes,

  { Skia }
  Skia, Skia.Vcl,


  { Base }
  Form.Base,
  Form.Base.Controls;


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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOtherSkia: TfrmOtherSkia;

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

end.
