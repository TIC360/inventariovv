unit WndEditarMiscelaneo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.NumberBox,
  Vcl.ExtCtrls, Pmi, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase;

type
  TFrmEditarMiscelaneo = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    NumberBox1: TNumberBox;
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
    Panel1: TPanel;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    LabelId: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPadre: TDynamicPmi;
  public
    { Public declarations }
    property Padre: TDynamicPmi read FPadre write FPadre;
  end;

var
  FrmEditarMiscelaneo: TFrmEditarMiscelaneo;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmEditarMiscelaneo.Button1Click(Sender: TObject);
var
  DataSet: TDataSet;
begin
  DataSet := Padre.DBGrid6.DataSource.DataSet;

  if DataSet.Active and not DataSet.IsEmpty then
  begin
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('UPDATE pmi_miscelaneo set cantidad = :cantidad WHERE pmi = :pmi AND miscelaneo = :miscelaneo');

    // Asignar valores a los parámetros
    FDQuery1.ParamByName('pmi').AsString := Panel1.Caption;
    FDQuery1.ParamByName('miscelaneo').AsString := LabelId.Caption;
    FDQuery1.ParamByName('cantidad').AsInteger := StrToInt(NumberBox1.Value.ToString);

    try
      FDQuery1.ExecSQL;
      Padre.MiscelaneosByPmi.Refresh;
      Close;
    except
      on E: Exception do
        Application.MessageBox('Error al insertar datos.', 'Información', MB_ICONHAND + MB_OK);
    end;
  end;
end;

procedure TFrmEditarMiscelaneo.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEditarMiscelaneo.FormCreate(Sender: TObject);
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
