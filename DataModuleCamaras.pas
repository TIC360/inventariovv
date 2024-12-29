unit DataModuleCamaras;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,Vcl.Forms, Winapi.Windows, IniFiles;

type
  TDMCamaras = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DSCamaraTipo: TDataSource;
    CamaraTipoTable: TFDQuery;
    CamaraMarcaTable: TFDQuery;
    DSCamaraMarca: TDataSource;
    CamaraModeloTable: TFDQuery;
    DSCamaraModelo: TDataSource;
    CamaraTable: TFDQuery;
    DSCamara: TDataSource;
    procedure CamaraTipoTableBeforeDelete(DataSet: TDataSet);
    procedure CamaraMarcaTableBeforeDelete(DataSet: TDataSet);
    procedure CamaraModeloTableBeforeDelete(DataSet: TDataSet);
    procedure CamaraTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB;
  end;

var
  DMCamaras: TDMCamaras;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDMCamaras.connectDB;
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
      CamaraTable.Active := True;
      CamaraModeloTable.Active := True;
      CamaraMarcaTable.Active := True;
      CamaraTipoTable.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar con la base de datos.', 'DataModuleCamaras', MB_ICONHAND);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDMCamaras.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

procedure TDMCamaras.CamaraMarcaTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar la marca de cámara?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMCamaras.CamaraModeloTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el modelo de cámara?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMCamaras.CamaraTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar la cámara?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMCamaras.CamaraTipoTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el tipo de cámara?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
