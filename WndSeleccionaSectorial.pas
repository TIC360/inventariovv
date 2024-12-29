unit WndSeleccionaSectorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, WndViabilidadPtMP;

type
  TFrmSeleccionaSectorial = class(TForm)
    SBNodo: TSearchBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SBNodoInvokeSearch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPadre: TFrmViabilidadPtMP;
  public
    { Public declarations }
    property Padre: TFrmViabilidadPtMP read FPadre write FPadre;
  end;

var
  FrmSeleccionaSectorial: TFrmSeleccionaSectorial;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmSeleccionaSectorial.Button1Click(Sender: TObject);
var
  AlturaB, AzimutB, TiltB: double;
  FoV: Integer;
begin
  if not DBGrid1.DataSource.DataSet.IsEmpty then
  begin
    try
      AlturaB := DBGrid1.DataSource.DataSet.FieldByName('altura').AsFloat;
      AzimutB := DBGrid1.DataSource.DataSet.FieldByName('azimut').AsFloat;
      TiltB   := DBGrid1.DataSource.DataSet.FieldByName('tilt').AsFloat;
      FoV     := DBGrid1.DataSource.DataSet.FieldByName('fov').AsInteger;

      Padre.EditAlturaB.Text := FormatFloat('0.00', AlturaB);
      Padre.EditAzimutB.Text := FormatFloat('0.00', AzimutB);
      Padre.EditTiltB.Text   := FormatFloat('0.00', TiltB);
      Padre.EditFoV.Text     := FormatFloat('0', Fov);

      Padre.TBAzimut.Position:= Round(AzimutB);
      Padre.TBAngle.Position := FoV;

      // Habilita botón SBAntena
      Padre.SBAntena.Enabled := True;

    except
      on E: Exception do
      begin
        ShowMessage('Error al leer los valores: ' + E.Message);
        Exit;
      end;
    end;
  end;
  Close;
end;

procedure TFrmSeleccionaSectorial.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSeleccionaSectorial.FormCreate(Sender: TObject);
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
  except
    on E: Exception do
      ShowMessage('Error al conectar: ' + E.Message);
  end;
end;

procedure TFrmSeleccionaSectorial.SBNodoInvokeSearch(Sender: TObject);
var
  NodoB: String;
begin
  if not (DataSource1.State in [dsInactive]) then
  begin
    try
      NodoB := SBNodo.Text;
      FDQuery1.Close;
      FDQuery1.ParamByName('NODO').AsString := NodoB;
      FDQuery1.Open;
    except
      FDQuery1.Close;
    end;
  end;
end;

end.
