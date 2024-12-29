unit DataModuleSwitches;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Vcl.Forms, Winapi.Windows, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, IniFiles;

type
  TDMSwitches = class(TDataModule)
    DSSwitchTipo: TDataSource;
    SwitchTipoTable: TFDQuery;
    SwitchMarcaTable: TFDQuery;
    DSSwitchMarca: TDataSource;
    SwitchModeloTable: TFDQuery;
    DSSwitchModelo: TDataSource;
    SwitchTable: TFDQuery;
    DSSwitch: TDataSource;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure SwitchTipoTableBeforeDelete(DataSet: TDataSet);
    procedure SwitchMarcaTableBeforeDelete(DataSet: TDataSet);
    procedure SwitchModeloTableBeforeDelete(DataSet: TDataSet);
    procedure SwitchTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB;
  end;

var
  DMSwitches: TDMSwitches;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMSwitches.ConnectDB;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'i2V.ini');
  try
    FDConnection1.Close;
    FDConnection1.Params.Clear;
    FDConnection1.Params.DriverID := 'FB';
    FDConnection1.Params.Database := Ini.ReadString('Database', 'Database', '');
    FDConnection1.Params.UserName := 'SYSDBA';
    FDConnection1.Params.Password := 'masterkey';
    FDConnection1.Params.Add('Server='+Ini.ReadString('Database', 'Server', ''));
    FDConnection1.Params.Add('Protocol=TCPIP');
    try
      FDConnection1.Open;
      FDConnection1.Connected := True;
      SwitchTable.Active := True;
      SwitchModeloTable.Active := True;
      SwitchMarcaTable.Active := True;
      SwitchTipoTable.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar con la base de datos.', 'DataModulesSwitches', MB_ICONHAND);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDMSwitches.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

procedure TDMSwitches.SwitchMarcaTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar la marca de switch?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMSwitches.SwitchModeloTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el modelo de switch?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMSwitches.SwitchTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el switch?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMSwitches.SwitchTipoTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el tipo de switch?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
