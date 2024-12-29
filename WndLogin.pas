unit WndLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Skia,
  Vcl.ExtCtrls, FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, IniFiles;

type
  TFormLogin = class(TForm)
    Image1: TImage;
    EditUsuario: TEdit;
    EditPassword: TEdit;
    btnAceptar: TButton;
    btnCancelar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    ComboBoxRoles: TComboBox;
    Label5: TLabel;
    FDQuery1: TFDQuery;
    Button1: TButton;
    Label6: TLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure GetUserRoles;
    function VerifyUserCredentials(const AUserName, APassword: string): Boolean;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses GlobalVars;

function TFormLogin.VerifyUserCredentials(const AUserName, APassword: string): Boolean;
begin
  Result := False;  // Por defecto, las credenciales no son validas

  try
    FDConnection1.Params.Clear;
    FDConnection1.Params.Add('DriverID=FB');
    FDConnection1.Params.Add('User_Name=' + AUserName);
    FDConnection1.Params.Add('Password=' + APassword);
    FDConnection1.Params.Add('Database=' + Database);
    FDConnection1.Params.Add('Server=' + DatabaseServer);
    FDConnection1.Params.Add('Protocol=TCPIP');
    FDConnection1.LoginPrompt := False;

    try
      FDConnection1.Connected := True;  // Intentar conectar
      Result := True;  // Si se conecta exitosamente, las credenciales son correctas
    except
      on E: Exception do
        Result := False;  // Si ocurre una excepci�n, las credenciales son incorrectas
    end;
  finally
    FDConnection1.Close;
  end;
end;

procedure TFormLogin.GetUserRoles;
begin
  try
    // Conectar a la base de datos
    FDConnection1.Params.Clear;
    FDConnection1.Params.Add('DriverID=FB');
    FDConnection1.Params.Add('Database=' + DataBase);
    FDConnection1.Params.Add('User_Name=' + EditUsuario.Text);
    FDConnection1.Params.Add('Password=' + EditPassword.Text);
    FDConnection1.Params.Add('Server=' + DatabaseServer);
    FDConnection1.Params.Add('Protocol=TCPIP');
    FDConnection1.LoginPrompt := False;

    FDConnection1.Connected := True;

    try
      UserName     := EditUsuario.Text;
      UserPassword := EditPassword.Text;

      // Ejecutar la consulta para obtener los roles
      FDQuery1.SQL.Text := 'SELECT "RDB$RELATION_NAME" AS ROL FROM  "RDB$USER_PRIVILEGES" WHERE "RDB$USER" = '''+UserName.ToUpper+''' AND "RDB$USER_TYPE" = 8 AND "RDB$PRIVILEGE" = ''M''';
      FDQuery1.Active := True;
      FDQuery1.Open;
      FDQuery1.First;

      ComboBoxRoles.Clear;
      while not FDQuery1.Eof do
      begin
        ComboBoxRoles.Items.Add(Trim(FDQuery1.FieldByName('ROL').AsString));
        ComboBoxRoles.ItemIndex := 0;
        FDQuery1.Next;
        BtnAceptar.Enabled := True;
      end;
    except
      on E: Exception do
        ComboBoxRoles.Items.Add('SIN ROLES');
    end;


    // Desconectar de la base de datos
    FDConnection1.Connected := False;
  except
    on E: Exception do
      Application.MessageBox('Los datos de identificación son incorrectos.', 'Información', MB_ICONINFORMATION);
  end;
end;

procedure TFormLogin.btnAceptarClick(Sender: TObject);
var
  IsValid: Boolean;
begin
  IsValid := VerifyUserCredentials(UserName, UserPassword);
  if IsValid then
    begin
      // Asigna el Rol a la sesi�n del usuario
      UserRole := ComboBoxRoles.Text;
      Close;
    end
  else
    Application.MessageBox('Los datos de acceso son incorrectos.', 'Información', MB_ICONINFORMATION);
end;

procedure TFormLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLogin.Button1Click(Sender: TObject);
begin
  GetUserRoles;
  Button1.Default := False;
  BtnAceptar.Default := True;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  ConfigFilePath: string;
begin
  // Desactivar el botón de cerrar en la esquina superior derecha
  BorderIcons := BorderIcons - [biSystemMenu];

  // Lectura del archivo config.ini
  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    Database       := IniFile.ReadString('settings', 'database', '');
    DatabaseServer := IniFile.ReadString('settings', 'server', '');
    SecurityDB     := IniFile.ReadString('settings', 'securitydb', '');
    AdminUser      := IniFile.ReadString('settings', 'admin_user', '');
    AdminPassword  := IniFile.ReadString('settings', 'admin_password', '');
    SecurityHost   := IniFile.ReadString('settings', 'security_host', '');
  except on E: Exception do
    begin
      Application.MessageBox('Error al leer la configuración inicial del sistema.', 'Error', MB_ICONEXCLAMATION);
      IniFile.Free;
    end;
  end;
end;

end.
