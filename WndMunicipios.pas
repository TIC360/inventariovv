unit WndMunicipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  frxClass, frxDBSet, frCoreClasses, frxExportBaseDialog, frxExportPDF,
  frxExportCSV, System.Skia, Vcl.Skia, FireDAC.Phys.FBDef,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.IBBase,
  FireDAC.Stan.Option, FireDAC.UI.Intf, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.WinXCtrls;

type
  TFrmMunicipios = class(TForm)
    Panel4: TPanel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    FDQueryMunicipios: TFDQuery;
    DSMunicipios: TDataSource;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDTableRegiones: TFDTable;
    DSRegiones: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
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
  FrmMunicipios: TFrmMunicipios;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmMunicipios.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        Application.MessageBox('Municipio borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el Municipio.', 'Error', MB_ICONHAND or MB_OK);
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

procedure TFrmMunicipios.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
    begin
      DBEdit1.SetFocus;
    end;
    nbEdit, nbPost:
    begin
      DBNavigator1.BtnClick(nbRefresh);
    end;
  End;
end;

procedure TFrmMunicipios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMunicipios.FormCreate(Sender: TObject);
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
    FDConnection1.Connected  := True;
    FDQueryMunicipios.Active := True;
    FDTableRegiones.Active   := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;
end;


procedure TFrmMunicipios.SearchBox1InvokeSearch(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: // Municipio
    begin
      FDQueryMunicipios.Filter := Format('nombre like ''%%%s%%''', [SearchBox1.Text]);
      FDQueryMunicipios.Filtered := True;
    end;
    1: // Región
    begin
      FDQueryMunicipios.Filter := Format('region like ''%%%s%%''', [SearchBox1.Text]);
      FDQueryMunicipios.Filtered := True;
    end;
  else
    FDQueryMunicipios.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

end.
