unit WndPmi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uecNativeMapControl, uecMapUtil, uecNativeShape,
  Vcl.WinXCtrls, FireDAC.Phys.FBDef, FireDAC.Phys, FireDAC.Phys.IBBase,
  FireDAC.UI.Intf, FireDAC.Stan.Pool, FireDAC.VCLUI.Wait, IniFiles;

type
  TFrmPmi = class(TForm)
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    PmiTable: TFDQuery;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    ActivityIndicator1: TActivityIndicator;
    BtnUbicar: TButton;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQueryLocalidades: TFDQuery;
    DSLocalidades: TDataSource;
    FDQuery1: TFDQuery;
    DSPmi: TDataSource;
    FDQueryMunicipios: TFDQuery;
    DSMunicipios: TDataSource;
    Mapa: TECNativeMap;
    Panel3: TPanel;
    Label19: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
    Label1: TLabel;
    DBText3: TDBText;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    FDTableTipo: TFDTable;
    DSTipo: TDataSource;
    Panel6: TPanel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MapaCompleteTiles(Sender: TObject);
    procedure MapaTilesTimeout(Sender: TObject);
    procedure MapaChangeMapActive(Sender: TObject);
    procedure MapaChangeMapBounds(Sender: TObject);
    procedure MapaChangeMapZoom(Sender: TObject);
    procedure MapaChangeTileServer(Sender: TObject);
    procedure MapaLoadShapes(sender: TObject; const ShapeType: string;
      const index, max: Integer; var cancel: Boolean);
    procedure BtnUbicarClick(Sender: TObject);
    procedure MapaMapMove(sender: TObject; const Lat, Lng: Double);
    procedure MapaShapeDrag(sender: TObject; const item: TECShape;
      var cancel: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  FrmPmi: TFrmPmi;

implementation

{$R *.dfm}

uses DataModulePmi, DataModule, GlobalVars;

procedure TFrmPmi.BtnUbicarClick(Sender: TObject);
var
  lat, lng : Double;
  Pn : TECShapePOI;
begin
  Mapa.Clear;
  // Centrar el mapa a la posición del PMI
  lng := StrToFloat(DBedit1.Text);
  lat := StrToFloat(DBEdit2.Text);
  Mapa.PanTo(lat,lng);

  // Límites
  Mapa.BoundingBox(lat-0.5, lng + 0.5, lat + 0.5, lng - 0.5);

  Mapa.Zoom := 20;
  Mapa.ScaleMarkerToZoom := True;

  Mapa.ScaleBar.Visible := true;
  Mapa.ScaleBar.Color := clWhite;
  Mapa.ScaleBar.SecondaryColor := clRed;
  Mapa.ScaleBar.Style := sbsBar;
  Mapa.ScaleBar.Division := sbdFour;
  Mapa.ScaleBar.Thickness := 8;
  Mapa.scaleBar.opacity := 50;
  Mapa.ScaleBar.MaxWidth := 150;

  // Buenísimo, muestra una línea y la distancia de la línea.
  //mapa.MeasureTool.Visible := true;

  // Agrega un Point Of Interest
  Pn := Mapa.addPOI(lat, lng);
  Pn.Draggable := True;
  Pn.POIShape := poiEllipse;
  Pn.Color := RGB(0,255,0);
  Pn.POIUnit := puPixel;
  Pn.width := 10;
  Pn.height:= 10;
end;

procedure TFrmPmi.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0:
    begin
      Mapa.TileServerInfo.MapStyle := 'satellite';
    end;
    1:
    begin
      Mapa.TileServerInfo.MapStyle := 'terrain';
    end;
    2:
    begin
      Mapa.TileServerInfo.MapStyle := 'roadmap';
    end;
  end;
end;

procedure TFrmPmi.DBLookupComboBox1Click(Sender: TObject);
begin
  if not (FDQueryLocalidades.State in [dsInactive]) then
  begin
    try
      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filter := 'MUNICIPIO_ID = '+IntToStr(DBLookupComboBox1.KeyValue);
      FDQueryLocalidades.Filtered := True;
      FDQueryLocalidades.Open;
    except
      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filtered := False;
      FDQueryLocalidades.Open;
    end;
  end;
end;

procedure TFrmPmi.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        Application.MessageBox('Punto de Monitoreo borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el Punto de Monitoreo Inteligente.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error 1: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmPmi.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      DBLookupComboBox1.Visible := True;
      DBLookupComboBox2.Visible := True;
      DBLookupComboBox2.KeyValue := null;

      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filter := 'MUNICIPIO_ID = 0';
      FDQueryLocalidades.Filtered := True;
      FDQueryLocalidades.Open;

      DBEdit8.SetFocus;
    end;
    nbPost, nbCancel:
    begin
      DBText1.Visible := True;
      DBText2.Visible := True;
      DBLookupComboBox1.Visible := False;
      DBLookupComboBox2.Visible := False;
      DBNavigator1.BtnClick(nbRefresh);
    end;
    nbEdit:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      //DBLookupComboBox2.KeyValue := DBGrid1.DataSource.DataSet.Fields[8].Value;
      try
        FDQueryLocalidades.Close;
        FDQueryLocalidades.Filter := 'MUNICIPIO_ID = '+IntToStr(DBLookupComboBox1.KeyValue);
        FDQueryLocalidades.Filtered := True;
        FDQueryLocalidades.Open;
      except
        FDQueryLocalidades.Close;
        FDQueryLocalidades.Filtered := False;
        FDQueryLocalidades.Open;
      end;
      DBLookupComboBox1.Visible := True;
      DBLookupComboBox2.Visible := True;
      DBEdit8.SetFocus;
    end;
  End;
end;

procedure TFrmPmi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Mapa.Free;
  Action := caFree;
end;

procedure TFrmPmi.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  ConfigFilePath, vAPIKey: String;
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
    FDQuery1.Active := True;
    FDQueryLocalidades.Active := True;
    FDQueryMunicipios.Active := True;
    FDTableTipo.Active := True;
    PmiTable.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;

  // Configura el TecNATIVEMap para usar Google Maps
  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    vAPIKey := IniFile.ReadString('settings', 'google_api_key', '');

    Mapa.Google.APiKey := vAPIKey;
    Mapa.TileServer := tsGoogle;
    Mapa.Google.Lang := 'es-MX';
    Mapa.Google.Region := 'MX';
    Mapa.TileServerInfo.MapStyle := 'terrain';
    Mapa.Latitude := 19.50666075908219;
    Mapa.longitude:= -96.88751359295661;
    Mapa.Active := True;
  finally
    IniFile.Free;
  end;

end;

procedure TFrmPmi.FormShow(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount = 1 then
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' punto de monitoreo.';
    end
  else
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' puntos de monitoreo.';
    end;
end;

procedure TFrmPmi.MapaChangeMapActive(Sender: TObject);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaChangeMapBounds(Sender: TObject);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaChangeMapZoom(Sender: TObject);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaChangeTileServer(Sender: TObject);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaCompleteTiles(Sender: TObject);
begin
  ActivityIndicator1.Animate := False;
end;

procedure TFrmPmi.MapaLoadShapes(sender: TObject; const ShapeType: string;
  const index, max: Integer; var cancel: Boolean);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaMapMove(sender: TObject; const Lat, Lng: Double);
begin
  ActivityIndicator1.Animate := True;
end;

procedure TFrmPmi.MapaShapeDrag(sender: TObject; const item: TECShape;
  var cancel: Boolean);
begin
  DBEdit1.Text := Mapa.MouseLatLng.Lng.ToString;
  DBEdit2.Text := Mapa.MouseLatLng.Lat.ToString;
end;

procedure TFrmPmi.MapaTilesTimeout(Sender: TObject);
begin
  ActivityIndicator1.Animate := False;
end;

procedure TFrmPmi.SearchBox1InvokeSearch(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: // id
    begin
      FDQuery1.Filter := Format('id like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    1: // Domicilio
    begin
      FDQuery1.Filter := Format('domicilio like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    2: // Municipio
    begin
      FDQuery1.Filter := Format('municipio like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    3: // Localidad
    begin
      FDQuery1.Filter := Format('localidad like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    4: // Región
    begin
      FDQuery1.Filter := Format('region like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;

  else
    FDQuery1.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;

  if DBGrid1.DataSource.DataSet.RecordCount = 1 then
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' punto de monitoreo.';
    end
  else
    begin
      Panel6.Caption := ' ' + DBGrid1.DataSource.DataSet.RecordCount.ToString + ' puntos de monitoreo.';
    end;

end;

end.


