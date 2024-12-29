unit WndNuevoPmiRadios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, Vcl.NumberBox, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Pmi, Vcl.WinXCtrls, IniFiles;

type
  TNuevoPmiRadios = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    GroupBox1: TGroupBox;
    SearchBox1: TSearchBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EditAzimut: TEdit;
    EditTilt: TEdit;
    EditFoV: TEdit;
    EditBW: TEdit;
    EditAltura: TEdit;
    EditFrecuencia: TEdit;
    EditGanancia: TEdit;
    EditPotencia: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPadre: TDynamicPmi;
  public
    { Public declarations }
    property Padre: TDynamicPmi read FPadre write FPadre;
  end;

var
  NuevoPmiRadios: TNuevoPmiRadios;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TNuevoPmiRadios.Button1Click(Sender: TObject);
var
  ColumnValue: Variant;
  DataSet: TDataSet;
begin
  DataSet := DBGrid1.DataSource.DataSet;
  if DataSet.Active and not DataSet.IsEmpty then
  begin
    ColumnValue := DataSet.Fields[0].Value;

    FDQuery2.SQL.Clear;
    FDQuery2.SQL.Add('INSERT INTO pmi_radio (pmi, radio, azimut, tilt, fov, bw, altura, frecuencia, ganancia, potencia) VALUES(:pmi, :radio, :azimut, :tilt, :fov, :bw, :altura, :frecuencia, :ganancia, :potencia)');

    // Asignar valores a los parámetros
    FDQuery2.ParamByName('pmi').AsString := Panel1.Caption;
    FDQuery2.ParamByName('radio').AsString := ColumnValue;
    FDQuery2.ParamByName('azimut').AsString := EditAzimut.Text;
    FDQuery2.ParamByName('tilt').AsString := EditTilt.Text;
    FDQuery2.ParamByName('fov').AsString := EditFoV.Text;
    FDQuery2.ParamByName('bw').AsString := EditBW.Text;
    FDQuery2.ParamByName('altura').AsString := EditAltura.Text;
    FDQuery2.ParamByName('frecuencia').AsString := EditFrecuencia.Text;
    FDQuery2.ParamByName('ganancia').AsString := EditGanancia.Text;
    FDQuery2.ParamByName('potencia').AsString := EditPotencia.Text;

    try
      FDQuery2.ExecSQL;
      Padre.RadiosByPmi.Close;
      Padre.RadiosByPmi.Open;
      Close;
    except
      on E: Exception do
        Application.MessageBox('Error al insertar datos.', 'Información', MB_ICONHAND + MB_OK);
    end;
  end
end;

procedure TNuevoPmiRadios.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TNuevoPmiRadios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNuevoPmiRadios.FormCreate(Sender: TObject);
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

procedure TNuevoPmiRadios.SearchBox1InvokeSearch(Sender: TObject);
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
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND ( UPPER(a.serie) LIKE :FilterText OR UPPER(a.folio) LIKE :FilterText OR UPPER(a.articulo) LIKE :FilterText OR UPPER(b.nombre) LIKE :FilterText OR UPPER(b.descripcion) LIKE :FilterText OR UPPER(c.nombre) LIKE :FilterText OR UPPER(d.nombre) LIKE :FilterText OR UPPER(e.nombre) LIKE :FilterText or UPPER(f.nombre) LIKE :FilterText)'
        end;
        1:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.serie) LIKE :FilterText'
        end;
        2:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.folio) LIKE :FilterText'
        end;
        3:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.articulo) LIKE :FilterText'
        end;
        4:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.nombre) LIKE :FilterText'
        end;
        5:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.descripcion) LIKE :FilterText'
        end;
        6:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(c.nombre) LIKE :FilterText'
        end;
        7:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(d.nombre) LIKE :FilterText'
        end;
        8:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(e.nombre) LIKE :FilterText'
        end;
        9:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(f.nombre) LIKE :FilterText'
        end;
      End;
    end
  else
    begin
      FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND a.serie=NULL';
    end;


  if FilterText <> '' then
    FDQuery1.ParamByName('FilterText').AsString := '%' + UpperCase(FilterText) + '%';

  FDQuery1.Close;
  FDQuery1.Open;
end;

end.
