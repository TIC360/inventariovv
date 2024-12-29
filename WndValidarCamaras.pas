unit WndValidarCamaras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Phys.FBDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  Vcl.Buttons, Vcl.DBGrids, System.Skia, Vcl.Skia, Generics.Collections, IniFiles;

type
  TRowColorInfo = record
    Row: Integer;
    Color: TColor;
  end;
  TFrmValidarCamaras = class(TForm)
    Panel1: TPanel;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQueryCamaras: TFDQuery;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    FDQueryRegiones: TFDQuery;
    DSRegiones: TDataSource;
    FDQueryMunicipios: TFDQuery;
    DSMunicipios: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DSCamaras: TDataSource;
    SkSvg1: TSkSvg;
    SkSvg2: TSkSvg;
    SkSvg3: TSkSvg;
    DBText1: TDBText;
    FDQuerySave: TFDQuery;
    DSSave: TDataSource;
    DBText2: TDBText;
    Splitter1: TSplitter;
    Label2: TLabel;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SkSvg1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SkSvg2Click(Sender: TObject);
    procedure SkSvg3Click(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRowColors: TList<TRowColorInfo>;
    procedure ColorAndAdvanceRow(AColor: TColor);
    procedure SaveStatus(Status: Integer);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FrmValidarCamaras: TFrmValidarCamaras;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmValidarCamaras.SaveStatus(Status: Integer);
var
  Pmi, Camara, Nombre: String;
  DataSet: TDataSet;
begin
  DataSet := DBGrid1.DataSource.DataSet;
  if DataSet.Active and not DataSet.IsEmpty then
  begin
    Pmi    := DataSet.Fields[0].Value; // Pmi
    Nombre := DataSet.Fields[1].Value; // Nombre
    Camara := DataSet.Fields[6].Value; // Cámara
    FDQuerySave.SQL.Clear;
    FDQuerySave.SQL.Add('INSERT INTO estatus_camara (pmi, camara, estatus, nombre) VALUES (:pmi, :camara, :estatus, :nombre)');

    // Asignar valores a los parámetros
    FDQuerySave.ParamByName('pmi').AsString := Pmi;
    FDQuerySave.ParamByName('camara').AsString := Camara;
    FDQuerySave.ParamByName('estatus').AsInteger := Status;
    FDQuerySave.ParamByName('nombre').AsString := Nombre;

    try
      FDQuerySave.ExecSQL;
    except // No se pudo insertar el dato, entonces realizar actualización
      on E: Exception do
      begin
        FDQuerySave.SQL.Clear;
        FDQuerySave.SQL.Add('UPDATE estatus_camara set estatus = :estatus WHERE pmi = :pmi AND camara = :camara AND fecha = CURRENT_DATE');

        // Asignar valores a los parámetros
        FDQuerySave.ParamByName('pmi').AsString := Pmi;
        FDQuerySave.ParamByName('camara').AsString := Camara;
        FDQuerySave.ParamByName('estatus').AsInteger := Status;

        try
          FDQuerySave.ExecSQL;
        except // No se pudo insertar el dato, entonces realizar actualización
          on E: Exception do
            Application.MessageBox('Error, no se pudo insertar ni actualizar el estatus de la cámara.', 'Información', MB_ICONHAND + MB_OK);
        end;
      end;
    end;
  end
end;

constructor TFrmValidarCamaras.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRowColors := TList<TRowColorInfo>.Create;
end;

destructor TFrmValidarCamaras.Destroy;
begin
  FRowColors.Free;
  inherited Destroy;
end;

procedure TFrmValidarCamaras.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmValidarCamaras.DBLookupComboBox1Click(Sender: TObject);
begin
  if not (DSMunicipios.State in [dsInactive]) then
  begin
    try
      FDQueryMunicipios.Close;
      FDQueryMunicipios.Filter := 'REGION_ID = '+IntToStr(DBLookupComboBox1.KeyValue);
      FDQueryMunicipios.Filtered := True;
      FDQueryMunicipios.Open;
    except
      FDQueryMunicipios.Close;
      FDQueryMunicipios.Filtered := False;
      FDQueryMunicipios.Open;
    end;
  end;
end;

procedure TFrmValidarCamaras.DBLookupListBox1Click(Sender: TObject);
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
        case FDQueryCamaras.FieldByName('estatus').AsInteger of
          1: ColorAndAdvanceRow(clMoneyGreen); // Funciona
          2: ColorAndAdvanceRow(clYellow); // Intermitente
          3: ColorAndAdvanceRow(clWebSilver); // No funciona
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

procedure TFrmValidarCamaras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmValidarCamaras.FormCreate(Sender: TObject);
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
    FDQueryCamaras.Active := True;
    FDQueryMunicipios.Active := True;
    FDQueryRegiones.Active := True;

  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmValidarCamaras.SkSvg1Click(Sender: TObject);
begin
  SaveStatus(1); // Funciona
  ColorAndAdvanceRow(clMoneyGreen);
end;

procedure TFrmValidarCamaras.SkSvg2Click(Sender: TObject);
begin
  SaveStatus(2); // Intermitente
  ColorAndAdvanceRow(clYellow);
end;

procedure TFrmValidarCamaras.SkSvg3Click(Sender: TObject);
begin
  SaveStatus(3); // No funciona
  ColorAndAdvanceRow(clWebSilver);
end;

procedure TFrmValidarCamaras.ColorAndAdvanceRow(AColor: TColor);
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
