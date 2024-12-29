unit WndImprimir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  frxClass, frxPreview, frCoreClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet,
  frxDBSet, frxExportBaseDialog, frxExportImage, frxExportRTF, frxRich, frxBarCode,
  Vcl.WinXCtrls, IniFiles;

type
  TFrmImprimir = class(TForm)
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    Panel1: TPanel;
    btnImprimir: TButton;
    btnExportarJPG: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    FDTablePMI: TFDTable;
    FDTablePMIDOMICILIO: TStringField;
    FDTablePMILONGITUD: TStringField;
    FDTablePMILATITUD: TStringField;
    FDTablePMIFOTO1: TBlobField;
    FDTablePMIFOTO2: TBlobField;
    FDTablePMIFOTO3: TBlobField;
    FDTablePMIFOTO4: TBlobField;
    FDTablePMICOMENTARIO1: TBlobField;
    FDTablePMIMUNICIPIO_ID: TStringField;
    FDTablePMILOCALIDAD_ID: TStringField;
    FDTablePMIID: TStringField;
    FDTablePMIAC: TCurrencyField;
    FDTablePMITFSE: TCurrencyField;
    FDTablePMITFPR: TCurrencyField;
    FDTablePMIFAC: TDateField;
    FDTablePMIFTFSE: TDateField;
    FDTablePMIFTFPR: TDateField;
    FDTablePMICOMENTARIO2: TBlobField;
    FDTablePMICOMENTARIO3: TBlobField;
    FDTablePMICOMENTARIO4: TBlobField;
    FDTablePMI_SWITCH: TFDTable;
    FDTablePMI_SWITCHPMI: TStringField;
    FDTablePMI_SWITCHSWITCH: TStringField;
    FDTableSWITCH: TFDTable;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDTableCAMARA: TFDTable;
    frxDBDataset4: TfrxDBDataset;
    FDTablePMI_CAMARA: TFDTable;
    FDTablePMI_CAMARAPMI: TStringField;
    FDTablePMI_CAMARACAMARA: TStringField;
    FDTablePMI_CAMARANOMBRE: TStringField;
    frxDBDataset5: TfrxDBDataset;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    FDTablePMI_RADIO: TFDTable;
    FDTablePMI_RADIOPMI: TStringField;
    FDTablePMI_RADIORADIO: TStringField;
    FDTableRADIO: TFDTable;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    FDTablePMI_GABINETE: TFDTable;
    FDTablePMI_GABINETEPMI: TStringField;
    FDTablePMI_GABINETEGABINETE: TStringField;
    FDTableGABINETE: TFDTable;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset9: TfrxDBDataset;
    FDTableMUNICIPIOS: TFDTable;
    DataSource10: TDataSource;
    frxDBDataset10: TfrxDBDataset;
    FDTablePMI_POSTE: TFDTable;
    FDTablePMI_POSTEPMI: TStringField;
    FDTablePMI_POSTEPOSTE: TStringField;
    FDTablePOSTE: TFDTable;
    DataSource12: TDataSource;
    DataSource13: TDataSource;
    frxDBDataset12: TfrxDBDataset;
    frxDBDataset13: TfrxDBDataset;
    FDTablePMI_MISCELANEO: TFDTable;
    FDTablePMI_MISCELANEOPMI: TStringField;
    FDTablePMI_MISCELANEOCANTIDAD: TIntegerField;
    DataSource14: TDataSource;
    frxDBDataset14: TfrxDBDataset;
    FDTableMISCELANEO: TFDTable;
    DataSource15: TDataSource;
    frxDBDataset15: TfrxDBDataset;
    FDTableLOCALIDADES: TFDTable;
    DataSource11: TDataSource;
    frxDBDataset11: TfrxDBDataset;
    DataSource16: TDataSource;
    frxDBDataset16: TfrxDBDataset;
    FDTableSWITCH_MARCA: TFDTable;
    DataSource17: TDataSource;
    FDTableSWITCH_MODELO: TFDTable;
    frxDBDataset17: TfrxDBDataset;
    FDTableCAMARA_MODELO: TFDTable;
    FDTableRADIO_MODELO: TFDTable;
    FDTableGABINETE_MODELO: TFDTable;
    FDTablePOSTE_MODELO: TFDTable;
    FDTableMISCELANEO_MODELO: TFDTable;
    DataSource19: TDataSource;
    DataSource20: TDataSource;
    DataSource21: TDataSource;
    DataSource22: TDataSource;
    DataSource23: TDataSource;
    frxDBDataset19: TfrxDBDataset;
    frxDBDataset20: TfrxDBDataset;
    frxDBDataset21: TfrxDBDataset;
    frxDBDataset22: TfrxDBDataset;
    frxDBDataset23: TfrxDBDataset;
    FDTableCAMARA_MARCA: TFDTable;
    FDTableRADIO_MARCA: TFDTable;
    FDTableGABINETE_MARCA: TFDTable;
    FDTablePOSTE_MARCA: TFDTable;
    FDTableMISCELANEO_MARCA: TFDTable;
    DataSource24: TDataSource;
    DataSource25: TDataSource;
    DataSource26: TDataSource;
    DataSource27: TDataSource;
    DataSource28: TDataSource;
    frxDBDataset24: TfrxDBDataset;
    frxDBDataset25: TfrxDBDataset;
    frxDBDataset26: TfrxDBDataset;
    frxDBDataset27: TfrxDBDataset;
    frxDBDataset28: TfrxDBDataset;
    FDTableSWITCH_TIPO: TFDTable;
    DataSource18: TDataSource;
    frxDBDataset18: TfrxDBDataset;
    FDTableCAMARA_TIPO: TFDTable;
    FDTableRADIO_TIPO: TFDTable;
    FDTableGABINETE_TIPO: TFDTable;
    FDTablePOSTE_TIPO: TFDTable;
    FDTableMISCELANEO_TIPO: TFDTable;
    DataSource29: TDataSource;
    DataSource30: TDataSource;
    DataSource31: TDataSource;
    DataSource32: TDataSource;
    DataSource33: TDataSource;
    frxDBDataset29: TfrxDBDataset;
    frxDBDataset30: TfrxDBDataset;
    frxDBDataset31: TfrxDBDataset;
    frxDBDataset32: TfrxDBDataset;
    frxDBDataset33: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    FDTablePMI_MISCELANEOMISCELANEO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarJPGClick(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImprimir: TFrmImprimir;

implementation

{$R *.dfm}

uses DataModuleReportePMI, GlobalVars;

procedure TFrmImprimir.btnExportarJPGClick(Sender: TObject);
begin
  // Exportar el reporte
  frxReport1.Export(frxJPEGExport1);
end;

procedure TFrmImprimir.btnImprimirClick(Sender: TObject);
begin
  frxReport1.Print;
end;

procedure TFrmImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImprimir.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('DriverID=FB');
  FDConnection1.Params.Add('Database='+DataBase);
  FDConnection1.Params.Add('User_Name=' + UserName);
  FDConnection1.Params.Add('Password=' + UserPassword);
  FDConnection1.Params.Add('RoleName=' + UserRole);
  FDConnection1.Params.Add('Server=' + DatabaseServer);
  FDConnection1.Params.Add('Protocol=TCPIP');
  FDConnection1.LoginPrompt := False;
  try
    FDConnection1.Connected := True;
    FDTableCAMARA.Active := True;
    FDTableCAMARA_MARCA.Active := True;
    FDTableCAMARA_MODELO.Active := True;
    FDTableCAMARA_TIPO.Active := True;
    FDTableGABINETE.Active := True;
    FDTableGABINETE_MARCA.Active := True;
    FDTableGABINETE_MODELO.Active := True;
    FDTableGABINETE_TIPO.Active := True;
    FDTableLOCALIDADES.Active := True;
    FDTableMISCELANEO.Active := True;
    FDTableMISCELANEO_MARCA.Active := True;
    FDTableMISCELANEO_MODELO.Active := True;
    FDTableMISCELANEO_TIPO.Active := True;
    FDTableMUNICIPIOS.Active := True;
    FDTablePMI.Active := True;
    FDTablePMI_CAMARA.Active := True;
    FDTablePMI_GABINETE.Active := True;
    FDTablePMI_MISCELANEO.Active := True;
    FDTablePMI_POSTE.Active := True;
    FDTablePMI_RADIO.Active := True;
    FDTablePMI_SWITCH.Active := True;
    FDTablePOSTE.Active := True;
    FDTablePOSTE_MARCA.Active := True;
    FDTablePOSTE_MODELO.Active := True;
    FDTablePOSTE_TIPO.Active := True;
    FDTableRADIO.Active := True;
    FDTableRADIO_MARCA.Active := True;
    FDTableRADIO_MODELO.Active := True;
    FDTableRADIO_TIPO.Active := True;
    FDTableSWITCH.Active := True;
    FDTableSWITCH_MARCA.Active := True;
    FDTableSWITCH_MODELO.Active := True;
    FDTableSWITCH_TIPO.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmImprimir.SearchBox1InvokeSearch(Sender: TObject);
var
  ReportPath: string;
begin
  if not (FDTablePMI.State in [dsInactive]) then
  begin

    // Lectura del archivo config.ini
    ReportPath := ExtractFilePath(ParamStr(0)) + 'reportes\';

    try
      FDTablePMI.Close;
      FDTablePMI.Filter := 'ID = '''+SearchBox1.Text+'''';
      FDTablePMI.Filtered := True;
      FDTablePMI.Open;
      if FDTablePMI.RecordCount > 0 then
      begin
        frxReport1.Report.LoadFromFile(ReportPath + 'Pmi6.fr3', True);
        frxReport1.PrepareReport;
        frxReport1.Preview := frxPreview1;
        frxReport1.ShowPreparedReport;

        // Configurar la exportación a JPG
        frxJPEGExport1.FileName := 'CEDULA_'+SearchBox1.Text + '.jpg';
        btnImprimir.Enabled := True;
        btnExportarJPG.Enabled := True;
      end
      else
      begin
        btnImprimir.Enabled := False;
        btnExportarJPG.Enabled := False;
        Application.MessageBox('No se encontró un PMI con esa clave.', 'i2V', MB_ICONINFORMATION + MB_OK);
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox('Error al seleccionar el PMI.', 'Información', MB_ICONHAND + MB_OK);
        FDTablePMI.Close;
        FDTablePMI.Filtered := False;
        FDTablePMI.Open;
        btnImprimir.Enabled := False;
        btnExportarJPG.Enabled := False;
      end;
    end;
  end;
end;

end.
