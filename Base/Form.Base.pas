unit Form.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Generics.Collections,
  System.IOUtils,
  System.Rtti,

  { Skia }
  Skia, Skia.Vcl;

type
  TfrmBase = class(TForm)
    pnlContent: TPanel;
    pnlTop: TPanel;
    sbxContent: TScrollBox;
    btnBack: TButton;
    SklabelBaseTitle: TSkLabel;
    procedure btnBackClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    class var
      FCreatedFormsList: TList<TfrmBase>;
      FShowingFormsList: TList<TfrmBase>;
    class function GetAssetsPath:string; static;
    function CreateForm<T: TForm>: T;
  protected
    { Protected declarations }
    class procedure CloseForm(const AForm: TfrmBase); static;
    class constructor Create;
    class destructor Destroy;
    class function GetCurrentForm: TfrmBase; static;
    class property AssetsPath: string read GetAssetsPath;
  protected
    function ChildForm<T: TForm>: T;
    procedure DoShow; override;
  public
    { Public declarations }
    procedure Show; reintroduce;
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}
{______________________________________________________________________________}
{______________________________________________________________________________}
// Click back button
procedure TfrmBase.btnBackClick(Sender: TObject);
begin
  {$IF CompilerVersion >= 32}
  TThread.ForceQueue(nil,
    procedure
    begin
      CloseForm(Self);    // form is closed when press on back button
    end);
  {$ELSE}
  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Queue(nil,
        procedure
        begin
          CloseForm(Self);
        end);
    end).Start;
  {$ENDIF}
end;
{______________________________________________________________________________}
function TfrmBase.ChildForm<T>: T;
var
  LSelfIndex: Integer;
begin
  // make sure type T is inherits from base class (TfrmBase)
  Assert(T.InheritsFrom(TfrmBase));
  LSelfIndex := FCreatedFormsList.IndexOf(Self);
                                                                         // make sure created form list is in Type T
  if (LSelfIndex >= 0) and (LSelfIndex < FCreatedFormsList.Count -1) and (FCreatedFormsList[LSelfIndex + 1].ClassType = T) then
    Exit(T(FCreatedFormsList[LSelfIndex + 1]));

  // when a child form is created, a new form is created for the application
  Result := CreateForm<T>;

  // the created form is embedded into TfrmBase from
  TfrmBase(Result).pnlContent.Align := TAlign.alClient;

  // add childform into Created form list
  FCreatedFormsList.Add(TfrmBase(Result));
end;
{______________________________________________________________________________}
class procedure TfrmBase.CloseForm(const AForm: TfrmBase);
var
  LFormIndex: Integer;
  LAction: TCloseAction; // describes how a form should act, when it is closed
  I: Integer;
begin
  LFormIndex := FShowingFormsList.IndexOf(AForm);
  if LFormIndex < 0 then
    Exit;
  // caFree --> The form is closed and all the allocated memory for the form is free.
  LAction := TCloseAction.caFree;
  // DoClose() --> Form closing event dispatcher
  // This calls automatically when a form is about to close
  AForm.DoClose(LAction);

  // caNone --> The form is not allowed to close, nothing happens
  if LAction = TCloseAction.caNone then
    Exit;

  if LFormIndex = 0 then
    Application.Terminate
  else
  begin
    LFormIndex := FCreatedFormsList.IndexOf(AForm);
    Assert(LFormIndex > -1);
    for I := FCreatedFormsList.Count - 1 downto LFormIndex do
    begin
      FCreatedFormsList[I].Free;
      FShowingFormsList.Remove(FCreatedFormsList[I]);
      FCreatedFormsList.Delete(I);
    end;
    FShowingFormsList.Last.pnlContent.Visible := True;
  end;

end;
{______________________________________________________________________________}
class constructor TfrmBase.Create;
begin
  FCreatedFormsList := TList<TfrmBase>.Create;
  FShowingFormsList := TList<TfrmBase>.Create;
end;
{______________________________________________________________________________}
class destructor TfrmBase.Destroy;
begin
  FCreatedFormsList.Free;
  FShowingFormsList.Free;
end;
{______________________________________________________________________________}
procedure TfrmBase.DoShow;
begin
  if Self = Application.MainForm then begin
    SklabelBaseTitle.Caption := 'Main Menu';
    FShowingFormsList.Add(Self)
  end
  else
  begin
    if FShowingFormsList.Count > 0 then
      FShowingFormsList.Last.pnlContent.Visible := FALSE;
    FShowingFormsList.Add(Self);
    // Parent --> Act as the container of a vcl component
    // for example, if 3 radio buttons contains in a group box, the group box is the container for those radio buttons
    pnlContent.Parent := Application.MainForm;
  end;
  inherited;
end;
{______________________________________________________________________________}
function TfrmBase.CreateForm<T>: T;
{$IF CompilerVersion < 34}
var
  LRttiContext: TRttiContext;
begin
  LRttiContext := TRttiContext.Create;
  try
    Result := LRttiContext.GetType(TClass(T)).GetMethod('Create').Invoke(TClass(T), [TValue.From(Application)]).AsType<T>;
  finally
    LRttiContext.Free;
  end;
{$ELSE}
  begin
    Result := T.Create(Application);
{$ENDIF}
end;
{______________________________________________________________________________}
procedure TfrmBase.FormCreate(Sender: TObject);
begin
  frmBase.Caption := 'Base Form';
  SklabelBaseTitle.Caption := 'Base Form';
end;
{______________________________________________________________________________}
class function TfrmBase.GetAssetsPath: string;
begin
  // Returns the absolute path for the given path here
  // If the given path not absolute, then it consider the current working directory as the root directory.
//  Result := TPath.GetFullPath('..\..\..\..\..\..\Assets\Samples\');
  Result := TPath.GetFullPath('D:\My Delphi Projects\PlanSalle4Restomax\Assets');
  if (Result <> '') and not Result.EndsWith(PathDelim) then
    Result := Result + PathDelim;
end;
{______________________________________________________________________________}
class function TfrmBase.GetCurrentForm: TfrmBase;
begin
  Result := FShowingFormsList.Last;
end;
{______________________________________________________________________________}
procedure TfrmBase.Show;
begin
  DoShow;
end;
{______________________________________________________________________________}

end.
