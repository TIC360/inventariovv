unit WndConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.ControlList, Vcl.VirtualImage, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.VirtualImageList, Vcl.WinXPanels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.VCLUI.Wait, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Menus, IniFiles, Vcl.Tabs, Vcl.DockTabSet;

type
  TFrmConfig = class(TForm)
    ButtonUsuarios: TButton;
    ButtonRoles: TButton;
    CardPanel1: TCardPanel;
    CardUsuarios: TCard;
    Panel1: TPanel;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection2: TFDConnection;
    FDQuery2: TFDQuery;
    PopupMenu5: TPopupMenu;
    Borrarusuario1: TMenuItem;
    CardDB: TCard;
    Button5: TButton;
    Label39: TLabel;
    EditDatabase: TEdit;
    Button6: TButton;
    Label40: TLabel;
    EditServidor: TEdit;
    Panel3: TPanel;
    EditAdminUser: TEdit;
    EditAdminPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditSecurityDB: TEdit;
    Label7: TLabel;
    CardRoles: TCard;
    Panel5: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    Button1: TButton;
    EditNombreRol: TEdit;
    Panel2: TPanel;
    ChkVisualizar: TCheckBox;
    ChkInsertar: TCheckBox;
    ChkActualizar: TCheckBox;
    ChkBorrar: TCheckBox;
    StringGrid6: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    Panel12: TPanel;
    Panel11: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtnAddUser: TButton;
    EditPassword: TEdit;
    EditUsuario: TEdit;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid1: TStringGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    EditSecurityHost: TEdit;
    CardGoogleMaps: TCard;
    Panel7: TPanel;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    EditGoogleApiKey: TEdit;
    ButtonGuardarGoogleApiKey: TButton;
    procedure ButtonUsuariosClick(Sender: TObject);
    procedure ButtonRolesClick(Sender: TObject);
    procedure Asignarrol1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid2Click(Sender: TObject);
    procedure BtnAddUserClick(Sender: TObject);
    procedure Borrarusuario1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BorrarRol1Click(Sender: TObject);
    procedure PopupMenu71Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonGuardarGoogleApiKeyClick(Sender: TObject);
  private
    procedure Setup;
    procedure GetUserRoles;
    procedure GetUsers;
    procedure ListAllRoles;
    procedure PopulateTables;
    procedure PermisosXRol;
    procedure RevocarPermisoRol(Cad: String);
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmConfig.Setup;
begin
  StringGrid1.ColWidths[0] := 200;
  StringGrid1.ColCount := 1;
  StringGrid1.FixedRows := 1;  // Fija la primera fila como encabezado
  StringGrid1.Cells[0, 0] := 'ROLES ASIGNADOS';

  StringGrid2.ColWidths[0] := 200;
  StringGrid2.ColCount := 1;
  StringGrid2.FixedCols := 0;
  StringGrid2.FixedRows := 1;
  StringGrid2.Cells[0,0] := 'USUARIOS';

  StringGrid3.ColWidths[0] := 200;
  StringGrid3.ColCount := 1;
  StringGrid3.FixedCols := 0;
  StringGrid3.FixedRows := 1;
  StringGrid3.Cells[0,0] := 'ROLES DISPONIBLES';

  StringGrid4.ColWidths[0] := 200;
  StringGrid4.ColCount := 1;
  StringGrid4.FixedRows := 1;
  StringGrid4.Cells[0,0] := 'ROLES EXISTENTES';

  StringGrid5.ColCount     := 2;
  StringGrid5.FixedCols    := 0;
  StringGrid5.ColWidths[0] := 200;
  StringGrid5.ColWidths[1] := 100;
  StringGrid5.Cells[0, 0]  := 'TABLA';
  StringGrid5.Cells[1, 0]  := 'PERMISO';

  StringGrid6.ColWidths[0] := 200;
  StringGrid6.ColWidths[1] := 0;
  StringGrid6.Cells[0,0] := 'CONJUNTOS DE DATOS';
end;

procedure TFrmConfig.PermisosXRol;
var
  i: Integer;
  RolName, Permiso: String;
begin
  // Conectar a la base de datos

  FDConnection2.Params.Clear;
  FDConnection2.Params.Add('DriverID=FB');
  FDConnection2.Params.Add('Database='  + DataBase);
  FDConnection2.Params.Add('User_Name=' + UserName);
  FDConnection2.Params.Add('Password='  + UserPassword);
  FDConnection2.Params.Add('RoleName='  + UserRole);
  FDConnection2.Params.Add('Server='    + DatabaseServer);
  FDConnection2.Params.Add('Protocol=TCPIP');
  FDConnection2.LoginPrompt := False;

  // Crear el componente TFDQuery
  try
    // Obtiene el nombre del Rol
    RolName := StringGrid4.Cells[0, StringGrid4.Row];
    // Definir la consulta SQL
    FDQuery2.SQL.Text := 'SELECT RDB$RELATION_NAME AS TABLA, RDB$PRIVILEGE AS PERMISO ' +
                        'FROM RDB$USER_PRIVILEGES ' +
                        'WHERE RDB$USER = '''+RolName+''' AND RDB$USER_TYPE = 13';

    // Ejecutar la consulta
    FDQuery2.Open;

    // Configurar el StringGrid
    StringGrid5.RowCount := FDQuery2.RecordCount + 1; // +1 para la fila del título

    // Rellenar el StringGrid con los resultados
    i := 1;
    while not FDQuery2.Eof do
    begin
      StringGrid5.Cells[0, i] := Trim(FDQuery2.FieldByName('TABLA').AsString);
      if Trim(FDQuery2.FieldByName('PERMISO').AsString) = 'S' then Permiso := 'VER';
      if Trim(FDQuery2.FieldByName('PERMISO').AsString) = 'I' then Permiso := 'INSERTAR';
      if Trim(FDQuery2.FieldByName('PERMISO').AsString) = 'U' then Permiso := 'ACTUALIZAR';
      if Trim(FDQuery2.FieldByName('PERMISO').AsString) = 'D' then Permiso := 'BORRAR';

      StringGrid5.Cells[1, i] := Permiso;
      Inc(i);
      FDQuery2.Next;
    end;

  finally
    FDQuery2.Close; // Liberar la memoria
  end;
end;


procedure TFrmConfig.PopulateTables;
begin
  StringGrid6.RowCount := 40;

  StringGrid6.Cells[0, 1] := 'PROVEEDORES';
  StringGrid6.Cells[1, 1] := 'PROVEEDORES';

  StringGrid6.Cells[0, 2] := 'CAMARAS';
  StringGrid6.Cells[1, 2] := 'CAMARA';
  StringGrid6.Cells[0, 3] := 'MARCA DE CÁMARA';
  StringGrid6.Cells[1, 3] := 'CAMARA_MARCA';
  StringGrid6.Cells[0, 4] := 'MODELO DE CÁMARA';
  StringGrid6.Cells[1, 4] := 'CAMARA_MODELO';
  StringGrid6.Cells[0, 5] := 'TIPO DE CAMARA';
  StringGrid6.Cells[1, 5] := 'CAMARA_TIPO';

  StringGrid6.Cells[0, 6] := 'RADIOS';
  StringGrid6.Cells[1, 6] := 'RADIO';
  StringGrid6.Cells[0, 7] := 'MARCA DE RADIO';
  StringGrid6.Cells[1, 7] := 'RADIO_MARCA';
  StringGrid6.Cells[0, 8] := 'MODELO DE RADIO';
  StringGrid6.Cells[1, 8] := 'RADIO_MODELO';
  StringGrid6.Cells[0, 9] := 'TIPO DE RADIO';
  StringGrid6.Cells[1, 9] := 'RADIO_TIPO';

  StringGrid6.Cells[0, 10] := 'GABINETES';
  StringGrid6.Cells[1, 10] := 'GABINETE';
  StringGrid6.Cells[0, 11] := 'MARCA DE GABINETE';
  StringGrid6.Cells[1, 11] := 'GABINETE_MARCA';
  StringGrid6.Cells[0, 12] := 'MODELO DE GABINETE';
  StringGrid6.Cells[1, 12] := 'GABINETE_MODELO';
  StringGrid6.Cells[0, 13] := 'TIPO DE GABINETE';
  StringGrid6.Cells[1, 13] := 'GABINETE_TIPO';

  StringGrid6.Cells[0, 14] := 'POSTES';
  StringGrid6.Cells[1, 14] := 'POSTE';
  StringGrid6.Cells[0, 15] := 'MARCA DE POSTE';
  StringGrid6.Cells[1, 15] := 'POSTE_MARCA';
  StringGrid6.Cells[0, 16] := 'MODELO DE POSTE';
  StringGrid6.Cells[1, 16] := 'POSTE_MODELO';
  StringGrid6.Cells[0, 17] := 'TIPO DE POSTE';
  StringGrid6.Cells[1, 17] := 'POSTE_TIPO';

  StringGrid6.Cells[0, 18] := 'SWITCHES';
  StringGrid6.Cells[1, 18] := 'SWITCH';
  StringGrid6.Cells[0, 19] := 'MARCA DE SWITCH';
  StringGrid6.Cells[1, 19] := 'SWITCH_MARCA';
  StringGrid6.Cells[0, 20] := 'MODELO DE SWITCH';
  StringGrid6.Cells[1, 20] := 'SWITCH_MODELO';
  StringGrid6.Cells[0, 21] := 'TIPO DE SWITCH';
  StringGrid6.Cells[1, 21] := 'SWITCH_TIPO';

  StringGrid6.Cells[0, 22] := 'MISCELANEOS';
  StringGrid6.Cells[1, 22] := 'MISCELANEO';
  StringGrid6.Cells[0, 23] := 'MARCA DE MISCENALEO';
  StringGrid6.Cells[1, 23] := 'MISCELANEO_MARCA';
  StringGrid6.Cells[0, 24] := 'MODELO DE MISCELANEO';
  StringGrid6.Cells[1, 24] := 'MISCELANEO_MODELO';
  StringGrid6.Cells[0, 25] := 'TIPO DE MISCELANEO';
  StringGrid6.Cells[1, 25] := 'MISCELANEO_TIPO';

  StringGrid6.Cells[0, 26] := 'PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 26] := 'PMI';
  StringGrid6.Cells[0, 27] := 'CAMARAS EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 27] := 'PMI_CAMARA';
  StringGrid6.Cells[0, 28] := 'GABINETES EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 28] := 'PMI_GABINETE';
  StringGrid6.Cells[0, 29] := 'MISCELANEOS EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 29] := 'PMI_MISCELANEO';
  StringGrid6.Cells[0, 30] := 'POSTES EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 30] := 'PMI_POSTE';
  StringGrid6.Cells[0, 31] := 'RADIOS EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 31] := 'PMI_RADIO';
  StringGrid6.Cells[0, 32] := 'SWITCHES EN PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 32] := 'PMI_SWITCH';
  StringGrid6.Cells[0, 33] := 'TIPOS DE PUNTOS DE MONITOREO';
  StringGrid6.Cells[1, 33] := 'PMI_TIPO';

  StringGrid6.Cells[0, 34] := 'COLORES';
  StringGrid6.Cells[1, 34] := 'COLORES';
  StringGrid6.Cells[0, 35] := 'REGIONES';
  StringGrid6.Cells[1, 35] := 'REGIONES';
  StringGrid6.Cells[0, 36] := 'LOCALIDADES';
  StringGrid6.Cells[1, 36] := 'LOCALIDADES';
  StringGrid6.Cells[0, 37] := 'MUNICIPIOS';
  StringGrid6.Cells[1, 37] := 'MUNICIPIOS';

  StringGrid6.Cells[0, 38] := 'ESTATUS POSIBLES DE CAMARAS';
  StringGrid6.Cells[1, 38] := 'CAMARA_ESTATUS';
  StringGrid6.Cells[0, 39] := 'REGISTRAR ESTADO DE LAS CAMARAS';
  StringGrid6.Cells[1, 39] := 'ESTATUS_CAMARA';
  StringGrid6.Cells[0, 40] := 'TOPOLOGIA';
  StringGrid6.Cells[1, 40] := 'TOPOLOGIA';


end;

procedure TFrmConfig.PopupMenu71Click(Sender: TObject);
var
  Permiso, TableName, RoleName, Cad: String;
begin
  //Quitar permiso
  TableName := StringGrid5.Cells[0, StringGrid5.Row];
  Permiso   := StringGrid5.Cells[1, StringGrid5.Row];
  RoleName   := StringGrid4.Cells[0, StringGrid4.Row];
  if Permiso = 'S' then // SELECT
  begin
    Cad := 'REVOKE SELECT ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'U' then // UPDATE
  begin
    Cad := 'REVOKE UPDATE ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'I' then // INSERT
  begin
    Cad := 'REVOKE INSERT ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'D' then //DELETE
  begin
    Cad := 'REVOKE DELETE ON ' + TableName + ' FROM ' + RoleName;
  end;

  RevocarPermisoRol(Cad);
  PermisosXRol;
end;

procedure TFrmConfig.ListAllRoles;
var
  nRow: Integer;
begin
  try
    // Conectar a la base de datos
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database='  + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password='  + UserPassword);
    FDConnection2.Params.Add('RoleName='  + UserRole);
    FDConnection2.Params.Add('Server='    + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      FDConnection2.Connected := True;
      // Ejecutar la consulta para obtener todos los roles
      FDQuery2.SQL.Text := 'SELECT DISTINCT "RDB$ROLE_NAME" AS ROL FROM "RDB$ROLES" ORDER BY "RDB$ROLE_NAME"';
      FDQuery2.Open;

      // Configuración inicial del StringGrid 3
      StringGrid3.RowCount := FDQuery2.RecordCount + 1;  // +1 para el encabezado

      // Configuración inicial del StringGrid 4
      StringGrid4.RowCount := FDQuery2.RecordCount + 1;  // +1 para el encabezado

       // Mostrar los roles en el StringGrid
      nRow := 1;  // Comenzar en la segunda fila
      FDQuery2.First;

      while not FDQuery2.Eof do
      begin
        StringGrid3.Cells[0, nRow] := Trim(FDQuery2.FieldByName('ROL').AsString);
        StringGrid4.Cells[0, nRow] := Trim(FDQuery2.FieldByName('ROL').AsString);
        nRow := nRow + 1;
        FDQuery2.Next;
      end;
    except
      on E: Exception do
        Application.MessageBox('Error al listar los roles.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;
  except
    on E: Exception do
      Application.MessageBox('Error al conectarse a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.GetUsers;
var
  nRow: Integer;
begin
  try
    // Conectar a la base de datos
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database='  + SecurityDB);
    FDConnection2.Params.Add('User_Name=' + AdminUser);
    FDConnection2.Params.Add('Password='  + AdminPassword);
    FDConnection2.LoginPrompt := False;

    try
      FDConnection2.Connected := True;
      // Ejecutar la consulta para obtener la lista de usuarios
      //FDQuery2.SQL.Text := 'SELECT DISTINCT "RDB$USER" AS USUARIO FROM "RDB$USER_PRIVILEGES" WHERE "RDB$USER_TYPE" = 8';
      FDQuery2.SQL.Text := 'SELECT PLG$USER_NAME AS USUARIO FROM PLG$SRP';
      FDQuery2.Open;

      // Configuración inicial del StringGrid
      StringGrid2.RowCount := FDQuery2.RecordCount + 1;  // +1 para el encabezado

      // Mostrar los usuarios
      nRow := 1;  // Comenzar en la segunda fila
      FDQuery2.First;

      while not FDQuery2.Eof do
      begin
        StringGrid2.Cells[0, nRow] := Trim(FDQuery2.FieldByName('USUARIO').AsString);
        nRow := nRow + 1;
        FDQuery2.Next;
      end;
    except
      on E: Exception do
        Application.MessageBox('Error al obtener la lista de usuarios.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;
  except
    on E: Exception do
      Application.MessageBox('Error al conectarse a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;


procedure TFrmConfig.GetUserRoles;
var
  User_name: string;
  nRow: Integer;
begin
  try
    // Conectar a la base de datos
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      // Obtener el nombre del usuario
      User_name := StringGrid2.Cells[0, StringGrid2.Row];

      // Ejecutar la consulta para obtener los roles
      FDQuery2.SQL.Text := 'SELECT "RDB$RELATION_NAME" AS ROL FROM  "RDB$USER_PRIVILEGES" WHERE "RDB$USER" = '''+User_name.ToUpper+''' AND "RDB$USER_TYPE" = 8 AND "RDB$PRIVILEGE" = ''M''';
      FDQuery2.Open;

      // Configuración inicial del StringGrid
      StringGrid1.RowCount := FDQuery2.RecordCount + 1;  // +1 para el encabezado

      // Mostrar los roles asignados al usuario
      nRow := 1;  // Comenzar en la segunda fila
      FDQuery2.First;

      while not FDQuery2.Eof do
      begin
        StringGrid1.Cells[0, nRow] := Trim(FDQuery2.FieldByName('ROL').AsString);
        nRow := nRow + 1;
        FDQuery2.Next;
      end;
    except
      on E: Exception do
        // No hacer algo, pero puedo mandar mensaje de que no hay roles asignados al usuario.
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;
  except
    on E: Exception do
      Application.MessageBox('Error al conectarse a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;


procedure TFrmConfig.ButtonRolesClick(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardRoles;
end;

procedure TFrmConfig.Asignarrol1Click(Sender: TObject);
var
  RolName, User_name: String;
begin
  try
    // Conectar a la base de datos
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      RolName  := StringGrid3.Cells[0, StringGrid3.Row];
      User_name := StringGrid2.Cells[0, StringGrid2.Row];
      // Asignar el rol al usuario
      FDQuery2.SQL.Text := 'GRANT ' + RolName + ' TO ' + User_name;
      FDQuery2.ExecSQL;
      //ShowMessage('Rol asignado al usuario exitosamente.');
      GetUserRoles;
    except
      on E: Exception do
        Application.MessageBox('Error al asignar el rol.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;

  except
    on E: Exception do
      Application.MessageBox('Error al asignar rol al usuario.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.BorrarRol1Click(Sender: TObject);
var
  RolName: String;
begin
  try
    // Conectar a la base de datos de seguridad
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    RolName := StringGrid4.Cells[0, StringGrid4.Row];

    FDQuery2.SQL.Text := 'DROP ROLE ' + RolName;
    FDQuery2.ExecSQL;

    ListAllRoles;
  except
    on E: Exception do
      Application.MessageBox('Error al borrar el rol.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.Borrarusuario1Click(Sender: TObject);
var
  User_name: String;
begin
  try
    // Conectar a la base de datos de seguridad
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database='  + SecurityDB);
    FDConnection2.Params.Add('User_Name=' + AdminUser);
    FDConnection2.Params.Add('Password='  + AdminPassword);
    FDConnection2.LoginPrompt := False;

    User_name := StringGrid2.Cells[0, StringGrid2.Row];

    if User_name = 'SYSDBA' then
    begin
      ShowMessage('No se puede borrar al usuario SYSDBA');
    end
    else
    begin
      FDQuery2.SQL.Text := 'DROP USER ' + User_name;
      FDQuery2.ExecSQL;

      GetUsers;
    end;
        
  except
    on E: Exception do
      Application.MessageBox('Error al borrar el rol del usuario.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.BtnAddUserClick(Sender: TObject);
var
  User_name, Password: string;
begin
  FDConnection2.Params.Clear;
  FDConnection2.Params.Add('DriverID=FB');
  FDConnection2.Params.Add('Database='  + SecurityDB);
  FDConnection2.Params.Add('User_Name=' + AdminUser);
  FDConnection2.Params.Add('Password='  + AdminPassword);
  FDConnection2.LoginPrompt := False;

  try
    User_name := EditUsuario.Text;
    Password := EditPassword.Text;
    FDQuery2.SQL.Text := 'CREATE USER ' + User_name + ' PASSWORD ''' + Password + '''';
    FDQuery2.ExecSQL;
    GetUsers;
    EditUsuario.Text := '';
    EditPassword.Text := '';
    EditUsuario.SetFocus;
  except
    on E: Exception do
      Application.MessageBox('Error al crear el usuario.', 'Información', MB_ICONHAND + MB_OK);
  end;
  FDConnection2.Connected := False;
end;

procedure TFrmConfig.Button1Click(Sender: TObject);
var RoleName: String;
begin
  // Agregar rol
  try
    // Conectar a la base de datos de seguridad
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      // Crear el rol
      RoleName := EditNombreRol.Text;
      FDQuery2.SQL.Text := 'CREATE ROLE ' + RoleName;
      FDQuery2.ExecSQL;
      //ShowMessage('Rol creado exitosamente.');
      ListAllRoles;
    except
      on E: Exception do
        Application.MessageBox('Error al crear el rol.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;
  except
    on E: Exception do
      Application.MessageBox('Error al crear el rol.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.Button2Click(Sender: TObject);
var
  TableName, RoleName: String;
begin
  // Agregar privilegios al rol
  try
    // Conectar a la base de datos de seguridad
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    TableName := StringGrid6.Cells[1, StringGrid6.Row];
    RoleName  := StringGrid4.Cells[0, StringGrid4.Row];

    if ChkVisualizar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT SELECT ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkInsertar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT INSERT ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkActualizar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT UPDATE ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkBorrar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT DELETE ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    PermisosXRol; // Muestra los permisos del rol
  except
    on E: Exception do
      Application.MessageBox('Error al borrar el privilegio del rol.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.Button3Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardGoogleMaps;
end;

procedure TFrmConfig.Button5Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardDB;
end;

procedure TFrmConfig.Button6Click(Sender: TObject);
var
  IniFile: TIniFile;
  ConfigFilePath: string;
  vDatabaseValue, vServerValue, vSecurityDBValue, vAdminUser, vAdminPassword, vSecurityHost: String;
begin
  vDatabaseValue   := EditDatabase.Text;
  vServerValue     := EditServidor.Text;
  vSecurityDBValue := EditSecurityDB.Text;
  vAdminUser       := EditAdminUser.Text;
  vAdminPassword   := EditAdminPassword.Text;
  vSecurityHost    := EditSecurityHost.Text;

  // Construye la ruta completa del archivo config.ini en la misma carpeta del ejecutable
  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';

  // Crea o abre el archivo config.ini
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    // Escribe el valor en la sección "DatabaseSettings" y la clave "database" y "server"
    IniFile.WriteString('settings', 'database', vDatabaseValue);
    IniFile.WriteString('settings', 'securitydb', vSecurityDBValue);
    IniFile.WriteString('settings', 'server', vServerValue);
    IniFile.WriteString('settings', 'admin_user', vAdminUser);
    IniFile.WriteString('settings', 'admin_password', vAdminPassword);
    IniFile.WriteString('settings', 'security_host', vSecurityHost);
    Application.MessageBox('Debe reiniciar la aplicación para que los cambios surtan efecto.', 'Información', MB_ICONINFORMATION + MB_OK);
  finally
    IniFile.Free;
  end;
end;

procedure TFrmConfig.ButtonGuardarGoogleApiKeyClick(Sender: TObject);
var
  IniFile: TIniFile;
  ConfigFilePath: string;
  vAPIKey: String;
begin
  // Construye la ruta completa del archivo config.ini en la misma carpeta del ejecutable
  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';

  // Crea o abre el archivo config.ini
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    vAPIKey := EditGoogleApiKey.Text;
    IniFile.WriteString('settings', 'google_api_key', vAPIKey);
    Application.MessageBox('API Key guardada correctamente.', 'Información', MB_ICONINFORMATION + MB_OK);
  finally
    IniFile.Free;
  end;
end;

procedure TFrmConfig.ButtonUsuariosClick(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardUsuarios;
end;

procedure TFrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  ConfigFilePath: string;
  vAPIKey: String;
begin
  Setup;
  GetUsers;
  ListAllRoles;
  PopulateTables;

  EditDatabase.Text := Database;
  EditServidor.Text := DatabaseServer;
  EditSecurityDB.Text := SecurityDB;
  EditSecurityHost.Text := SecurityHost;
  EditAdminUser.Text := AdminUser;
  EditAdminPassword.Text := AdminPassword;

  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    vAPIKey := IniFile.ReadString('settings', 'google_api_key', '');
    EditGoogleApiKey.Text := vAPIKey;
  finally
    IniFile.Free;
  end;
end;

procedure TFrmConfig.SpeedButton1Click(Sender: TObject);
var
  TableName, RoleName: String;
begin
  // Agregar privilegios al rol
  try
    // Conectar a la base de datos de seguridad
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    TableName := StringGrid6.Cells[1, StringGrid6.Row];
    RoleName  := StringGrid4.Cells[0, StringGrid4.Row];

    if ChkVisualizar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT SELECT ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkInsertar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT INSERT ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkActualizar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT UPDATE ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    if ChkBorrar.Checked then
    begin
      FDQuery2.SQL.Text := 'GRANT DELETE ON ' + TableName + ' TO ' + Rolename;
      FDQuery2.ExecSQL;
    end;

    PermisosXRol; // Muestra los permisos del rol
  except
    on E: Exception do
      Application.MessageBox('Error al borrar el privilegio del rol.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.SpeedButton2Click(Sender: TObject);
var
  RolName, User_name: String;
begin
  try
    // Conectar a la base de datos
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      RolName  := StringGrid3.Cells[0, StringGrid3.Row];
      User_name := StringGrid2.Cells[0, StringGrid2.Row];
      // Asignar el rol al usuario
      FDQuery2.SQL.Text := 'GRANT ' + RolName + ' TO ' + User_name;
      FDQuery2.ExecSQL;
      //ShowMessage('Rol asignado al usuario exitosamente.');
      GetUserRoles;
    except
      on E: Exception do
        Application.MessageBox('Error al asignar el rol.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;

  except
    on E: Exception do
      Application.MessageBox('Error al asignar rol al usuario.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.SpeedButton3Click(Sender: TObject);
var
  RoleName, User_name: String;
begin
  try
    FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    RoleName := StringGrid1.Cells[0, StringGrid1.Row];
    User_name := StringGrid2.Cells[0, StringGrid2.Row];

    FDQuery2.SQL.Text := 'REVOKE ' + RoleName + ' FROM ' + User_name;
    FDQuery2.ExecSQL;

    //ShowMessage('Rol eliminado exitosamente.');
    GetUserRoles;
  except
    on E: Exception do
      Application.MessageBox('Error al borrar el rol del usuario.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmConfig.SpeedButton4Click(Sender: TObject);
var
  Permiso, TableName, RoleName, Cad: String;
begin
  //Quitar permiso
  TableName := StringGrid5.Cells[0, StringGrid5.Row];
  Permiso   := StringGrid5.Cells[1, StringGrid5.Row];
  RoleName   := StringGrid4.Cells[0, StringGrid4.Row];
  if Permiso = 'VER' then // SELECT
  begin
    Cad := 'REVOKE SELECT ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'ACTUALIZAR' then // UPDATE
  begin
    Cad := 'REVOKE UPDATE ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'INSERTAR' then // INSERT
  begin
    Cad := 'REVOKE INSERT ON ' + TableName + ' FROM ' + RoleName;
  end;
  if Permiso = 'BORRAR' then //DELETE
  begin
    Cad := 'REVOKE DELETE ON ' + TableName + ' FROM ' + RoleName;
  end;

  RevocarPermisoRol(Cad);
  PermisosXRol;
end;

procedure TFrmConfig.StringGrid2Click(Sender: TObject);
begin
  GetUserRoles;
end;

procedure TFrmConfig.StringGrid4Click(Sender: TObject);
begin
  PermisosXRol;
end;

procedure TFrmConfig.RevocarPermisoRol(Cad: String);
begin
  try
    // Conectar a la base de datos
     FDConnection2.Params.Clear;
    FDConnection2.Params.Add('DriverID=FB');
    FDConnection2.Params.Add('Database=' + DataBase);
    FDConnection2.Params.Add('User_Name=' + UserName);
    FDConnection2.Params.Add('Password=' + UserPassword);
    FDConnection2.Params.Add('RoleName=' + UserRole);
    FDConnection2.Params.Add('Server=' + DatabaseServer);
    FDConnection2.Params.Add('Protocol=TCPIP');
    FDConnection2.LoginPrompt := False;

    try
      // Revocar el permiso del rol
      FDQuery2.SQL.Text := Cad;
      FDQuery2.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al revocar el permiso del rol.', 'Información', MB_ICONHAND + MB_OK);
    end;

    // Desconectar de la base de datos
    FDConnection2.Connected := False;

  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;


end.
