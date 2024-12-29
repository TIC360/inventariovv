unit DataModulePmi;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Windows, Vcl.Forms, IniFiles;

type
  TDMPmi = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    PmiTable: TFDQuery;
    DSPmi: TDataSource;
    procedure PmiTableBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPmi: TDMPmi;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPmi.DataModuleCreate(Sender: TObject);
begin
  //ConnectDB;
end;

procedure TDMPmi.PmiTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el Punto de Monitoreo Inteligente?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
