unit DataModuleArcos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, Windows, Vcl.Forms;

type
  TDMArcos = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    ArcosTable: TFDQuery;
    DSArcos: TDataSource;
    procedure ArcosTableBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMArcos: TDMArcos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMArcos.ArcosTableBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Confirma que desea borrar el Arco carretero?', 'Cuidado', MB_ICONEXCLAMATION or MB_YESNO) = IDNO then
    Abort; // Cancela la operación de eliminación si el usuario elige 'No'
end;

end.
