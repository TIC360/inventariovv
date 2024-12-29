unit WndNuevoPmiCamaras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls,
  Vcl.NumberBox, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Pmi, uecNativeMapControl, uecMapUtil, uecNativeShape,
  Vcl.WinXCtrls, IniFiles;

type
  TNuevoPmiCamaras = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    Mapa: TECNativeMap;
    SearchBox1: TSearchBox;
    LabelLng: TLabel;
    LabelLat: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    EditNombre: TEdit;
    Label4: TLabel;
    Azimut: TTrackBar;
    Button3: TButton;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AzimutChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FPadre: TDynamicPmi;
    mrkDirection : TECShapeMarker;
  public
    { Public declarations }
    property Padre: TDynamicPmi read FPadre write FPadre;
  end;

var
  NuevoPmiCamaras: TNuevoPmiCamaras;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TNuevoPmiCamaras.Button1Click(Sender: TObject);
var
  ColumnValue: Variant;
begin
  if EditNombre.Text <> '' then
    begin
      ColumnValue := DBGrid1.DataSource.DataSet.Fields[0].Value;
      FDQuery2.SQL.Clear;
      FDQuery2.SQL.Add('INSERT INTO pmi_camara (pmi, camara, nombre, azimut) VALUES (:pmi, :camara, :nombre, :azimut)');
      FDQuery2.ParamByName('pmi').AsString := Panel1.Caption;
      FDQuery2.ParamByName('camara').AsString := ColumnValue;
      FDQuery2.ParamByName('nombre').AsString := EditNombre.Text;
      FDQUery2.ParamByName('azimut').AsInteger := Azimut.Position;
      try
        FDQuery2.ExecSQL;
        Padre.CamarasByPmi.Close;
        Padre.CamarasByPmi.Open;
        Close;
      except
        on E: Exception do
          ShowMessage('Error al insertar datos: ' + E.Message);
      end;
    end
    else
    begin
      Application.MessageBox('Debe asignar un nombre a la cámara.', 'Información', MB_ICONEXCLAMATION + MB_OK);
      EditNombre.SetFocus;
    end;
end;

procedure TNuevoPmiCamaras.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TNuevoPmiCamaras.Button3Click(Sender: TObject);
var
  lat, lng : Double;
  IniFile: TIniFile;
  ConfigFilePath, vAPIKey: String;
begin
  Label4.Visible := True;
  Azimut.Visible := True;

  // Configura el TecNATIVEMap para usar Google Maps
  Mapa.Visible := False;
  ConfigFilePath := ExtractFilePath(ParamStr(0)) + 'config.ini';
  IniFile := TIniFile.Create(ConfigFilePath);
  try
    vAPIKey := IniFile.ReadString('settings', 'google_api_key', '');

    Mapa.Google.APiKey := vAPIKey;
    Mapa.TileServer := tsGoogle;
    Mapa.Google.Lang := 'es-MX';
    Mapa.Google.Region := 'MX';
    Mapa.TileServerInfo.MapStyle := 'roadmap';

    // Centrar el mapa a la posición del PMI
    lng := StrToFloat(LabelLng.caption);
    lat := StrToFloat(LabelLat.caption);
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

    mrkDirection := Mapa.addMarker(lat,lng);
    mrkDirection.StyleIcon := siDirection;
    mrkDirection.color := clLime;
    mrkDirection.angle := azimut.Position;
    Mapa.Active := True;
    Mapa.Visible := True;
  finally
    IniFile.Free;
  end;


end;

procedure TNuevoPmiCamaras.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  CamaraDireccional: Boolean;
begin
  CamaraDireccional := Pos('PTZ', DBGRid1.DataSource.DataSet.FieldByName('TIPO').AsString) = 0;
  if CamaraDireccional then
  begin
    Button3.Enabled := True;
  end
  else
  begin
    Mapa.Visible := False;
    Button3.Enabled := False;
    Label4.Visible := False;
    Azimut.Visible := False;
  end;
end;

procedure TNuevoPmiCamaras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Mapa.Free;
  Action := caFree;
end;

procedure TNuevoPmiCamaras.FormCreate(Sender: TObject);
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
    FDQuery2.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TNuevoPmiCamaras.SearchBox1InvokeSearch(Sender: TObject);
var
  FilterText : string;
  FilterIndex : integer;
begin
  FilterText := SearchBox1.Text;
  if FilterText <> '' then
    begin
      FilterIndex := ComboBox1.ItemIndex;
      Case FilterIndex of
        0:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND ( UPPER(a.serie) LIKE :FilterText OR UPPER(a.folio) LIKE :FilterText OR UPPER(a.articulo) LIKE :FilterText OR UPPER(b.nombre) LIKE :FilterText OR UPPER(b.descripcion) LIKE :FilterText OR UPPER(c.nombre) LIKE :FilterText OR UPPER(d.nombre) LIKE :FilterText OR UPPER(e.nombre) LIKE :FilterText or UPPER(f.nombre) LIKE :FilterText)'
        end;
        1:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.serie) LIKE :FilterText'
        end;
        2:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.folio) LIKE :FilterText'
        end;
        3:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.articulo) LIKE :FilterText'
        end;
        4:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.nombre) LIKE :FilterText'
        end;
        5:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.descripcion) LIKE :FilterText'
        end;
        6:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(c.nombre) LIKE :FilterText'
        end;
        7:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(d.nombre) LIKE :FilterText'
        end;
        8:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(e.nombre) LIKE :FilterText'
        end;
        9:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(f.nombre) LIKE :FilterText'
        end;
      End;
    end
  else
    begin
      FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM camara a, camara_modelo b, camara_marca c, camara_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND a.serie=NULL';
    end;


  if FilterText <> '' then
    FDQuery1.ParamByName('FilterText').AsString := '%' + UpperCase(FilterText) + '%';

  FDQuery1.Close;
  FDQuery1.Open;
end;

procedure TNuevoPmiCamaras.AzimutChange(Sender: TObject);
begin
  mrkDirection.angle := Azimut.Position;
end;

end.
