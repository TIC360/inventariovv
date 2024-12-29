unit WndViabilidadPtMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, System.JSON, System.Math, System.Types,
  System.UITypes, Vcl.StdCtrls, Vcl.Grids, System.Generics.Collections,
  uecNativeMapControl, uecMapUtil, uecNativeShape, Vcl.ComCtrls, System.Math.Vectors,
  Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.FormTabsBar, Vcl.TabNotBk,
  System.ImageList, Vcl.ImgList, Data.DB, Vcl.DBGrids, frxClass, frxPreview,
  Vcl.ExtDlgs, Vcl.Buttons;

  type
    TCoordinate = record
      X, Y, Z: Double;
  end;

  type
  TPoint3D = record
    Latitude, Longitude, Altitude: Double;
  end;

  TFrmViabilidadPtMP = class(TForm)
    SkPaintBox1: TSkPaintBox;
    Mapa: TECNativeMap;
    TrackBar1: TTrackBar;
    Label5: TLabel;
    Label6: TLabel;
    EditAlturaA: TEdit;
    EditAlturaB: TEdit;
    Label7: TLabel;
    EditFreq: TEdit;
    Label9: TLabel;
    EditAlturaCritica: TEdit;
    TBAzimut: TTrackBar;
    TBFoV: TTrackBar;
    TBAngle: TTrackBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Splitter2: TSplitter;
    Label11: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LabelFOV: TLabel;
    LabelAzi: TLabel;
    ImageList1: TImageList;
    ScrollBox1: TScrollBox;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Label14: TLabel;
    Label1: TLabel;
    LabelPath: TLabel;
    TBZoom: TTrackBar;
    ScrollBox2: TScrollBox;
    Label2: TLabel;
    EditAzimutA: TEdit;
    Label3: TLabel;
    EditTiltA: TEdit;
    EditAzimutB: TEdit;
    EditTiltB: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SBAntena: TSpeedButton;
    SBAntenaB: TSpeedButton;
    StringGrid1: TStringGrid;
    Label26: TLabel;
    EditLonA: TEdit;
    EditLatA: TEdit;
    EditLonB: TEdit;
    EditLatB: TEdit;
    Label30: TLabel;
    EditasnmA: TEdit;
    EditasnmB: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    EditFoV: TEdit;
    Label25: TLabel;
    Label28: TLabel;
    procedure SkPaintBox1Draw(ASender: TObject; const ACanvas: ISkCanvas;
      const ADest: TRectF; const AOpacity: Single);
    procedure TrackBar1Change(Sender: TObject);
    procedure TBAzimutChange(Sender: TObject);
    procedure TBFoVChange(Sender: TObject);
    procedure TBAngleChange(Sender: TObject);
    procedure MapaChangeMapZoom(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: LongInt;
      var CanSelect: Boolean);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure TBZoomChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBAntenaBClick(Sender: TObject);
    procedure SBAntenaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    ConvertedJSON: string; // Contiene la candena JSON en formato de arreglo
    i, p: integer;
    M:TECShapeMarker;
    Line:TECshapeLine;
    FElevations: TArray<Single>;
    FLocations: TArray<TPointF>;
    procedure SetPoint(lat: double; lng: double; cam: string; aColor: TColor);
    procedure LoadDataFromJSON(const JSONStr: string);
    procedure LoadAndConvertJSON(const FileName: string);
    function ConvertJSON(const JSONStr: string): string;
    function Max(Number1, Number2: double): double;
    function CalculateYForX(x1, y1, x2, y2, x: Double): Double;
    function DegToRad(Degrees: Double): Double;
    function Haversine(lat1, lon1, lat2, lon2: Double): Double;
    function FresnelZoneRadius(x1, y1, x2, y2, x, y, frequencyMHz: Double): Double;
    function FresnelZoneRadius2(lat1, lon1, lat2, lon2, latMid, lonMid, freq: Double): Double;
    procedure LlenaTabla;
    function InterpolateHeight(A, B: TPoint3D; Lat, Lon: Double): Double;
    function CalcularTiltCompensado(
      LatA, LonA, AltA: Double;   // Coordenadas y altura de la antena A
      LatB, LonB, AltB: Double;   // Coordenadas y altura de la antena B
      TiltB: Double                // Tilt actual de la antena B en grados
    ): Double;
    function CalcularAzimutCompensado(
      LatA, LonA: Double;  // Latitud y longitud de la antena A
      LatB, LonB: Double;  // Latitud y longitud de la antena B
      AzimutB: Double      // Azimut actual de la antena B en grados
    ): Double;
    function CalcularAzimut(LatA, LonA, LatB, LonB: Double): Double;
    function CalcularTilt(LatA, LonA, AltA, LatB, LonB, AltB: Double): Double;
  public
    
  end;

var
  FrmViabilidadPtMP: TFrmViabilidadPtMP;

implementation

{$R *.dfm}

uses WndSeleccionaSectorial;

function TFrmViabilidadPtMP.InterpolateHeight(A, B: TPoint3D; Lat, Lon: Double): Double;
var
  t: Double;
begin
  // Calcular el parámetro de interpolación t basado en la latitud y longitud
  t := Sqrt(Sqr(Lat - A.Latitude) + Sqr(Lon - A.Longitude)) /
       Sqrt(Sqr(B.Latitude - A.Latitude) + Sqr(B.Longitude - A.Longitude));

  // Interpolar la altura
  Result := A.Altitude + t * (B.Altitude - A.Altitude);
end;

function TFrmViabilidadPtMP.DegToRad(Degrees: Double): Double;
begin
  Result := Degrees * Pi / 180;
end;

function TFrmViabilidadPtMP.Haversine(lat1, lon1, lat2, lon2: Double): Double;
var
  dLat, dLon, a, c: Double;
const
  R = 6371e3;  // Radio de la Tierra en metros
begin
  dLat := DegToRad(lat2 - lat1);
  dLon := DegToRad(lon2 - lon1);
  lat1 := DegToRad(lat1);
  lat2 := DegToRad(lat2);

  a := Sqr(Sin(dLat / 2)) + Cos(lat1) * Cos(lat2) * Sqr(Sin(dLon / 2));
  c := 2 * ArcTan2(Sqrt(a), Sqrt(1 - a));
  Result := R * c;
end;

function TFrmViabilidadPtMP.FresnelZoneRadius2(lat1, lon1, lat2, lon2, latMid, lonMid, freq: Double): Double;
var
  d1, d2, wavelength, F1: Double;
Const
  c = 3e8;  // Velocidad de la luz en m/s
begin
  d1 := Haversine(lat1, lon1, latMid, lonMid);
  d2 := Haversine(latMid, lonMid, lat2, lon2);
  wavelength := c / freq;
  F1 := Sqrt(wavelength * d1 * d2 / (d1 + d2));
  Result := F1;
end;

procedure TFrmViabilidadPtMP.LlenaTabla;
Const
  f = 5125e6;  // Frecuencia en Hz
var
  lat1, lon1, lat2, lon2, latMid, lonMid, freq: Double;
  F1: Double;
  ACri: Double;
  A, B: TPoint3D;
  //Lat, Lon,
  Altitude: Double;

begin
  StringGrid1.RowCount  := High(FElevations)+1;
  StringGrid1.ColCount  := 8;
  StringGrid1.FixedCols := 1;
  StringGrid1.FixedRows := 1;
  // Coordenadas en grados
  lat1 := FLocations[0].Y;
  lon1 := FLocations[0].X;
  lat2 := FLocations[99].Y;
  lon2 := FLocations[99].X;
  freq := 5125e6; // Frecuencia en Hz
  ACri := StrToFloat(EditAlturaCritica.Text); // Altura crítica

  // Coordenadas extremos
  A.Latitude := lat1;
  A.Longitude := lon1;
  A.Altitude := FElevations[0] + StrToFloat(EditAlturaA.Text); // Altura en metros

  B.Latitude := lat2;
  B.Longitude := lon2;
  B.Altitude := FElevations[99] + StrToFloat(EditAlturaB.Text); // Altura en metros

  StringGrid1.Cells[0, 0] := 'No';
  StringGrid1.Cells[1, 0] := 'LATITUD';
  StringGrid1.Cells[2, 0] := 'LONGITUD';
  StringGrid1.Cells[3, 0] := 'a.s.n.m.';
  StringGrid1.Cells[4, 0] := 'ALTURA CRITICA'; // Altura crítica
  StringGrid1.Cells[5, 0] := 'FRESNEL'; // Fresnel
  StringGrid1.Cells[6, 0] := '60% FRESNEL'; // 60% de fresnel
  StringGrid1.Cells[7, 0] := 'ALTURA LoS'; //Altura en la línea de vista
  //StringGrid1.Cells[8, 0] := 'ESPACIO';
  for var i := 0 to High(FElevations) do
  begin
    latMid := FLocations[i].Y;
    lonMid := FLocations[i].X;
    F1 := FresnelZoneRadius2(lat1, lon1, lat2, lon2, latMid, lonMid, freq);
    // Calcular la altura del punto intermedio
    Altitude := InterpolateHeight(A, B, LatMid, LonMid);

    StringGrid1.Cells[0, i+1] := (i+1).ToString;
    StringGrid1.Cells[1, i+1] := RoundTo(FLocations[i].Y, -5).ToString;
    StringGrid1.Cells[2, i+1] := RoundTo(FLocations[i].X, -5).ToString;
    StringGrid1.Cells[3, i+1] := RoundTo(FElevations[i], -2).ToString;
    StringGrid1.Cells[4, i+1] := RoundTo(FElevations[i]+Acri, -2).ToString; // Altura crítica
    StringGrid1.Cells[5, i+1] := RoundTo(F1, -2).ToString; // Fresnel
    StringGrid1.Cells[6, i+1] := RoundTo(F1 * 0.6, -2).ToString; // 60% de fresnel
    StringGrid1.Cells[7, i+1] := RoundTo(Altitude, -2).ToString; //Altura en la línea de vista
    //StringGrid1.Cells[8, i+1] := (Altitude - F1 - FElevations[i] + Acri).ToString;
  end;

end;

procedure TFrmViabilidadPtMP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmViabilidadPtMP.FresnelZoneRadius(x1, y1, x2, y2, x, y, frequencyMHz: Double): Double;
const
  SpeedOfLight = 3e8; // Velocidad de la luz en metros por segundo
var
  lambda, d1, d2, frequencyHz: Double;
begin
  // Convertir la frecuencia de GHz a Hz
  frequencyHz := frequencyMHz * 1e6;

  // Calcular la longitud de onda
  lambda := SpeedOfLight / frequencyHz;

  // Calcular la distancia total entre A y B
  //d := Sqrt(Sqr(x2 - x1) + Sqr(y2 - y1));
  //LabelDistancia.Caption := d.ToString;  //*************************************************************
  // Calcular las distancias parciales
  d1 := Sqrt(Sqr(x - x1) + Sqr(y - y1));
  d2 := Sqrt(Sqr(x2 - x) + Sqr(y2 - y));

  // Calcular la primera zona de Fresnel
  Result := Sqrt(lambda * d1 * d2 / (d1 + d2));
end;

function TFrmViabilidadPtMP.CalculateYForX(x1, y1, x2, y2, x: Double): Double;
var
  m, b, y: Double;
begin
  // Calcular la pendiente (m) de la línea
  m := (y2 - y1) / (x2 - x1);

  // Calcular la intersección (b) con el eje Y
  b := y1 - m * x1;

  // Calcular el valor de y dado x
  y := m * x + b;

  Result := y;
end;

procedure TFrmViabilidadPtMP.CheckBox2Click(Sender: TObject);
begin
  TBAngle.Enabled := Not TBAngle.Enabled;
end;

procedure TFrmViabilidadPtMP.CheckBox3Click(Sender: TObject);
begin
  TBAzimut.Enabled := Not TBAzimut.Enabled;
end;

procedure TFrmViabilidadPtMP.CheckBox4Click(Sender: TObject);
begin
  TBFoV.Enabled := Not TBFoV.Enabled;
end;

procedure TFrmViabilidadPtMP.MapaChangeMapZoom(Sender: TObject);
var
  x: Integer;
begin
  Label14.Caption := Mapa.Zoom.ToString;
  try
    x := Mapa.Shapes.Markers[1].PixelDistanceTo(Mapa.Shapes.Markers[0]);
    Mapa.Shapes.Markers[1].FovRadius := round(x * 2);
  except
    // nada
  end;

end;

function TFrmViabilidadPtMP.Max(Number1, Number2: double): double;
begin
  if Number1 > Number2 then
    Result := Number1
  else
    Result := Number2;
end;

procedure TFrmViabilidadPtMP.SBAntenaBClick(Sender: TObject);
var wnd: TFrmSeleccionaSectorial;
begin
  wnd := TFrmSeleccionaSectorial.Create(Self);
  wnd.Padre := Self;
  wnd.ShowModal;
end;

procedure TFrmViabilidadPtMP.SBAntenaClick(Sender: TObject);
var
  TiltCompensado: Double;
  AzimutCompensado: Double;
begin
  try
    TiltCompensado := CalcularTiltCompensado(
      FLocations[0].Y, FLocations[0].X, FElevations[0],     // Coordenadas y altura de la antena A
      FLocations[99].Y, FLocations[0].X, FElevations[99],  // Coordenadas y altura de la antena B
      StrToFloat(EditTiltB.Text)                          // Tilt actual de la antena B en grados
    );
    EditTiltA.Text := FormatFloat('0.00', TiltCompensado);
  except
      on E: Exception do
      begin
        ShowMessage('Error al leer los valores: ' + E.Message);
        Exit;
      end;
  end;

  try
    AzimutCompensado := CalcularAzimutCompensado(
    FLocations[0].Y, FLocations[0].X,     // Coordenadas de la antena A
    FLocations[99].Y, FLocations[99].X,  // Coordenadas de la antena B
    StrToFloat(EditAzimutB.Text)        // Azimut actual de la antena B en grados
  );
    EditAzimutA.Text := FormatFloat('0.00', AzimutCompensado);
  except
      on E: Exception do
      begin
        ShowMessage('Error al leer los valores: ' + E.Message);
        Exit;
      end;
  end;
end;

procedure TFrmViabilidadPtMP.SetPoint(lat: double; lng: double; cam: string; aColor: TColor);
begin
  Mapa.ScaleMarkerToZoom := True;
  Mapa.BoundingBox(lat-1, lng + 1, lat + 1, lng - 1);
  Mapa.Zoom := 14;
  Mapa.PanTo(lat,lng);

  p := Mapa.Shapes.Markers.Add(lat, lng);

  Mapa.Shapes.Markers[p].Color := aColor;
  Mapa.Shapes.Markers[p].StyleIcon := siFlat;
  Mapa.Shapes.Markers[p].infoWindow(cam);

  Mapa.Shapes.Markers[p].StyleIcon := siFlat;
  Mapa.Shapes.Markers[p].fov := 30;
  Mapa.Shapes.Markers[p].FovRadius := 0;
  Mapa.Shapes.Markers[p].FovOpacity := 50;
  Mapa.Shapes.Markers[p].Angle := 203;

end;

procedure TFrmViabilidadPtMP.LoadDataFromJSON(const JSONStr: string);
var
  JSONArray: TJSONArray;
  JSONValue: TJSONValue;
  Elevation: Single;
  Latitude, Longitude: Double;
  Locations: TArray<TPointF>;
  Elevations: TArray<Single>;
begin
  JSONArray := TJSONObject.ParseJSONValue(JSONStr) as TJSONArray;
  try
    SetLength(Elevations, JSONArray.Count);
    SetLength(Locations, JSONArray.Count);

    for var i := 0 to JSONArray.Count - 1 do
    begin
      JSONValue := JSONArray.Items[i];
      Elevation := JSONValue.GetValue<Double>('elevation');
      Latitude := JSONValue.GetValue<Double>('location.latitude');
      Longitude := JSONValue.GetValue<Double>('location.longitude');

      Elevations[i] := Elevation;
      Locations[i] := TPointF.Create(Longitude, Latitude);
    end;

    FElevations := Elevations;
    FLocations := Locations;

  finally
    JSONArray.Free;
  end;
end;

(***********************************************************************
                PROCEDIMIENTO QUE DIBUJA EN PANTALLA
 ***********************************************************************)
procedure TFrmViabilidadPtMP.SkPaintBox1Draw(ASender: TObject;
  const ACanvas: ISkCanvas; const ADest: TRectF; const AOpacity: Single);
var
  MaxElevation, MinElevation: Single;
  ScaleX, ScaleY: Single;
  X, Y: Single;
  Xi, Yi, Xf, Yf: Single;
  LPaint, LPaint2, LPaintPoste, LPaintFresnel, LPaintZonaCritica: ISkPaint;
  LPath, LPathFill, LPathPoste, LPathZonaCritica: ISkPath;
  LPathBuilder, LPathBuilderFill, LPathBuilderPoste, LPathBuilderZonaCritica: ISkPathBuilder;

begin
  if Length(FElevations) = 0 then
    Exit;

  Xi := 0; Yi := 0; Xf := 0; Yf := 0;

  MaxElevation := MaxValue(FElevations) + Max(StrToFloat(EditAlturaA.Text), StrToFloat(EditAlturaB.Text));
  MinElevation := MinValue(FElevations);

  ScaleX := ADest.Width / (Length(FElevations) - 1);
  ScaleY := ADest.Height / (MaxElevation - MinElevation);

  LPaint := TSkPaint.Create(TSkPaintStyle.Stroke);
  LPaint.StrokeWidth := 0.1;
  LPaint.Color := $FF000000;
  LPaint.AntiAlias := True;
  LPaint.StrokeCap := TSkStrokeCap.Round;

  LPaintPoste := TSkPaint.Create(TSkPaintStyle.Stroke);
  LPaintPoste.StrokeWidth := 3;
  LPaintPoste.Color := $FF000000;
  LPaintPoste.AntiAlias := True;
  LPaintPoste.StrokeCap := TSkStrokeCap.Round;

  LPaintFresnel := TSkPaint.Create(TSkPaintStyle.Stroke);
  LPaintFresnel.StrokeWidth := 1.5;
  LPaintFresnel.Color := $FF000000;
  LPaintFresnel.AntiAlias := True;
  LPaintFresnel.Style := TSkPaintStyle.Fill;
  LPaintFresnel.StrokeCap := TSkStrokeCap.Round;

  LPaintZonaCritica := TSkPaint.Create(TSkPaintStyle.Stroke);
  LPaintZonaCritica.StrokeWidth := 0.5;
  LPaintZonaCritica.Color := $FFFF0000;
  LPaintZonaCritica.AntiAlias := True;
  LPaintZonaCritica.StrokeCap := TSkStrokeCap.Round;

  LPathBuilder := TSkPathBuilder.Create;
  LPathBuilder.MoveTo(ADest.Left, ADest.Bottom - (FElevations[0] - MinElevation) * ScaleY);

  LPathBuilderFill := TSkPathBuilder.Create;
  LPathBuilderFill.MoveTo(ADest.Left, ADest.Bottom);

  LPathBuilderPoste := TSkPathBuilder.Create;

  LPathBuilderZonaCritica := TSkPathBuilder.Create;
  LPathBuilderZonaCritica.MoveTo(ADest.Left, ADest.Bottom - (FElevations[0] - MinElevation + StrToFloat(EditAlturaCritica.Text)) * ScaleY);

  for var i := 0 to High(FElevations) do
  begin
    X := ADest.Left + i * ScaleX;
    Y := ADest.Bottom - (FElevations[i] - MinElevation) * ScaleY;

    if i = 0 then
    begin
      Xi := X;
      Yi := ADest.Bottom - (FElevations[i] + StrToFloat(EditAlturaA.Text) - MinElevation) * ScaleY;
      LPathBuilderPoste.MoveTo(X, Y);
      LPathBuilderPoste.LineTo(X, Yi);
      LPathPoste := LPathBuilderPoste.Detach;
      ACanvas.DrawPath(LPathPoste, LPaintPoste);
    end;

    if i = High(FElevations) then
    begin
      Xf := X;
      Yf := ADest.Bottom - (FElevations[i] + StrToFloat(EditAlturaB.Text) - MinElevation) * ScaleY;
      LPathBuilderPoste.MoveTo(X, Y);
      LPathBuilderPoste.LineTo(X, Yf);
      LPathPoste := LPathBuilderPoste.Detach;
      ACanvas.DrawPath(LPathPoste, LPaintPoste);
    end;

    LPathBuilder.LineTo(X, Y);
    LPathBuilderFill.MoveTo(X, ADest.Bottom);
    LPathBuilderFill.LineTo(X, Y);

    // Dibuja la altura crítica
    LPathBuilderZonaCritica.LineTo(X, ADest.Bottom - (FElevations[i] + StrToFloat(EditAlturaCritica.Text) - MinElevation) * ScaleY);

  end;

  // Dibuja el perfil topográfico
  LPath := LPathBuilder.Detach;
  ACanvas.DrawPath(LPath, LPaint);

  // Dibuja el relleno del perfil topográfico
  LPathFill := LPathBuilderFill.Detach;
  ACanvas.DrawPath(LPathFill, LPaint);

  // Dibuja la línea de vista
  LPaint := TSkPaint.Create(TSkPaintStyle.Stroke);
  LPaint.StrokeWidth := 0.5;
  LPaint.Color := $FF00FF00;
  LPaint.AntiAlias := True;
  LPaint.StrokeCap := TSkStrokeCap.Round;

  LPathBuilder.MoveTo(Xi, Yi);
  LPathBuilder.LineTo(Xf, Yf);
  LPath := LPathBuilder.Detach;
  ACanvas.DrawPath(LPath, LPaint);

  // Dibuja la zona crítica
  LPathZonaCritica := LPathBuilderZonaCritica.Detach;
  ACanvas.DrawPath(LPathZonaCritica, LPaintZonaCritica);

  // Dibuja el punto rojo de la posición actual
  LPaint2 := TSkPaint.Create;
  LPaint2.Color := TAlphaColors.Black;  // Color del punto
  LPaint2.Style := TSkPaintStyle.Fill;  // Estilo de relleno
  LPaint2.StrokeWidth := 5;  // Grosor del punto
  try
    i := TrackBar1.Position;
    X := ADest.Left + i * ScaleX;
    Y := ADest.Bottom - (FElevations[i] - MinElevation) * ScaleY;
    ACanvas.DrawCircle(X, Y, 3, LPaint2); // Perfil de elevación
    ACanvas.DrawCircle(X, CalculateYForX(xi, yi, xf, yf, X), 3, LPaint2); // Línea de vista
    ACanvas.DrawCircle(X, ADest.Bottom - (FElevations[i] + StrToFloat(EditAlturaCritica.Text) - MinElevation) * ScaleY, 3, LPaint2);

    //LabelFresnel.Caption := Format('%.2f', [(ADest.Bottom - (FElevations[i] + StrToFloat(EditAlturaCritica.Text) - MinElevation) * ScaleY)-CalculateYForX(xi, yi, xf, yf, X)]);


    // Dibuja zona de fresnel
    //***LabelFresnelValue.Caption := (FresnelZoneRadius(Xi, Yi, Xf, Yf, X, CalculateYForX(xi, yi, xf, yf, X), StrToFloat(EditFreq.Text)) * ScaleY * 1.106).ToString;

    ACanvas.DrawLine(X, CalculateYForX(xi, yi, xf, yf, X), X, CalculateYForX(xi, yi, xf, yf, X)-(FresnelZoneRadius(Xi, Yi, Xf, Yf, X, CalculateYForX(xi, yi, xf, yf, X), StrToFloat(EditFreq.Text)) * ScaleY * 1.106), LPaintFresnel);
    ACanvas.DrawLine(X, CalculateYForX(xi, yi, xf, yf, X), X, CalculateYForX(xi, yi, xf, yf, X)+(FresnelZoneRadius(Xi, Yi, Xf, Yf, X, CalculateYForX(xi, yi, xf, yf, X), StrToFloat(EditFreq.Text)) * ScaleY * 1.106), LPaintFresnel);

  except
    // Nada
  end;

  // Dibuja la línea en el mapa
  //LabelLng.Caption := FLocations[TrackBar1.Position].X.ToString;
  //LabelLat.Caption := FLocations[TrackBar1.Position].Y.ToString;

  M.SetPosition(FLocations[TrackBar1.Position].Y, FLocations[TrackBar1.Position].X);

end;

procedure TFrmViabilidadPtMP.SpeedButton1Click(Sender: TObject);
var
  AzimutCompensado: Double;
begin
  try
    AzimutCompensado := CalcularAzimutCompensado(
    FLocations[0].Y, FLocations[0].X,     // Coordenadas de la antena A
    FLocations[99].Y, FLocations[99].X,  // Coordenadas de la antena B
    StrToFloat(EditAzimutB.Text)        // Azimut actual de la antena B en grados
  );
    EditAzimutA.Text := FormatFloat('0.00', AzimutCompensado);
  except
      on E: Exception do
      begin
        ShowMessage('Error al leer los valores: ' + E.Message);
        Exit;
      end;
  end;
end;

procedure TFrmViabilidadPtMP.SpeedButton2Click(Sender: TObject);
begin
    if OpenTextFileDialog1.Execute then
  begin
    try
      LoadAndConvertJSON(OpenTextFileDialog1.FileName);
      LoadDataFromJSON(ConvertedJSON);
      try
        SetPoint(FLocations[0].Y, FLocations[0].X, '', clAqua);
        SetPoint(FLocations[99].Y, FLocations[99].X,'', clAqua);
        Line := Mapa.AddGeodesicLine(FLocations[0].Y, FLocations[0].X, FLocations[99].Y, FLocations[99].X);
        M := Mapa.addMarker(FLocations[TrackBar1.Position].Y, FLocations[TrackBar1.Position].X);

        Mapa.Shapes.Markers[1].FovRadius := Round(Mapa.Shapes.Markers[1].PixelDistanceTo(Mapa.Shapes.Markers[0]) * 2);

        TrackBar1.Position := 0;

        // LLena el grid de la pestaña tabla
        LlenaTabla;
        LabelPath.Caption := OpenTextFileDialog1.FileName;

        // Calcula el Azimut A->B y B->A
        //EditAzimutA.Text := FormatFloat('0.00', CalcularAzimut(FLocations[0].Y, FLocations[0].X, FLocations[99].Y, FLocations[99].X));
        //EditAzimutB.Text := FormatFloat('0.00', CalcularAzimut(FLocations[99].Y, FLocations[99].X, FLocations[0].Y, FLocations[0].X));

        // Calcula el Tilt A-> y B->A
        //EditTiltA.Text := FormatFloat('0.00', CalcularTilt(FLocations[0].Y, FLocations[0].X, FElevations[0], FLocations[99].Y, FLocations[99].X, FElevations[99]));
        //EditTiltB.Text := FormatFloat('0.00', CalcularTilt(FLocations[99].Y, FLocations[99].X, FElevations[99], FLocations[0].Y, FLocations[0].X, FElevations[0]));

        // Pone coordenadas 3D de A y B
        EditLatA.Text  := FormatFloat('0.00000', FLocations[0].Y);
        EditLonA.Text  := FormatFloat('0.00000', FLocations[0].X);
        EditasnmA.Text := FormatFloat('0.00', FElevations[0] + StrToFloat(EditAlturaA.Text));
        EditLatB.Text  := FormatFloat('0.00000', FLocations[99].Y);
        EditLonB.Text  := FormatFloat('0.00000', FLocations[99].X);
        EditasnmB.Text := FormatFloat('0.00', FElevations[99] + StrToFloat(EditAlturaB.Text));

        // Habilita botón Actualizar
        SpeedButton3.Enabled := True;

        // Habilita TBs
        TBZoom.Enabled := True;
        TBAngle.Enabled := True;
        TBAzimut.Enabled := True;
        TBFoV.Enabled := True;

        // Habilita SBAntenaB
        SBAntenaB.Enabled := True;

      except
        LabelPath.Caption := '';
      end;
      SkPaintBox1.Redraw;
    except
      begin
        LabelPath.Caption := '';
        ShowMessage('No se pudo leer la información');
      end;
    end;
  end;
end;

procedure TFrmViabilidadPtMP.SpeedButton3Click(Sender: TObject);
begin
    if LabelPath.Caption <> '' then
  begin
    try
      LoadAndConvertJSON(LabelPath.Caption);
      LoadDataFromJSON(ConvertedJSON);
      try
        Mapa.ClearGraphics;
        Mapa.Clear;
        SetPoint(FLocations[0].Y, FLocations[0].X, '', clAqua);
        SetPoint(FLocations[99].Y, FLocations[99].X,'', clAqua);
        Line := Mapa.AddGeodesicLine(FLocations[0].Y, FLocations[0].X, FLocations[99].Y, FLocations[99].X);
        M := Mapa.addMarker(FLocations[TrackBar1.Position].Y, FLocations[TrackBar1.Position].X);

        Mapa.Shapes.Markers[1].FovRadius := Round(Mapa.Shapes.Markers[1].PixelDistanceTo(Mapa.Shapes.Markers[0]) * 2);

        TrackBar1.Position := 0;

        // LLena el grid de la pestaña tabla
        LlenaTabla;
        LabelPath.Caption := OpenTextFileDialog1.FileName;

        // Calcula el Azimut A->B y B->A
        EditAzimutA.Text := FormatFloat('0.00', CalcularAzimut(FLocations[0].Y, FLocations[0].X, FLocations[99].Y, FLocations[99].X));
        EditAzimutB.Text := FormatFloat('0.00', CalcularAzimut(FLocations[99].Y, FLocations[99].X, FLocations[0].Y, FLocations[0].X));

        // Calcula el Tilt A-> y B->A
        EditTiltA.Text := FormatFloat('0.00', CalcularTilt(FLocations[0].Y, FLocations[0].X, FElevations[0] + StrToFloat(EditAlturaA.Text), FLocations[99].Y, FLocations[99].X, FElevations[99] + StrToFloat(EditAlturaB.Text)));
        EditTiltB.Text := FormatFloat('0.00', CalcularTilt(FLocations[99].Y, FLocations[99].X, FElevations[99] + StrToFloat(EditAlturaB.Text), FLocations[0].Y, FLocations[0].X, FElevations[0] + StrToFloat(EditAlturaA.Text)));

        // Pone coordenadas 3D de A y B
        EditLatA.Text  := FormatFloat('0.00000', FLocations[0].Y);
        EditLonA.Text  := FormatFloat('0.00000', FLocations[0].X);
        EditasnmA.Text := FormatFloat('0.00', FElevations[0]);
        EditLatB.Text  := FormatFloat('0.00000', FLocations[99].Y);
        EditLonB.Text  := FormatFloat('0.00000', FLocations[99].X);
        EditasnmB.Text := FormatFloat('0.00', FElevations[99]);
      except
        // Nada
      end;
      SkPaintBox1.Redraw;
    except
      ShowMessage('No se pudo leer la información');
    end;
  end;
end;

procedure TFrmViabilidadPtMP.StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt;
  Rect: TRect; State: TGridDrawState);
var
  Val1, Val2, Val3: Double;
begin
  if ARow = StringGrid1.Row then
  begin
    StringGrid1.Canvas.Font.Color := clPurple; // Cambia este color según tus preferencias
    StringGrid1.Canvas.Font.Style := [fsBold];
    StringGrid1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, StringGrid1.Cells[ACol, ARow]);
  end
  else
  begin
    StringGrid1.DefaultDrawing := True; // Para las otras filas, usar el dibujo por defecto
  end;

  try
    Val1 := StringGrid1.Cells[4, ARow].ToDouble(); // a.s.n.m. + Acri
    Val2 := StringGrid1.Cells[7, ARow].ToDouble() - StringGrid1.Cells[6, ARow].ToDouble(); // Altura loS - 60% de la zona de fresnel
    Val3 := StringGrid1.Cells[7, ARow].ToDouble() - StringGrid1.Cells[5, ARow].ToDouble(); // Altura LoS - zona de fresnel

    if (ARow > 0) then
    begin
      if (Val1 >= Val3) and (Val1 <= Val2 ) then
      begin
        StringGrid1.Canvas.Brush.Color := clYellow;  // Cambiar a tu color preferido
      StringGrid1.Canvas.FillRect(Rect);
      StringGrid1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, StringGrid1.Cells[ACol, ARow]);
      end
      else if (Val1 > Val2) then
      begin
        StringGrid1.Canvas.Brush.Color := RGB(255, 168, 168);  // Cambiar a tu color preferido
        StringGrid1.Canvas.FillRect(Rect);
        StringGrid1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, StringGrid1.Cells[ACol, ARow]);
      end
      else
      begin
        StringGrid1.Canvas.Brush.Color := clWhite;  // Cambiar a tu color preferido
        StringGrid1.Canvas.FillRect(Rect);
        StringGrid1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, StringGrid1.Cells[ACol, ARow]);
      end;
    end;
  except
    // Nada
  end;
end;

procedure TFrmViabilidadPtMP.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: LongInt; var CanSelect: Boolean);
begin
  TrackBar1.Position := ARow-1;
end;

procedure TFrmViabilidadPtMP.TBAngleChange(Sender: TObject);
begin
  //
  Mapa.Shapes.Markers[1].Fov := TBAngle.Position;
  LabelFOV.Caption := 'Campo de visión: ' + TBAngle.Position.ToString + '°';
end;

procedure TFrmViabilidadPtMP.TBAzimutChange(Sender: TObject);
begin
  //
  Mapa.Shapes.Markers[1].FovAngle := 360-TBAzimut.Position;
  LabelAzi.Caption := 'Azimut: ' + TBAzimut.Position.ToString + '°';
end;

procedure TFrmViabilidadPtMP.TBFoVChange(Sender: TObject);
begin
  //
  // Obtener el nivel de zoom actual del mapa
  //ZoomLevel := Mapa.Zoom;
  // Ajustar FovRadius según el nivel de zoom
  // Aquí, FovBaseRadius es el radio base del campo de visión que deseas mantener constante
  //Mapa.Shapes.Markers[1].FovRadius := Round(TBFoV.Position / ZoomLevel);
  Mapa.Shapes.Markers[1].FovRadius := TBFoV.Position;
  //LabelPO.Caption := TBFoV.Position.ToString;
end;

procedure TFrmViabilidadPtMP.TBZoomChange(Sender: TObject);
begin
  Label14.Caption := TBZoom.Position.ToString;
  Mapa.Zoom := TBZoom.Position;
end;

procedure TFrmViabilidadPtMP.TrackBar1Change(Sender: TObject);
begin
  //LabelAlt.Caption := FElevations[TrackBar1.Position].ToString;
  {
  EditLngP.Text := FLocations[TrackBar1.Position].X.ToString;
  EditLatP.Text := FLocations[TrackBar1.Position].Y.ToString;
  }
  SkPaintBox1.Redraw;

  // Selecciona fila en el StringGrid1
  StringGrid1.Row := TrackBar1.Position+1;
  StringGrid1.Repaint;
end;

procedure TFrmViabilidadPtMP.LoadAndConvertJSON(const FileName: string);
var
  FileStream: TFileStream;
  StringStream: TStringStream;
  JSONStr: string;
begin
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    StringStream := TStringStream.Create;
    try
      StringStream.LoadFromStream(FileStream);
      JSONStr := StringStream.DataString;
    finally
      StringStream.Free;
    end;

    // Convierte el JSON
    ConvertedJSON := ConvertJSON(JSONStr);

  finally
    FileStream.Free;
  end;
end;

function TFrmViabilidadPtMP.ConvertJSON(const JSONStr: string): string;
var
  JSONObject: TJSONObject;
  JSONArray: TJSONArray;
  ResultArray: TJSONArray;
  JSONValue, LocationObj: TJSONValue;
  Elevation: Single;
  Latitude, Longitude: Double;
  NewObject: TJSONObject;
begin
  ResultArray := TJSONArray.Create;
  try
    JSONObject := TJSONObject.ParseJSONValue(JSONStr) as TJSONObject;
    try
      JSONArray := JSONObject.GetValue<TJSONArray>('results');
      if JSONArray = nil then
        raise Exception.Create('JSON does not contain "results" array');

      for var i := 0 to JSONArray.Count - 1 do
      begin
        JSONValue := JSONArray.Items[i];
        Elevation := JSONValue.GetValue<Double>('elevation');

        LocationObj := JSONValue.GetValue<TJSONObject>('location');
        Latitude := LocationObj.GetValue<Double>('lat');
        Longitude := LocationObj.GetValue<Double>('lng');

        NewObject := TJSONObject.Create;
        try
          NewObject.AddPair('elevation', TJSONNumber.Create(Elevation));
          NewObject.AddPair('location', TJSONObject.Create
            .AddPair('latitude', TJSONNumber.Create(Latitude))
            .AddPair('longitude', TJSONNumber.Create(Longitude))
          );

          ResultArray.AddElement(NewObject);
        except
          NewObject.Free;
          raise;
        end;
      end;

      Result := ResultArray.ToString;
    finally
      JSONObject.Free;
    end;
  finally
    ResultArray.Free;
  end;
end;

function TFrmViabilidadPtMP.CalcularTiltCompensado(
  LatA, LonA, AltA: Double;   // Coordenadas y altura de la antena A
  LatB, LonB, AltB: Double;   // Coordenadas y altura de la antena B
  TiltB: Double                // Tilt actual de la antena B en grados
): Double;
var
  R, DeltaAltura, Distancia: Double;
  TiltA: Double;
begin
  // Radio de la Tierra en kilómetros (aproximadamente)
  R := 6371.0;

  // Convertir grados a radianes
  LatA := DegToRad(LatA);
  LonA := DegToRad(LonA);
  LatB := DegToRad(LatB);
  LonB := DegToRad(LonB);

  // Calcular la distancia horizontal entre los puntos
  Distancia := ArcCos(Sin(LatA) * Sin(LatB) + Cos(LatA) * Cos(LatB) * Cos(LonB - LonA)) * R;

  // Diferencia de altura en metros (suponiendo que AltA y AltB están en metros)
  DeltaAltura := AltB - AltA;

  // Calcular el Tilt en radianes
  TiltA := ArcTan2(DeltaAltura, Distancia);

  // Convertir a grados
  TiltA := RadToDeg(TiltA);

  // Ajustar el tilt de A para compensar el tilt de B
  // Incluye el tilt de la antena B para obtener el tilt necesario en la antena A
  Result := TiltA - TiltB;
end;

function TFrmViabilidadPtMP.CalcularAzimutCompensado(
  LatA, LonA: Double;  // Latitud y longitud de la antena A
  LatB, LonB: Double;  // Latitud y longitud de la antena B
  AzimutB: Double      // Azimut actual de la antena B en grados
): Double;
var
  DeltaLon, X, Y, AzimutA: Double;
begin
  // Convertir grados a radianes
  LatA := DegToRad(LatA);
  LonA := DegToRad(LonA);
  LatB := DegToRad(LatB);
  LonB := DegToRad(LonB);

  // Calcular la diferencia de longitud
  DeltaLon := LonB - LonA;

  // Calcular los componentes X e Y
  Y := Sin(DeltaLon) * Cos(LatB);
  X := Cos(LatA) * Sin(LatB) - Sin(LatA) * Cos(LatB) * Cos(DeltaLon);

  // Calcular el Azimut en radianes
  AzimutA := ArcTan2(Y, X);

  // Convertir a grados y ajustar al rango 0-360°
  AzimutA := RadToDeg(AzimutA);
  if AzimutA < 0 then
    AzimutA := AzimutA + 360;

  // Ajustar el azimut de A para compensar el azimut de B
  Result := AzimutA - AzimutB;

  // Asegurarse de que el resultado esté en el rango de 0 a 360 grados
  if Result < 0 then
    Result := Result + 360;
  if Result >= 360 then
    Result := Result - 360;
end;

function TFrmViabilidadPtMP.CalcularAzimut(LatA, LonA, LatB, LonB: Double): Double;
var
  DeltaLon, X, Y, Azimut: Double;
begin
  // Convertir grados a radianes
  LatA := DegToRad(LatA);
  LonA := DegToRad(LonA);
  LatB := DegToRad(LatB);
  LonB := DegToRad(LonB);

  // Calcular la diferencia de longitud
  DeltaLon := LonB - LonA;

  // Calcular los componentes X e Y
  Y := Sin(DeltaLon) * Cos(LatB);
  X := Cos(LatA) * Sin(LatB) - Sin(LatA) * Cos(LatB) * Cos(DeltaLon);

  // Calcular el Azimut en radianes
  Azimut := ArcTan2(Y, X);

  // Convertir el azimut a grados y ajustarlo al rango 0-360°
  Azimut := RadToDeg(Azimut);
  if Azimut < 0 then
    Azimut := Azimut + 360;

  // Retornar el azimut en grados
  Result := Azimut;
end;

function TFrmViabilidadPtMP.CalcularTilt(LatA, LonA, AltA, LatB, LonB, AltB: Double): Double;
var
  R, DeltaLon, DeltaAltura, DistanciaHorizontal, Distancia3D, Tilt: Double;
begin
  // Radio de la Tierra en kilómetros (aproximadamente)
  R := 6371.0;

  // Convertir grados a radianes
  LatA := DegToRad(LatA);
  LonA := DegToRad(LonA);
  LatB := DegToRad(LatB);
  LonB := DegToRad(LonB);

  // Calcular la diferencia de latitud y longitud en radianes
  //DeltaLat := LatB - LatA;
  DeltaLon := LonB - LonA;

  // Calcular la distancia horizontal entre los dos puntos en kilómetros
  DistanciaHorizontal := ArcCos(Sin(LatA) * Sin(LatB) + Cos(LatA) * Cos(LatB) * Cos(DeltaLon)) * R * 1000;  // Convertir a metros

  // Calcular la diferencia de altura en metros
  DeltaAltura := AltB - AltA;

  // Calcular la distancia 3D entre los dos puntos
  Distancia3D := Sqrt(Sqr(DistanciaHorizontal) + Sqr(DeltaAltura));

  // Calcular el Tilt en radianes
  Tilt := ArcSin(DeltaAltura / Distancia3D);

  // Convertir el Tilt a grados
  Result := RadToDeg(Tilt);
end;

end.
