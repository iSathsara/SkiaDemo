unit Form.OtherSkia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOtherSkia: TfrmOtherSkia;

implementation

{$R *.dfm}

{ Viewer }
uses
  Form.Viewer.Controls.Svg;

procedure TfrmOtherSkia.btnControlSvgClick(Sender: TObject);
begin
  ChildForm<TfrmBaseControlsSvg>.Show;
end;

end.
