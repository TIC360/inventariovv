unit DataModulePostes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,Vcl.Forms, Winapi.Windows, IniFiles;

type
  TDMPostes = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    PosteTable: TFDQuery;
    DSPoste: TDataSource;
    PosteTipoTable: TFDQuery;
    DSPosteTipo: TDataSource;
    PosteModeloTable: TFDQuery;
    DSPosteModelo: TDataSource;
    PosteMarcaTable: TFDQuery;
    DSPosteMarca: TDataSource;
    procedure PosteTipoTableBeforeDelete(DataSet: TDataSet);
    procedure PosteMarcaTableBeforeDelete(DataSet: TDataSet);
    procedure PosteModeloTableBeforeDelete(DataSet: TDataSet);
    procedure PosteTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB;
  end;

var
  DMPostes: TDMPostes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPostes.ConnectDB;
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
      PosteTable.Active := True;
      PosteModeloTable.Active := True;
      PosteMarcaTable.Active := True;
      PosteTipoTable.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar con la base de datos.', 'Error de conexi�n', MB_ICONHAND);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDMPostes.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

procedure TDMPostes.PosteMarcaTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('�Confirma que desea borrar la marca de poste?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operaci�n de eliminaci�n si el usuario elige 'No'
end;

procedure TDMPostes.PosteModeloTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('�Confirma que desea borrar el modelo de poste?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operaci�n de eliminaci�n si el usuario elige 'No'
end;

procedure TDMPostes.PosteTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('�Confirma que desea borrar el poste?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operaci�n de eliminaci�n si el usuario elige 'No'
end;

procedure TDMPostes.PosteTipoTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('�Confirma que desea borrar el tipo de poste?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operaci�n de eliminaci�n si el usuario elige 'No'
end;

end.
