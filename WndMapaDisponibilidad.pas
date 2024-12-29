unit WndMapaDisponibilidad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uecNativeMapControl,
  Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FBDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Vcl.Grids,
  Vcl.DBGrids, Generics.Collections, uecMapUtil, uecNativeShape;

type
  TRowColorInfo = record
    Row: Integer;
    Color: TColor;
  end;
  TFrmMapaDisponibilidad = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupListBox2: TDBLookupListBox;
    DBLookupListBox1: TDBLookupListBox;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDTableRegiones: TFDTable;
    FDTableMunicipios: TFDTable;
    DataSourceMunicipios: TDataSource;
    DataSourceRegiones: TDataSource;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    FDQueryCamaras: TFDQuery;
    DSCamaras: TDataSource;
    Mapa: TECNativeMap;
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SetPoint(Lat: double; Lng: double; azimut: integer; tipo: string; cam: string; aColor: TColor);
  private
    { Private declarations }
    i: integer;
    FRowColors: TList<TRowColorInfo>;
    procedure ColorAndAdvanceRow(AColor: TColor);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FrmMapaDisponibilidad: TFrmMapaDisponibilidad;

implementation

{$R *.dfm}

uses GlobalVars;
procedure TFrmMapaDisponibilidad.SetPoint(lat: double; lng: double; azimut: integer; tipo: string; cam: string; aColor: TColor);
begin
  Mapa.ScaleMarkerToZoom := True;
  i := Mapa.Shapes.Markers.Add(lat, lng);
  if Pos('PTZ', tipo) > 0 then
    begin
      Mapa.Shapes.Markers[i].Color := aColor;
      Mapa.Shapes.Markers[i].StyleIcon := siFlat;
      Mapa.Shapes.Markers[i].infoWindow(cam);
    end
  else
    begin
      Mapa.Shapes.Markers[i].StyleIcon := siFlat;
      Mapa.Shapes.Markers[i].color := aColor;
      Mapa.Shapes.Markers[i].fov := 30;
      Mapa.Shapes.Markers[i].FovRadius := 50;
      Mapa.Shapes.Markers[i].FovOpacity := 0;
      Mapa.Shapes.Markers[i].Angle := azimut;
      Mapa.Shapes.Markers[i].infoWindow(cam);
      Mapa.Shapes.Markers[i].StyleIcon := siDirection;
    end;

  Mapa.BoundingBox(lat-1, lng + 1, lat + 1, lng - 1);
  Mapa.Zoom := 20;
  Mapa.PanTo(lat,lng);
end;

constructor TFrmMapaDisponibilidad.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRowColors := TList<TRowColorInfo>.Create;
end;

destructor TFrmMapaDisponibilidad.Destroy;
begin
  FRowColors.Free;
  inherited Destroy;
end;

procedure TFrmMapaDisponibilidad.DBGrid1CellClick(Column: TColumn);
var
  lat, lng : Double;
  //mrkFlat : TECShapeMarker;
  DataSet: TDataSet;
  //azimut: Integer;
begin
  DataSet := DBGrid1.DataSource.DataSet;
  lng := StrToFloat(DataSet.FieldByName('longitud').value);
  lat := StrToFloat(DataSet.FieldByName('latitud').value);
  Mapa.setCenter(lat,lng);
end;

procedure TFrmMapaDisponibilidad.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
  I: Integer;
  RowColorInfo: TRowColorInfo;
begin
  for I := 0 to FRowColors.Count - 1 do
  begin
    RowColorInfo := FRowColors[I];
    if DBGrid1.DataSource.DataSet.RecNo = RowColorInfo.Row then
    begin
      DBGrid1.Canvas.Brush.Color := RowColorInfo.Color;
      DBGrid1.Canvas.Font.Color := clBlack;
      Break;
    end;
  end;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmMapaDisponibilidad.DBLookupListBox1Click(Sender: TObject);
var
  lat, lng: Double;
  azimut: Integer;
  tipo, cam: String;
begin
  if not (DSCamaras.State in [dsInactive]) then
  begin
    try
      FDQueryCamaras.Close;
      FDQueryCamaras.Filter := 'MUNICIPIO_ID = ' + DBLookupListBox1.KeyValue;
      FDQueryCamaras.Filtered := True;
      FDQueryCamaras.Open;
      FDQueryCamaras.First;
      while not FDQueryCamaras.Eof do
      begin
        lat    := FDQueryCamaras.FieldByName('latitud').AsFloat;
        lng    := FDQueryCamaras.FieldByName('longitud').AsFloat;
        azimut := FDQueryCamaras.FieldByName('azimut').AsInteger;
        tipo   := FDQueryCamaras.FieldByName('tipo').AsString;
        cam    := FDQueryCamaras.FieldByName('cam').AsString;
        case FDQueryCamaras.FieldByName('estatus').AsInteger of
          1:
            begin
              ColorAndAdvanceRow(clMoneyGreen); // Funciona
              SetPoint(lat, lng, azimut, tipo, cam, clMoneyGreen);
            end;
          2:
            begin
              ColorAndAdvanceRow(clYellow); // Intermitente
              SetPoint(lat, lng, azimut, tipo, cam, clYellow);
            end;
          3:
            begin
              ColorAndAdvanceRow(clWebSilver); // No funciona
              SetPoint(lat, lng, azimut, tipo, cam, clWebSilver);
           end;
        else
          ColorAndAdvanceRow(clWindow); // Color por defecto
        end;

      end;
      FDQueryCamaras.First;
      DBGrid1.Repaint;
    except
      on E: Exception do
      begin
        ShowMessage('Error: ' + E.Message);
        FDQueryCamaras.Close;
        FDQueryCamaras.Filtered := False;
        FDQueryCamaras.Open;
      end;
    end;

  end;
end;

procedure TFrmMapaDisponibilidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMapaDisponibilidad.FormCreate(Sender: TObject);
begin
  Mapa.ScaleMarkerToZoom := True;

  Mapa.ScaleBar.Visible := true;
  Mapa.ScaleBar.Color := clWhite;
  Mapa.ScaleBar.SecondaryColor := clRed;
  Mapa.ScaleBar.Style := sbsBar;
  Mapa.ScaleBar.Division := sbdFour;
  Mapa.ScaleBar.Thickness := 8;
  Mapa.scaleBar.opacity := 50;
  Mapa.ScaleBar.MaxWidth := 150;

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
    FDQueryCamaras.Active := True;
    FDTableMunicipios.Active := True;
    FDTableRegiones.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmMapaDisponibilidad.ColorAndAdvanceRow(AColor: TColor);
var
  RowColorInfo: TRowColorInfo;
  I: Integer;
  Found: Boolean;
begin
  RowColorInfo.Row := DSCamaras.DataSet.RecNo;
  RowColorInfo.Color := AColor;

  Found := False;

  // Buscar si la fila ya existe en la lista
  for I := 0 to FRowColors.Count - 1 do
  begin
    if FRowColors[I].Row = RowColorInfo.Row then
    begin
      FRowColors[I] := RowColorInfo;
      Found := True;
      Break;
    end;
  end;

  // Si no se encontró, agregar una nueva entrada
  if not Found then
  begin
    FRowColors.Add(RowColorInfo);
  end;

  DBGrid1.Repaint;  // Fuerza el redibujado del grid

  // Avanzar a la siguiente fila
  if not DSCamaras.DataSet.Eof then
    DSCamaras.DataSet.Next;
end;

end.
