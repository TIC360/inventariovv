unit WndRadios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, frCoreClasses, FireDAC.Phys.FBDef, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.UI.Intf, FireDAC.Stan.Pool,
  FireDAC.VCLUI.Wait, IniFiles, Vcl.WinXCtrls;

type
  TFrmRadios = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo2: TDBMemo;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Splitter3: TSplitter;
    Panel7: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    TabSheet4: TTabSheet;
    Splitter4: TSplitter;
    Panel10: TPanel;
    Label2: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Panel12: TPanel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    frxPDFExport1: TfrxPDFExport;
    QryRadios: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    RadioModeloTable: TFDQuery;
    DSRadio: TDataSource;
    RadioTable: TFDQuery;
    DSRadioModelo: TDataSource;
    DSRadioMarca: TDataSource;
    RadioMarcaTable: TFDQuery;
    RadioTipoTable: TFDQuery;
    DSRadioTipo: TDataSource;
    DSProveedores: TDataSource;
    DSColores: TDataSource;
    ProveedoresTable: TFDQuery;
    ColoresTable: TFDQuery;
    Panel2: TPanel;
    Label19: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
    Panel6: TPanel;
    Label20: TLabel;
    ComboBox2: TComboBox;
    SearchBox2: TSearchBox;
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator3BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure SearchBox2InvokeSearch(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRadios: TFrmRadios;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmRadios.DBLookupComboBox6Click(Sender: TObject);
begin
  if not (DSRadioModelo.State in [dsInactive]) then
  begin

    try
      RadioModeloTable.Close;
      RadioModeloTable.Filter := 'MARCA_ID = '+IntToStr(DBLookupComboBox6.KeyValue);
      RadioModeloTable.Filtered := True;
      RadioModeloTable.Open;
    except
      RadioModeloTable.Close;
      RadioModeloTable.Filtered := False;
      RadioModeloTable.Open;
    end;
  end;
end;

procedure TFrmRadios.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      DBLookupComboBox3.Visible := True;
      DBLookupComboBox6.Visible := True;
      DBLookupComboBox6.KeyValue := null;

      RadioModeloTable.Close;
      RadioModeloTable.Filter := 'MARCA_ID = 0';
      RadioModeloTable.Filtered := True;
      RadioModeloTable.Open;

      DBEdit8.SetFocus;
    end;
    nbPost, nbCancel:
    begin
      DBText1.Visible := True;
      DBText2.Visible := True;
      DBLookupComboBox3.Visible := False;
      DBLookupComboBox6.Visible := False;
      DBNavigator1.BtnClick(nbRefresh);
    end;
    nbEdit:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      DBLookupComboBox3.Visible := True;
      DBLookupComboBox6.KeyValue := DBGrid1.DataSource.DataSet.Fields[14].Value;
      DBLookupComboBox6.Visible := True;
      DBEdit8.SetFocus;
    end;
  End;
end;

procedure TFrmRadios.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
      DBEdit4.SetFocus;
    nbEdit, nbPost:
      DBNavigator2.BtnClick(nbRefresh);
  End;
end;

procedure TFrmRadios.DBNavigator3BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator3.DataSource.DataSet.Delete;
        Application.MessageBox('Marca borrada exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el registro porque existe al menos un modelo de radio de esa marca.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
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
    nbEdit, nbPost:
      DBNavigator4.BtnClick(nbRefresh);
  End;
end;

procedure TFrmRadios.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
      DBEdit3.SetFocus;
    nbEdit, nbPost:
      DBNavigator3.BtnClick(nbRefresh);
  End;
end;

procedure TFrmRadios.DBNavigator4Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
      DBEdit2.SetFocus;
    nbEdit, nbPost:
      DBNavigator4.BtnClick(nbRefresh);
  End;
end;

procedure TFrmRadios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRadios.FormCreate(Sender: TObject);
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
    ProveedoresTable.Active := True;
    QryRadios.Active := True;
    RadioMarcaTable.Active := True;
    RadioModeloTable.Active := True;
    RadioTable.Active := True;
    RadioTipoTable.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos', 'Error', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmRadios.SearchBox1InvokeSearch(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: // Artículo
    begin
      RadioTable.Filter := Format('articulo like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    1: // Serie
    begin
      RadioTable.Filter := Format('serie like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    2: // Folio
    begin
      RadioTable.Filter := Format('folio like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    3: // Marca
    begin
      RadioTable.Filter := Format('marca like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    4: // Modelo
    begin
      RadioTable.Filter := Format('modelo like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    5: // Tipo
    begin
      RadioTable.Filter := Format('tipo like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    6: // Color
    begin
      RadioTable.Filter := Format('color like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    7: // Proveedor
    begin
      RadioTable.Filter := Format('proveedor like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    8: // IPv4
    begin
      RadioTable.Filter := Format('ipv4 like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    9: // MAC
    begin
      RadioTable.Filter := Format('mac like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
    10: // Descripción
    begin
      RadioTable.Filter := Format('descripcion like ''%%%s%%''', [SearchBox1.Text]);
      RadioTable.Filtered := True;
    end;
  else
    RadioTable.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

procedure TFrmRadios.SearchBox2InvokeSearch(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0: // Nombre
    begin
      RadioModeloTable.Filter := Format('nombre like ''%%%s%%''', [SearchBox2.Text]);
      RadioModeloTable.Filtered := True;
    end;
    1: // Descripción
    begin
      RadioModeloTable.Filter := Format('descripcion like ''%%%s%%''', [SearchBox2.Text]);
      RadioModeloTable.Filtered := True;
    end;
    2: // Marca
    begin
      RadioModeloTable.Filter := Format('marca like ''%%%s%%''', [SearchBox2.Text]);
      RadioModeloTable.Filtered := True;
    end;
    3: // Tipo
    begin
      RadioModeloTable.Filter := Format('tipo like ''%%%s%%''', [SearchBox2.Text]);
      RadioModeloTable.Filtered := True;
    end;
  else
    RadioModeloTable.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

end.
