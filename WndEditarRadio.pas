unit WndEditarRadio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.FBDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase, Vcl.ExtCtrls,
  Vcl.StdCtrls, Pmi, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFrmEditarRadio = class(TForm)
    Panel1: TPanel;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditAzimut: TEdit;
    EditTilt: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelMarca: TLabel;
    LabelModelo: TLabel;
    LabelSerie: TLabel;
    LabelFolio: TLabel;
    FDQuery1: TFDQuery;
    Label7: TLabel;
    EditFoV: TEdit;
    EditBW: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditAltura: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EditFrecuencia: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    EditGanancia: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    EditPotencia: TEdit;
    Label20: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPadre: TDynamicPmi;
  public
    { Public declarations }
    property Padre: TDynamicPmi read FPadre write FPadre;
  end;

var
  FrmEditarRadio: TFrmEditarRadio;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmEditarRadio.Button1Click(Sender: TObject);
var
  azimut, tilt, pmi, fov, bw, altura, frecuencia, ganancia, potencia: String;
begin
  azimut     := EditAzimut.Text;
  tilt       := EditTilt.Text;
  fov        := EditFoV.Text;
  bw         := EditBW.Text;
  altura     := EditAltura.Text;
  frecuencia := EditFrecuencia.Text;
  ganancia   := EditGanancia.Text;
  potencia   := EditPotencia.Text;
  pmi        := Panel1.Caption;

  FDQuery1.SQL.Clear;

  FDQuery1.SQL.Add('UPDATE pmi_radio SET AZIMUT = :azimut, TILT = :tilt, FOV = :fov, BW = :bw, ALTURA = :altura, FRECUENCIA = :frecuencia, GANANCIA = :ganancia, POTENCIA = :potencia WHERE PMI = :pmi AND RADIO = :radio');
  FDQuery1.ParamByName('azimut').AsString := azimut;
  FDQuery1.ParamByName('tilt').AsString := tilt;
  FDQuery1.ParamByName('fov').AsString := fov;
  FDQuery1.ParamByName('bw').AsString := bw;
  FDQuery1.ParamByName('altura').AsString := altura;
  FDQuery1.ParamByName('frecuencia').AsString := frecuencia;
  FDQuery1.ParamByName('ganancia').AsString := ganancia;
  FDQuery1.ParamByName('potencia').AsString := potencia;
  FDQuery1.ParamByName('pmi').AsString :=  pmi;
  FDQUery1.ParamByName('radio').AsString := LabelSerie.Caption;

  try
    FDQuery1.ExecSQL;
    Padre.RadiosByPmi.Refresh;
    Close;
  except
    on E: Exception do
      Application.MessageBox('Error al actualizar los datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmEditarRadio.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEditarRadio.FormCreate(Sender: TObject);
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
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

end.
