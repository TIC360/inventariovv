unit WndPmi2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, System.ImageList, Vcl.ImgList, Vcl.Mask,
  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, IniFiles;

type
  TFrmPmi2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    PopupMenu11: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupListBox1: TDBLookupListBox;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    DBLookupListBox2: TDBLookupListBox;
    Panel4: TPanel;
    Label3: TLabel;
    Splitter1: TSplitter;
    FDQueryPmi: TFDQuery;
    DSPmi: TDataSource;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    txtBuscar: TSearchBox;
    FDTableRegiones: TFDTable;
    DSRegiones: TDataSource;
    FDTableMunicipios: TFDTable;
    DSMunicipios: TDataSource;
    Panel6: TPanel;
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtBuscarInvokeSearch(Sender: TObject);
    procedure CloseCurrentTab;
    procedure PopupMenu11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPmi2: TFrmPmi2;

implementation

{$R *.dfm}

uses DataModulePmi2, Pmi, GlobalVars;

procedure TFrmPmi2.CloseCurrentTab;
var
  CurrentTab: TTabSheet;
begin
  // Verificar si hay un TabSheet activo
  if PageControl1.ActivePage <> nil then
  begin
    // Obtener el TabSheet activo
    CurrentTab := PageControl1.ActivePage;

    // Desactivar el TabSheet para evitar errores de acceso
    PageControl1.ActivePage := nil;

    // Liberar el TabSheet actual
    CurrentTab.Free;
  end
  else
  begin
    ShowMessage('No hay una pestaña activa para cerrar.');
  end;
end;

procedure TFrmPmi2.DBGrid1DblClick(Sender: TObject);
var
  TabSheet : TTabSheet;
  RowIndex : Integer;
  PmiValue : Variant;

  Pmi : TDynamicPmi;
begin
  RowIndex := DBGrid1.DataSource.DataSet.RecNo;
  DBGrid1.DataSource.DataSet.RecNo := RowIndex;
  PmiValue := DBGrid1.DataSource.DataSet.Fields[0].Value;

  TabSheet := TTabSheet.Create(PageControl1);
  TabSheet.PageControl := PageControl1;
  TabSheet.Caption := PmiValue;

  // Seleccionar la nueva pestaña
  PageControl1.ActivePage := TabSheet;

  Pmi := TDynamicPmi.Create(nil);
  begin
    Pmi.FDConnection1.Params.Clear;
    Pmi.FDConnection1.Params.Add('DriverID=FB');
    Pmi.FDConnection1.Params.Add('Database='+DataBase);
    Pmi.FDConnection1.Params.Add('User_Name=' + UserName);
    Pmi.FDConnection1.Params.Add('Password=' + UserPassword);
    Pmi.FDConnection1.Params.Add('RoleName=' + UserRole);
    Pmi.FDConnection1.Params.Add('Server=' + DatabaseServer);
    Pmi.FDConnection1.Params.Add('Protocol=TCPIP');
    Pmi.FDConnection1.LoginPrompt := False;
    try
      Pmi.FDConnection1.Connected := True;
      Pmi.CamarasByPmi.Active := True;
      Pmi.FDQueryFoto1.Active := True;
      Pmi.FDQueryMediciones.Active := True;
      Pmi.GabinetesByPmi.Active := True;
      Pmi.MiscelaneosByPmi.Active := True;
      Pmi.PmiTableById.Active := True;
      Pmi.PostesByPmi.Active := True;
      Pmi.RadiosByPmi.Active := True;
      Pmi.SwitchesByPmi.Active := True;
    except
      on E: Exception do
        Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
    end;
  end;


  Pmi.Parent := TabSheet;
  Pmi.Align := alClient;
  Pmi.DBEdit1.Text := PmiValue;
  Pmi.Visible := True;

  Pmi.PmiTableById.Close;
  Pmi.PmiTableById.Params.ParamByName('ID').AsString := PmiValue;
  Pmi.PmiTableById.Open;

  // Pone fecha en los calendarios
  if not (Pmi.DSMediciones.State in [dsInactive]) then
    begin
    try
      Pmi.FDQueryMediciones.Close;
      Pmi.FDQueryMediciones.Filter := 'ID = ''' + PmiValue + '''';
      Pmi.FDQueryMediciones.Filtered := True;
      Pmi.FDQueryMediciones.Open;
      if not Pmi.FDQueryMediciones.Eof then
      begin
        Pmi.DatePicker2.Date :=  Pmi.FDQueryMediciones.FieldByName('fac').AsDateTime;
        Pmi.DatePicker3.Date :=  Pmi.FDQueryMediciones.FieldByName('ftfse').AsDateTime;
        Pmi.DatePicker4.Date :=  Pmi.FDQueryMediciones.FieldByName('ftfpr').AsDateTime;
      end;
    finally
      Pmi.FDQueryMediciones.Close;
      Pmi.FDQueryMediciones.Filtered := False;
    end;
  end;

  Pmi.CamarasByPmi.Close;
  Pmi.CamarasByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.CamarasByPmi.Active := True;
  Pmi.CamarasByPmi.Open;

  Pmi.SwitchesByPmi.Close;
  Pmi.SwitchesByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.SwitchesByPmi.Active := True;
  Pmi.SwitchesByPmi.Open;

  Pmi.PostesByPmi.Close;
  Pmi.PostesByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.PostesByPmi.Active := True;
  Pmi.PostesByPmi.Open;

  Pmi.GabinetesByPmi.Close;
  Pmi.GabinetesByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.GabinetesByPmi.Active := True;
  Pmi.GabinetesByPmi.Open;

  Pmi.RadiosByPmi.Close;
  Pmi.RadiosByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.RadiosByPmi.Active := True;
  Pmi.RadiosByPmi.Open;

  Pmi.MiscelaneosByPmi.Close;
  Pmi.MiscelaneosByPmi.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.MiscelaneosByPmi.Active := True;
  Pmi.MiscelaneosByPmi.Open;

  Pmi.FDQueryFoto1.Close;
  Pmi.FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
  Pmi.FDQueryFoto1.Params.ParamByName('PMI').AsString := PmiValue;
  Pmi.FDQueryFoto1.Active := True;
  Pmi.FDQueryFoto1.Open;
end;

procedure TFrmPmi2.DBLookupListBox1Click(Sender: TObject);
begin
  try
    FDQueryPmi.Close;
    FDQueryPmi.Filter := 'MUNICIPIO_ID = '+IntToStr(DBLookupListBox1.KeyValue);
    FDQueryPmi.Filtered := True;
    FDQueryPmi.Open;

    if DBGrid1.DataSource.DataSet.RecordCount = 1 then
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' punto de monitoreo.';
    end
    else
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' puntos de monitoreo.';
    end;

  except
    FDQueryPmi.Close;
    FDQueryPmi.Filtered := False;
    FDQueryPmi.Open;
  end;
end;

procedure TFrmPmi2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPmi2.FormCreate(Sender: TObject);
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
    FDQueryPmi.Active := True;
    FDTableMunicipios.Active := True;
    FDTableRegiones.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmPmi2.PopupMenu11Click(Sender: TObject);
begin
  CloseCurrentTab;
end;

procedure TFrmPmi2.txtBuscarInvokeSearch(Sender: TObject);
var
  cad: string;
begin
  cad:= txtBuscar.Text;
  try
    FDQueryPmi.Close;
    FDQueryPmi.Filter := 'ID='''+cad+'''';
    FDQueryPmi.Filtered := True;
    FDQueryPmi.Open;
  except
    FDQueryPmi.Close;
    FDQueryPmi.Filtered := False;
    FDQueryPmi.Open;
  end;
end;

end.
