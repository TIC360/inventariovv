unit WndAgregaDestino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, uecMapUtil, uecNativeShape,
  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, uecNativeMapControl, Math, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.WinXPanels, WndTopologia;

type
  TFrmAgregaDestino = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Panel1: TPanel;
    ButtonGuardar: TButton;
    ButtonCerrar: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    SBDestino: TSearchBox;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    FDQueryPuntoA: TFDQuery;
    DSPuntoA: TDataSource;
    FDQuerySectorial: TFDQuery;
    DSSectorial: TDataSource;
    FDQuery1: TFDQuery;
    Lat2: TLabel;
    Lng2: TLabel;
    Panel5: TPanel;
    Mapa: TECNativeMap;
    Lat1: TDBText;
    Lng1: TDBText;
    LabelRadioDestino: TLabel;
    LabelDestino: TLabel;
    LabelOrigenAntena: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelOrigen: TLabel;
    Label13: TLabel;
    LabelNodoA: TLabel;
    LabelNodoB: TLabel;
    ScrollBox1: TScrollBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Label16: TLabel;
    procedure ButtonCerrarClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
    procedure SBDestinoInvokeSearch(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    FPadre: TFrmTopologia;
    i: integer;
    procedure SetPoint(Lat: double; Lng: double; info: string; aColor: TColor);
  public
    property Padre: TFrmTopologia read FPadre write FPadre;
  end;

var
  FrmAgregaDestino: TFrmAgregaDestino;

implementation

{$R *.dfm}

uses GlobalVars;

function Radians(Grados: Double): Double;
begin
  Result := Grados * (PI / 180);
end;

function Degrees(Radianes: Double): Double;
begin
  Result := Radianes * (180 / PI);
end;

function CalcularAzimut(Lat1, Lon1, Lat2, Lon2: Double): Double;
var
  dLon, x, y, Azimut: Double;
begin
  // Convertir de grados a radianes
  Lat1 := Radians(Lat1);
  Lon1 := Radians(Lon1);
  Lat2 := Radians(Lat2);
  Lon2 := Radians(Lon2);

  // Diferencia de longitud
  dLon := Lon2 - Lon1;

  // Calcular el azimut
  x := Sin(dLon) * Cos(Lat2);
  y := Cos(Lat1) * Sin(Lat2) - Sin(Lat1) * Cos(Lat2) * Cos(dLon);
  Azimut := ArcTan2(x, y);

  // Convertir de radianes a grados
  Azimut := Degrees(Azimut);

  // Ajustar el azimut al rango de 0 a 360 grados
  Azimut := (Azimut + 360) - (Floor((Azimut + 360) / 360) * 360);

  Result := Azimut;
end;

procedure TFrmAgregaDestino.SetPoint(lat: double; lng: double; info: string; aColor: TColor);
begin
  Mapa.ScaleMarkerToZoom := True;
  i := Mapa.Shapes.Markers.Add(lat, lng);
  Mapa.Shapes.Markers[i].StyleIcon := siFlat;
  Mapa.Shapes.Markers[i].color := aColor;
  Mapa.Shapes.Markers[i].infoWindow(info);
  Mapa.BoundingBox(lat-1, lng + 1, lat + 1, lng - 1);
  Mapa.Zoom := 14;
  Mapa.PanTo(lat,lng);
end;

procedure TFrmAgregaDestino.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAgregaDestino.ButtonGuardarClick(Sender: TObject);
var
  origen, destino, origenantena, destinoantena: String;
  vLat1, vLng1, vLat2, vLng2: Double;
  distancia: Double;
  line:TECshapeLine;
begin
  FDQuery1.Close;
  try
    origen        := FDQuerySectorial.FieldByName('PMI').AsString;
    destino       := LabelDestino.Caption;
    vLat1         := StrToFloat(Lat1.Caption);
    vLng1         := StrToFloat(Lng1.Caption);
    vLat2         := StrToFloat(Lat2.Caption);
    vLng2         := StrToFloat(Lng2.Caption);
    line          := Mapa.AddGeodesicLine(vLat1, vLng1, vLat2, vLng2);
    distancia     := line.Distance;
    origenantena  := LabelOrigenAntena.Caption;
    destinoantena := LabelRadioDestino.Caption;
    FDQuery1.SQL.Text := 'INSERT INTO topologia (origen, destino, distancia, origenantena, destinoantena) VALUES (:origen, :destino, :distancia, :origenantena, :destinoantena)';
    FDQuery1.Params.ParamByName('origen').AsString := origen;
    FDQuery1.Params.ParamByName('destino').AsString := destino;
    FDQuery1.Params.ParamByName('distancia').AsFloat := distancia;
    FDQuery1.Params.ParamByName('origenantena').AsString := origenantena;
    FDQuery1.Params.ParamByName('destinoantena').AsString := destinoantena;
    FDQuery1.ExecSQL;
    FDQuery1.Close;
    Close;
  except
    on E: Exception do
        ShowMessage('Error al crear el radioenlace. ' + E.Message);
  end;
end;

procedure TFrmAgregaDestino.DBGrid2CellClick(Column: TColumn);
begin
  LabelOrigenAntena.Caption := DBGrid2.DataSource.DataSet.FieldByName('RADIO').AsString;
  LabelOrigen.Caption := DBGrid2.DataSource.DataSet.FieldByName('NOMBRE').AsString;
end;

procedure TFrmAgregaDestino.FormCreate(Sender: TObject);
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
    FDQueryPuntoA.Active := True;
    FDQuerySectorial.Active := True;
  except
    on E: Exception do
      ShowMessage('Error al conectar: ' + E.Message);
  end;
end;

procedure TFrmAgregaDestino.SBDestinoInvokeSearch(Sender: TObject);
var
  PuntoA: String;
begin
  if not (DSPuntoA.State in [dsInactive]) then
  begin
    try
      PuntoA := SBDestino.Text;
      FDQueryPuntoA.Close;
      FDQueryPuntoA.ParamByName('PMI').AsString := PuntoA;
      FDQueryPuntoA.Open;

      FDQuerySectorial.Close;
      FDQuerySectorial.ParamByName('PMI').AsString := PuntoA;
      FDQuerySectorial.Open;

      LabelNodoA.Caption := PuntoA;
      // Dibuja PuntoA
      SetPoint(StrToFloat(Lat1.Caption), StrToFloat(Lng1.Caption), 'NODO: ' + LabelNodoA.Caption + '<br>SERIE: '+ LabelOrigenAntena.Caption + '<br>NOMBRE: ' + LabelOrigen.Caption, clAqua);
      // Dibuja PuntoB
      SetPoint(StrToFloat(Lat2.Caption), StrToFloat(Lng2.Caption), 'NODO: ' + LabelDestino.Caption + '<br>SERIE: '+ LabelRadioDestino.Caption + '<br>NOMBRE: ' + LabelNodoB.Caption, clFuchsia);
      // Traza línea de PuntoA a PuntoB
      Mapa.AddGeodesicLine(StrToFloat(Lat1.Caption), StrToFloat(Lng1.Caption), StrToFloat(Lat2.Caption), StrToFloat(Lng2.Caption));
    except
      FDQuerySectorial.Close;
      FDQueryPuntoA.Close;
    end;
  end;
end;

end.
