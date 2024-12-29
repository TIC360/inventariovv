unit WndTopologia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, FireDAC.Phys.FBDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  uecNativeMapControl, Vcl.Grids, Vcl.DBGrids, uecMapUtil, uecNativeShape,
  Vcl.Menus;

type
  TFrmTopologia = class(TForm)
    SBDestino: TSearchBox;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQueryPuntoB: TFDQuery;
    DSPuntoB: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    FDQueryTopologia: TFDQuery;
    DSTopologia: TDataSource;
    PopupMenu1: TPopupMenu;
    PopupMenuAgregar: TMenuItem;
    DBGrid2: TDBGrid;
    FDQuerySectorial: TFDQuery;
    DSSectorial: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    Lat: TDBText;
    Lng: TDBText;
    PopupMenu2: TPopupMenu;
    Desconectarradioenlace1: TMenuItem;
    Desconectarradioenlace2: TMenuItem;
    Actualizar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonCerrarClick(Sender: TObject);
    procedure SBDestinoInvokeSearch(Sender: TObject);
    procedure ButtonAgregarOrigenClick(Sender: TObject);
    procedure PopupMenuAgregarClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ActionRefrescarClick(Sender: TObject);
    procedure Desconectarradioenlace1Click(Sender: TObject);
    procedure Desconectarradioenlace2Click(Sender: TObject);
    procedure Actualizar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTopologia: TFrmTopologia;

implementation

{$R *.dfm}

uses WndAgregaDestino, GlobalVars;

procedure TFrmTopologia.ActionRefrescarClick(Sender: TObject);
begin
  FDQueryTopologia.Refresh;
end;

procedure TFrmTopologia.Actualizar1Click(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Refresh;
end;

procedure TFrmTopologia.ButtonAgregarOrigenClick(Sender: TObject);
var
  wnd: TFrmAgregaDestino;
begin
  wnd := TFrmAgregaDestino.Create(Self);
  wnd.Padre := Self;
  wnd.ShowModal;
end;

procedure TFrmTopologia.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTopologia.DBGrid2CellClick(Column: TColumn);
var
  Destino, DestinoAntena: String;
begin
  if not (DSTopologia.State in [dsInactive]) then
  begin
    try
      Destino := SBDestino.Text;
      DestinoAntena :=  DSSectorial.DataSet.FieldByName('RADIO').AsString;
      FDQueryTopologia.Close;
      FDQueryTopologia.ParamByName('DESTINO').AsString := Destino;
      FDQueryTopologia.ParamByName('DESTINOANTENA').AsString := DestinoAntena;
      FDQueryTopologia.Open;
    except
      FDQueryTopologia.Close;
    end;
  end;
end;

procedure TFrmTopologia.Desconectarradioenlace1Click(Sender: TObject);
var
  Mensaje: PWideChar;
  Antena: String;
  Respuesta, id: Integer;
begin
  Antena := DBGrid1.DataSource.DataSet.FieldByName('ORIGENANTENA').AsString;
  Mensaje := PWideChar('¿Está seguro que desea desconectar:  ' + Antena + '?');
  Respuesta := Application.MessageBox(Mensaje, 'i2V', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.Close;
    try
      id := DBGrid1.DataSource.DataSet.FieldByName('ID').AsInteger;
      FDQuery1.SQL.Text := 'DELETE FROM topologia WHERE ID = :ID';
      FDQuery1.Params.ParamByName('ID').AsInteger := id;
      FDQuery1.ExecSQL;
      DBGrid1.DataSource.DataSet.Refresh;
    finally
      FDQuery1.Close;
    end;
  end;
end;

procedure TFrmTopologia.Desconectarradioenlace2Click(Sender: TObject);
begin
  // Actualizar DBGrid1
  DBGrid1.DataSource.DataSet.Refresh;
end;

procedure TFrmTopologia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTopologia.FormCreate(Sender: TObject);
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
    FDQueryPuntoB.Active := True;
    FDQuerySectorial.Active := True;
    FDQueryTopologia.Active := True;
  except
    on E: Exception do
      ShowMessage('Error al conectar: ' + E.Message);
  end;
end;

procedure TFrmTopologia.PopupMenuAgregarClick(Sender: TObject);
var
  wnd: TFrmAgregaDestino;
begin
  wnd := TFrmAgregaDestino.Create(Self);
  wnd.Lat2.Caption := Lat.Caption;
  wnd.Lng2.Caption := Lng.Caption;
  wnd.LabelDestino.Caption := SBDestino.Text;
  wnd.LabelRadioDestino.Caption := DBGrid2.DataSource.DataSet.FieldByName('RADIO').AsString;
  wnd.LabelNodoB.Caption := DBGrid2.DataSource.DataSet.FieldByName('NOMBRE').AsString;
  wnd.ShowModal;
end;

procedure TFrmTopologia.SBDestinoInvokeSearch(Sender: TObject);
var
  PuntoB: String;
begin
  if not (DSPuntoB.State in [dsInactive]) then
  begin
    try
      PuntoB := SBDestino.Text;
      FDQueryPuntoB.Close;
      FDQueryPuntoB.ParamByName('PMI').AsString := PuntoB;
      FDQueryPuntoB.Open;

      FDQuerySectorial.Close;
      FDQuerySectorial.ParamByName('PMI').AsString := PuntoB;
      FDQuerySectorial.Open;
    except
      FDQuerySectorial.Close;
      FDQueryPuntoB.Close;
    end;
  end;
end;

end.
