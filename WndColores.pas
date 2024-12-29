unit WndColores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses,
  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.UI.Intf, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, Vcl.WinXCtrls;

type
  TFrmColores = class(TForm)
    Panel4: TPanel;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    ColoresTable: TFDQuery;
    DSColores: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
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
  FrmColores: TFrmColores;

implementation

{$R *.dfm}

uses DataModule, GlobalVars;

procedure TFrmColores.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        Application.MessageBox('Color borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el color porque está siendo utilizado.', 'Información', MB_ICONINFORMATION or MB_OK);
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

procedure TFrmColores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmColores.FormCreate(Sender: TObject);
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
    ColoresTable.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmColores.SearchBox1InvokeSearch(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      ColoresTable.Filter := Format('nombre like ''%%%s%%''', [SearchBox1.Text]);
      ColoresTable.Filtered := True;
    end;
  else
    ColoresTable.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

end.
