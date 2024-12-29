unit WndServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB;

type
  TFrmServidor = class(TForm)
    ButtonValidar: TButton;
    EditDatabase: TEdit;
    EditServer: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    FDConnectionTest: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure ButtonValidarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FDConnectionTestAfterConnect(Sender: TObject);
    procedure FDConnectionTestError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
    procedure ConnectDB;
  public
    { Public declarations }
  end;

var
  FrmServidor: TFrmServidor;

implementation

{$R *.dfm}

procedure TFrmServidor.ConnectDB;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'i2V.ini');
  try
    EditServer.Text   := Ini.ReadString('Database', 'Server', '');
    EditDatabase.Text := Ini.ReadString('Database', 'Database', '');
  finally
    Ini.Free;
  end;
end;

procedure TFrmServidor.Button2Click(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'i2v.dll');
  try
    Ini.WriteString('Database', 'Server', EditServer.Text);
    Ini.WriteString('Database', 'Database', EditDatabase.Text);
  finally
    Ini.Free;
  end;
end;

procedure TFrmServidor.ButtonValidarClick(Sender: TObject);
begin
  FDConnectionTest.Close;
  FDConnectionTest.Params.Clear;
  FDConnectionTest.Params.DriverID := 'FB';
  FDConnectionTest.Params.Database := EditDatabase.Text;
  FDConnectionTest.Params.UserName := 'SYSDBA';
  FDConnectionTest.Params.Password := 'masterkey';
  FDConnectionTest.Params.Add('Server='+EditServer.Text);
  FDConnectionTest.Params.Add('Protocol=TCPIP');
  try
    FDConnectionTest.Open;
  except
    on E: Exception do
      ShowMessage('Error al conectar.');
  end;
end;

procedure TFrmServidor.FDConnectionTestAfterConnect(Sender: TObject);
begin
  ShowMessage('Conexión exitosa');
end;

procedure TFrmServidor.FDConnectionTestError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  ShowMessage('Parámetros incorrectos');
end;

procedure TFrmServidor.FormCreate(Sender: TObject);
begin
  ConnectDB;
end;

end.
