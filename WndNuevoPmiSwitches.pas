unit WndNuevoPmiSwitches;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pmi, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Data.DB, Vcl.ExtCtrls, Vcl.NumberBox, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.WinXCtrls, IniFiles;

type
  TNuevoPmiSwitches = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
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
    GroupBox1: TGroupBox;
    SearchBox1: TSearchBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  NuevoPmiSwitches: TNuevoPmiSwitches;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TNuevoPmiSwitches.Button1Click(Sender: TObject);
var
  ColumnValue: Variant;
  DataSet: TDataSet;
begin
  DataSet := DBGrid1.DataSource.DataSet;
  if DataSet.Active and not DataSet.IsEmpty then
  begin
    ColumnValue := DataSet.Fields[0].Value;

    FDQuery2.SQL.Clear;
    FDQuery2.SQL.Add('INSERT INTO pmi_switch (pmi, switch) VALUES (:pmi, :switch)');

    // Asignar valores a los parámetros
    FDQuery2.ParamByName('pmi').AsString := Panel1.Caption;
    FDQuery2.ParamByName('switch').AsString := ColumnValue;

    try
      FDQuery2.ExecSQL;
      Padre.SwitchesByPmi.Close;
      Padre.SwitchesByPmi.Open;
      Close;
    except
      on E: Exception do
        Application.MessageBox('Error al insertar datos.', 'Información', MB_ICONHAND + MB_OK);
    end;
  end
end;

procedure TNuevoPmiSwitches.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TNuevoPmiSwitches.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNuevoPmiSwitches.FormCreate(Sender: TObject);
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

procedure TNuevoPmiSwitches.SearchBox1InvokeSearch(Sender: TObject);
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
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND ( UPPER(a.serie) LIKE :FilterText OR UPPER(a.folio) LIKE :FilterText OR UPPER(a.articulo) LIKE :FilterText OR UPPER(b.nombre) LIKE :FilterText OR UPPER(b.descripcion) LIKE :FilterText OR UPPER(c.nombre) LIKE :FilterText OR UPPER(d.nombre) LIKE :FilterText OR UPPER(e.nombre) LIKE :FilterText or UPPER(f.nombre) LIKE :FilterText)'
        end;
        1:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.serie) LIKE :FilterText'
        end;
        2:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.folio) LIKE :FilterText'
        end;
        3:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(a.articulo) LIKE :FilterText'
        end;
        4:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.nombre) LIKE :FilterText'
        end;
        5:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(b.descripcion) LIKE :FilterText'
        end;
        6:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(c.nombre) LIKE :FilterText'
        end;
        7:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(d.nombre) LIKE :FilterText'
        end;
        8:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(e.nombre) LIKE :FilterText'
        end;
        9:
        begin
          FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND UPPER(f.nombre) LIKE :FilterText'
        end;
      End;
    end
  else
    begin
      FDQuery1.SQL.Text := 'SELECT a.serie, a.folio, a.articulo, a.modelo_id, a.color_id, a.proveedor_id, b.nombre as modelo, b.descripcion, c.nombre as marca, d.nombre as tipo, e.nombre as color, f.nombre as proveedor FROM switch a, switch_modelo b, switch_marca c, switch_tipo d, colores e, proveedores f WHERE a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f.id AND b.marca_id = c.id AND b.tipo_id = d.id AND a.serie=NULL';
    end;


  if FilterText <> '' then
    FDQuery1.ParamByName('FilterText').AsString := '%' + UpperCase(FilterText) + '%';

  FDQuery1.Close;
  FDQuery1.Open;
end;

end.
