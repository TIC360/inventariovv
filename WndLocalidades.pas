unit WndLocalidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses,
  uecNativeMapControl, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.UI.Intf, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.WinXCtrls;

type
  TFrmLocalidades = class(TForm)
    Panel4: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DBMemo1: TDBMemo;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQueryLocalidades: TFDQuery;
    DSLocalidades: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
    FDTableMunicipios: TFDTable;
    DSMunicipio: TDataSource;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocalidades: TFrmLocalidades;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmLocalidades.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        Application.MessageBox('Localidad borrada exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar la localidad.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error 1: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmLocalidades.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
    begin
      DBEdit1.SetFocus;
    end;
    nbEdit:
    begin
      DBEdit1.SetFocus;
    end;
  End;
end;

procedure TFrmLocalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLocalidades.FormCreate(Sender: TObject);
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
    FDConnection1.Connected   := True;
    FDTableMunicipios.Active  := True;
    FDQueryLocalidades.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;
end;


procedure TFrmLocalidades.SearchBox1InvokeSearch(Sender: TObject);
begin
case ComboBox1.ItemIndex of
    0: // Clave
    begin
      FDQueryLocalidades.Filter := Format('clave like ''%%%s%%''', [SearchBox1.Text]);
      FDQueryLocalidades.Filtered := True;
    end;
    1: // Municipio
    begin
      FDQueryLocalidades.Filter := Format('municipio like ''%%%s%%''', [SearchBox1.Text]);
      FDQueryLocalidades.Filtered := True;
    end;
    2: // Localidad
    begin
      FDQueryLocalidades.Filter := Format('nombre like ''%%%s%%''', [SearchBox1.Text]);
      FDQueryLocalidades.Filtered := True;
    end;
  else
    FDQueryLocalidades.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

end.
