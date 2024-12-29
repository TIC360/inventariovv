unit WndNuevoPmiPostes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet,
  Vcl.NumberBox, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Pmi, Vcl.WinXCtrls, IniFiles;

type
  TNuevoPmiPostes = class(TForm)
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
    GroupBox1: TGroupBox;
    SearchBox1: TSearchBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  NuevoPmiPostes: TNuevoPmiPostes;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TNuevoPmiPostes.Button1Click(Sender: TObject);
var
  ColumnValue: Variant;
  DataSet: TDataSet;
begin
  DataSet := DBGrid1.DataSource.DataSet;
  if DataSet.Active and not DataSet.IsEmpty then
  begin
    ColumnValue := DBGrid1.DataSource.DataSet.Fields[0].Value;

    FDQuery2.SQL.Clear;
    FDQuery2.SQL.Add('INSERT INTO pmi_poste (pmi, poste) VALUES (:pmi, :pos)');

    // Asignar valores a los parámetros
    FDQuery2.ParamByName('pmi').AsString := Panel1.Caption;
    FDQuery2.ParamByName('pos').AsString := ColumnValue;

    try
      FDQuery2.ExecSQL;
      Padre.PostesByPmi.Close;
      Padre.PostesByPmi.Open;
      Close;
    except
      on E: Exception do
        Application.MessageBox('Error al insertar datos', 'Información', MB_ICONHAND + MB_OK);
    end;
  end
end;

procedure TNuevoPmiPostes.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TNuevoPmiPostes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNuevoPmiPostes.FormCreate(Sender: TObject);
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
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TNuevoPmiPostes.SearchBox1InvokeSearch(Sender: TObject);
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
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND ( UPPER(a.serie) LIKE :FilterText OR UPPER(a.folio) LIKE :FilterText OR UPPER(a.articulo) LIKE :FilterText OR UPPER(b.nombre) LIKE :FilterText OR UPPER(b.descripcion) LIKE :FilterText OR UPPER(d.nombre) LIKE :FilterText OR UPPER(e.nombre) LIKE :FilterText or UPPER(f.nombre) LIKE :FilterText)'
        end;
        1:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(a.serie) LIKE :FilterText'
        end;
        2:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(a.folio) LIKE :FilterText'
        end;
        3:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(a.articulo) LIKE :FilterText'
        end;
        4:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(b.nombre) LIKE :FilterText'
        end;
        5:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(b.descripcion) LIKE :FilterText'
        end;
        6:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(d.nombre) LIKE :FilterText'
        end;
        7:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(e.nombre) LIKE :FilterText'
        end;
        8:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND UPPER(f.nombre) LIKE :FilterText'
        end;
      End;
    end
  else
    begin
      FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM poste a, poste_modelo b, poste_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.tipo_id = d.id AND a.serie=NULL';
    end;


  if FilterText <> '' then
    FDQuery1.ParamByName('FilterText').AsString := '%' + UpperCase(FilterText) + '%';

  FDQuery1.Close;
  FDQuery1.Open;
end;

end.
