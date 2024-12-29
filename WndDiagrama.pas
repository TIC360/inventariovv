unit WndDiagrama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.Net.HTTPClient, System.JSON, System.Net.URLClient,
  System.Net.HttpClientComponent, System.Generics.Collections,
  Vcl.WinXCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TNode = record
    X, Y: Integer;  // Posición del nodo
    Etiqueta: string;  // Etiqueta del nodo
    class function Create(AX, AY: Integer; ALabel: string): TNode; static;
  end;

  TEdge = record
    FromNode, ToNode: Integer;  // Índices de los nodos conectados por la arista
    class function Create(AFromNode, AToNode: Integer): TEdge; static;
  end;

  TFrmDiagrama = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    NetHTTPClient1: TNetHTTPClient;
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Nodes: array of TNode;
    Edges: array of TEdge;
    procedure DrawGraph;
    procedure GetDistance(Lat1, Lon1, Lat2, Lon2: Double);
  public
    { Public declarations }
  end;

var
  FrmDiagrama: TFrmDiagrama;

implementation

{$R *.dfm}

procedure TFrmDiagrama.GetDistance(Lat1, Lon1, Lat2, Lon2: Double);
var
  HttpClient: TNetHTTPClient;
  Response: IHTTPResponse;
  JSONResponse, Routes, Legs, DistanceObj, TiempoObj: TJSONObject;
  Distance: String;
  Tiempo: String;
begin
  HttpClient := TNetHTTPClient.Create(nil);
  try
    Response := HttpClient.Get(Format(
      'https://maps.googleapis.com/maps/api/directions/json?origin=%f,%f&destination=%f,%f&key=AIzaSyA0kg1eaMhGB5O4mQPyA_nvSZ-xBDiBLgk',
      [Lat1, Lon1, Lat2, Lon2]));

    if Response.StatusCode = 200 then
    begin
      JSONResponse := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONObject;
      try
        Routes := JSONResponse.GetValue<TJSONArray>('routes').Items[0] as TJSONObject;
        Legs := Routes.GetValue<TJSONArray>('legs').Items[0] as TJSONObject;
        DistanceObj := Legs.GetValue<TJSONObject>('distance');
        Distance := DistanceObj.GetValue('text').ToString;
        TiempoObj := Legs.GetValue<TJSONObject>('duration');
        Tiempo := TiempoObj.GetValue('text').ToString;
        ShowMessage('La distancia es: ' + Distance + ', tiempo: ' + Tiempo);
      finally
        JSONResponse.Free;
      end;
    end
    else
      ShowMessage('Error al obtener los datos de la API: '+Response.StatusCode.ToString);
  finally
    HttpClient.Free;
  end;
end;



class function TNode.Create(AX, AY: Integer; ALabel: string): TNode;
begin
  Result.X := AX;
  Result.Y := AY;
  Result.Etiqueta := ALabel;
end;

class function TEdge.Create(AFromNode, AToNode: Integer): TEdge;
begin
  Result.FromNode := AFromNode;
  Result.ToNode := AToNode;
end;

procedure TFrmDiagrama.FormCreate(Sender: TObject);
begin
  SetLength(Nodes, 4);
  Nodes[0] := TNode.Create(100, 100, 'A');
  Nodes[1] := TNode.Create(200, 100, 'B');
  Nodes[2] := TNode.Create(200, 200, 'C');
  Nodes[3] := TNode.Create(100, 200, 'D');

  SetLength(Edges, 4);
  Edges[0] := TEdge.Create(0, 1);
  Edges[1] := TEdge.Create(1, 2);
  Edges[2] := TEdge.Create(2, 3);
  Edges[3] := TEdge.Create(3, 0);

  PaintBox1.Invalidate;
end;

procedure TFrmDiagrama.PaintBox1Paint(Sender: TObject);
begin
  DrawGraph;
end;

procedure TFrmDiagrama.Button1Click(Sender: TObject);
begin
  GetDistance(19.450106834287364, -96.96640806890318, 19.46429814780588, -96.95783377586048);
end;

procedure TFrmDiagrama.DrawGraph;
var
  I: Integer;
  NodeRadius: Integer;
begin
  NodeRadius := 15;

  PaintBox1.Canvas.Pen.Color := clBlack;
  PaintBox1.Canvas.Pen.Width := 2;
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.Brush.Style := bsSolid;

  // Dibujar aristas
  for I := 0 to Length(Edges) - 1 do
  begin
    PaintBox1.Canvas.MoveTo(Nodes[Edges[I].FromNode].X, Nodes[Edges[I].FromNode].Y);
    PaintBox1.Canvas.LineTo(Nodes[Edges[I].ToNode].X, Nodes[Edges[I].ToNode].Y);
  end;

  // Dibujar nodos
  for I := 0 to Length(Nodes) - 1 do
  begin
    PaintBox1.Canvas.Ellipse(
      Nodes[I].X - NodeRadius, Nodes[I].Y - NodeRadius,
      Nodes[I].X + NodeRadius, Nodes[I].Y + NodeRadius
    );
    PaintBox1.Canvas.TextOut(Nodes[I].X - 10, Nodes[I].Y - 10, Nodes[I].Etiqueta);
  end;
end;

end.
