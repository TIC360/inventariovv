unit DataModuleReportePMI;

interface

uses
  System.SysUtils, System.Classes, frCoreClasses, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, frLocalization, frxExportImage,
  frxExportBaseDialog, frxExportPDF;

type
  TDMReportePMI = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReportePMI: TDMReportePMI;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
