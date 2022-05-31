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
  public
    { Public declarations }
  end;

var
  frmBaseControls: TfrmBaseControls;

implementation

{$R *.dfm}


end.
