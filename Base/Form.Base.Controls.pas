unit Form.Base.Controls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,

  { skia }
  Skia, Skia.Vcl,

  { base }
  Form.Base;



type
  TfrmBaseControls = class(TfrmBase)
  private
    { Private declarations }
    FControl: TControl;
    FControlCreationFunc: TFunc<TControl>;
  public
    { Public declarations }
    procedure Show(const ATitle:String; const AControlCreationFunc: TFunc<TControl>); reintroduce;
  end;

var
  frmBaseControls: TfrmBaseControls;

implementation

{$R *.dfm}


{ TfrmBaseControls }

procedure TfrmBaseControls.Show(const ATitle: String; const AControlCreationFunc: TFunc<TControl>);
begin
  inherited Show;  // this calls the Show method of base class. It responsible for displaying new form
  SklabelBaseTitle.Caption:=ATitle;
  frmBaseControls.Caption:=ATitle;
  FControlCreationFunc := AControlCreationFunc;
  FControl := FControlCreationFunc();
  FControl.Parent := sbxContent;
end;

end.

