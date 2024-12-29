unit WndEditarCamara;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  uecNativeMapControl, Vcl.ExtCtrls, uecMapUtil, uecNativeShape,
  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, Pmi;

type
  TFrmEditarCamara = class(TForm)
    Mapa: TECNativeMap;
    Button2: TButton;
    ButtonActualizar: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditNombre: TEdit;
    Azimut: TTrackBar;
    Button3: TButton;
    Panel1: TPanel;
    LabelLng: TLabel;
    LabelLat: TLabel;
    LabelAzimut: TLabel;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    LabelCamara: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure AzimutChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonActualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    mrkDirection : TECShapeMarker;
    FPadre: TDynamicPmi;
  public
    { Public declarations }
    property Padre: TDynamicPmi read FPadre write FPadre;
  end;

var
  FrmEditarCamara: TFrmEditarCamara;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmEditarCamara.AzimutChange(Sender: TObject);
begin
  mrkDirection.angle := Azimut.Position;
end;

procedure TFrmEditarCamara.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEditarCamara.Button3Click(Sender: TObject);
var
  lat, lng : Double;
  cad: string;
  sl: TStringList;
begin
  Mapa.Dark := True;
  LabelAzimut.Visible := False;
  Azimut.Visible := True;
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

  sl := TStringList.Create;
  cad := LabelAzimut.Caption;
  try
    sl.Delimiter := ' ';
    sl.DelimitedText := cad;
    if sl.Count > 0 then
      azimut.Position := StrToInt(sl[0]);
      mrkDirection.angle := azimut.Position;
      Button3.Enabled := False;
  finally
    sl.Free;
  end;

  Mapa.Visible := True;
end;


procedure TFrmEditarCamara.ButtonActualizarClick(Sender: TObject);
var
  NombreCamara: String;
  AzimutVal: Integer;
begin
  NombreCamara := EditNombre.Text;
  AzimutVal := Azimut.Position;

  if NombreCamara <> '' then
    begin
      FDQuery1.SQL.Clear;
      if Azimut.Visible = True then
      begin
        FDQuery1.SQL.Add('UPDATE pmi_camara SET NOMBRE = :nombre, AZIMUT = :azimut WHERE PMI = :pmi AND CAMARA = :camara');
        FDQuery1.ParamByName('pmi').AsString := Panel1.Caption;
        FDQuery1.ParamByName('camara').AsString := LabelCamara.Caption;
        FDQuery1.ParamByName('azimut').AsInteger :=  AzimutVal;
        FDQUery1.ParamByName('nombre').AsString := EditNombre.Text;
      end
      else
      begin
        FDQuery1.SQL.Add('UPDATE pmi_camara SET NOMBRE = :nombre WHERE PMI = :pmi AND CAMARA = :camara');
        FDQuery1.ParamByName('pmi').AsString := Panel1.Caption;
        FDQuery1.ParamByName('camara').AsString := LabelCamara.Caption;
        FDQUery1.ParamByName('nombre').AsString := EditNombre.Text;
      end;

      try
        FDQuery1.ExecSQL;
        Padre.CamarasByPmi.Refresh;
        Close;
      except
        on E: Exception do
          //ShowMessage('Error al actualizar los datos: ' + E.Message);
          Application.MessageBox('Error al actualizar los datos.', 'Error', MB_ICONHAND);
      end;
    end
    else
    begin
      Application.MessageBox('Debe asignar un nombre a la cámara.', 'Error', MB_ICONHAND);
      EditNombre.SetFocus;
    end;
end;

procedure TFrmEditarCamara.FormCreate(Sender: TObject);
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
      //ShowMessage('Error al conectar: ' + E.Message);
      Application.MessageBox('Error al conectar a la base de datos', 'Error', MB_ICONHAND);
  end;
end;

end.
