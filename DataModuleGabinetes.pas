unit DataModuleGabinetes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,Vcl.Forms, Winapi.Windows, IniFiles;

type
  TDMGabinetes = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DSGabineteTipo: TDataSource;
    GabineteTipoTable: TFDQuery;
    GabineteMarcaTable: TFDQuery;
    DSGabineteMarca: TDataSource;
    GabineteModeloTable: TFDQuery;
    DSGabineteModelo: TDataSource;
    GabineteTable: TFDQuery;
    DSGabinete: TDataSource;
    procedure GabineteTipoTableBeforeDelete(DataSet: TDataSet);
    procedure GabineteMarcaTableBeforeDelete(DataSet: TDataSet);
    procedure GabineteModeloTableBeforeDelete(DataSet: TDataSet);
    procedure GabineteTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB;
  end;

var
  DMGabinetes: TDMGabinetes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMGabinetes.ConnectDB;
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
      GabineteTable.Active := True;
      GabineteModeloTable.Active := True;
      GabineteMarcaTable.Active := True;
      GabineteTipoTable.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar con la base de datos.', 'DataModuleGabinetes', MB_ICONHAND);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDMGabinetes.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

procedure TDMGabinetes.GabineteMarcaTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar la marca de gabinete?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMGabinetes.GabineteModeloTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el modelo de gabinete?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMGabinetes.GabineteTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el gabinete?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

procedure TDMGabinetes.GabineteTipoTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el tipo de gabinete?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
