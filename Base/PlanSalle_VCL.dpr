program PlanSalle_VCL;

uses
  Vcl.Forms,
  Form.Base in 'Form.Base.pas' {frmBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBase, frmBase);
  Application.Run;
end.
