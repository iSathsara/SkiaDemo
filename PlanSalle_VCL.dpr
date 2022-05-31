program PlanSalle_VCL;

uses
  Vcl.Forms,
  Form.Base in 'Base\Form.Base.pas' {frmBase},
  Form.Main in 'Form.Main.pas' {frmMain},
  Form.Viewer.PlanSalle in 'Viewer\Form.Viewer.PlanSalle.pas' {frmViewerPlanSalle},
  Form.OtherSkia in 'Form.OtherSkia.pas' {frmOtherSkia},
  Form.Base.Controls in 'Base\Form.Base.Controls.pas' {frmBaseControls},
  Form.Viewer.Controls.Svg in 'Viewer\Form.Viewer.Controls.Svg.pas' {frmBaseControlsSvg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmOtherSkia, frmOtherSkia);
  Application.CreateForm(TfrmBaseControls, frmBaseControls);
  Application.CreateForm(TfrmBaseControlsSvg, frmBaseControlsSvg);
  // Main Form
  Application.Run;
end.
