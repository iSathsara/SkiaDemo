unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,

  { Skia }
  Skia, Skia.Vcl,

  { Base }
  Form.Base;



type
  TfrmMain = class(TfrmBase)
    btnPlanSalle: TButton;
    btnSkiaFeatures: TButton;
    procedure btnPlanSalleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{ Child forms }
uses
  Form.Viewer.PlanSalle;

procedure TfrmMain.btnPlanSalleClick(Sender: TObject);
begin
  ChildForm<TfrmViewerPlanSalle>.Show;
end;

end.
