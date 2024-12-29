unit DataModuleMiscelaneos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,Vcl.Forms, Winapi.Windows, IniFiles;

type
  TDMMiscelaneos = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DSMiscelaneoTipo: TDataSource;
    MiscelaneoTipoTable: TFDQuery;
    MiscelaneoMarcaTable: TFDQuery;
    DSMiscelaneoMarca: TDataSource;
    MiscelaneoModeloTable: TFDQuery;
    DSMiscelaneoModelo: TDataSource;
    MiscelaneoTable: TFDQuery;
    DSMiscelaneo: TDataSource;
    procedure MiscelaneoTipoTableBeforeDelete(DataSet: TDataSet);
    procedure MiscelaneoMarcaTableBeforeDelete(DataSet: TDataSet);
    procedure MiscelaneoModeloTableBeforeDelete(DataSet: TDataSet);
    procedure MiscelaneoTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB;
  end;

var
  DMMiscelaneos: TDMMiscelaneos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMMiscelaneos.ConnectDB;
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
      MiscelaneoTable.Active := True;
      MiscelaneoModeloTable.Active := True;
      MiscelaneoMarcaTable.Active := True;
      MiscelaneoTipoTable.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar con la base de datos.', 'DataModuleMiscelaneos', MB_ICONHAND);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDMMiscelaneos.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

procedure TDMMiscelaneos.MiscelaneoMarcaTableBeforeDelete(
  DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar la marca de misceláneo?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMMiscelaneos.MiscelaneoModeloTableBeforeDelete(
  DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el modelo de misceláneo?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMMiscelaneos.MiscelaneoTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el misceláneo?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMMiscelaneos.MiscelaneoTipoTableBeforeDelete(
  DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el tipo de misceláneo?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
