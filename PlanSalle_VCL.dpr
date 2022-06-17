program PlanSalle_VCL;

uses
  Vcl.Forms,
  Form.Base in 'Base\Form.Base.pas' {frmBase},
  Form.Main in 'Form.Main.pas' {frmMain},
  Form.Viewer.PlanSalle in 'Viewer\Form.Viewer.PlanSalle.pas' {frmViewerPlanSalle},
  Form.OtherSkia in 'Form.OtherSkia.pas' {frmOtherSkia},
  Form.Base.Controls in 'Base\Form.Base.Controls.pas' {frmBaseControls},
  Form.Base.Drawings in 'Base\Form.Base.Drawings.pas' {frmBaseDrawings},
  Form.Base.Texts in 'Base\Form.Base.Texts.pas' {frmBaseTexts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  // Main Form
  Application.Run;
end.
