program PlanSalle_VCL;

uses
  Vcl.Forms,
  Form.Base in 'Base\Form.Base.pas' {frmBase},
  Form.Main in 'Form.Main.pas' {frmMain},
  Form.Viewer.PlanSalle in 'Viewer\Form.Viewer.PlanSalle.pas' {frmViewerPlanSalle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain); // Main Form
  Application.Run;
end.
