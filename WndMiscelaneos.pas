unit WndMiscelaneos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FBDef,
  FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.UI.Intf, FireDAC.Stan.Pool,
  FireDAC.VCLUI.Wait, IniFiles, Vcl.WinXCtrls;

type
  TFrmMiscelaneos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit6: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit8: TDBEdit;
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
    MiscelaneoTable: TFDQuery;
    MiscelaneoTipoTable: TFDQuery;
    DSMiscelaneo: TDataSource;
    FDQuery1: TFDQuery;
    DSMiscelaneoModelo: TDataSource;
    MiscelaneoModeloTable: TFDQuery;
    DSMiscelaneoMarca: TDataSource;
    MiscelaneoMarcaTable: TFDQuery;
    DSMiscelaneoTipo: TDataSource;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    ProveedoresTable: TFDQuery;
    DSProveedores: TDataSource;
    DSColores: TDataSource;
    ColoresTable: TFDQuery;
    Panel2: TPanel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    SearchBox1: TSearchBox;
    Panel6: TPanel;
    Label14: TLabel;
    ComboBox2: TComboBox;
    SearchBox2: TSearchBox;
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator3BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator4BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure SearchBox2InvokeSearch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMiscelaneos: TFrmMiscelaneos;

implementation

{$R *.dfm}

uses DataModuleMiscelaneos, GlobalVars;

procedure TFrmMiscelaneos.DBLookupComboBox6Click(Sender: TObject);
begin
  if not (DSMiscelaneoModelo.State in [dsInactive]) then
  begin

    try
      MiscelaneoModeloTable.Close;
      MiscelaneoModeloTable.Filter := 'MARCA_ID = '+IntToStr(DBLookupComboBox6.KeyValue);
      MiscelaneoModeloTable.Filtered := True;
      MiscelaneoModeloTable.Open;
    except
      MiscelaneoModeloTable.Close;
      MiscelaneoModeloTable.Filtered := False;
      MiscelaneoModeloTable.Open;
    end;
  end;
end;

procedure TFrmMiscelaneos.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        Application.MessageBox('Misceláneo borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el misceláneo porque está registrado en un Punto de Monitoreo Inteligente o Arco Carretero.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
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

procedure TFrmMiscelaneos.DBNavigator1Click(Sender: TObject;
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

      MiscelaneoModeloTable.Close;
      MiscelaneoModeloTable.Filter := 'MARCA_ID = 0';
      MiscelaneoModeloTable.Filtered := True;
      MiscelaneoModeloTable.Open;

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
      DBLookupComboBox6.KeyValue := DBGrid1.DataSource.DataSet.Fields[12].Value;
      DBLookupComboBox6.Visible := True;
      DBEdit8.SetFocus;
    end;
  End;
end;

procedure TFrmMiscelaneos.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator2.DataSource.DataSet.Delete;
        Application.MessageBox('Modelo de misceláneo borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el registro porque existe al menos un misceláneo de ese modelo.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error 2: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmMiscelaneos.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
      DBEdit4.SetFocus;
    nbEdit, nbPost:
      DBNavigator2.BtnClick(nbRefresh);
  End;
end;

procedure TFrmMiscelaneos.DBNavigator3BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator3.DataSource.DataSet.Delete;
        Application.MessageBox('Modelo de switch borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el registro porque existe al menos un modelo de misceláneo de esa marca.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error 3: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmMiscelaneos.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
      DBEdit3.SetFocus;
    nbEdit, nbPost:
      DBNavigator3.BtnClick(nbRefresh);
  End;
end;

procedure TFrmMiscelaneos.DBNavigator4BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator4.DataSource.DataSet.Delete;
        Application.MessageBox('Tipo de misceláneo borrado exitosamente.', 'Información', MB_ICONINFORMATION + MB_OK);
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el registro porque existe al menos un modelo de misceláneo de ese tipo.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error 4: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmMiscelaneos.DBNavigator4Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 Case Button of
    nbInsert:
      DBEdit2.SetFocus;
    nbEdit, nbPost:
      DBNavigator4.BtnClick(nbRefresh);
  End;
end;

procedure TFrmMiscelaneos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMiscelaneos.FormCreate(Sender: TObject);
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
    FDQuery1.Active := True;
    MiscelaneoMarcaTable.Active := True;
    MiscelaneoModeloTable.Active := True;
    MiscelaneoTable.Active := True;
    MiscelaneoTipoTable.Active := True;
    ProveedoresTable.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar con la base de datos', 'Error', MB_ICONHAND + MB_OK);
  end;
end;

procedure TFrmMiscelaneos.SearchBox1InvokeSearch(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: // Artículo
    begin
      FDQuery1.Filter := Format('articulo like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    1: // Serie
    begin
      FDQuery1.Filter := Format('serie like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    2: // Folio
    begin
      FDQuery1.Filter := Format('folio like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    3: // Marca
    begin
      FDQuery1.Filter := Format('marca like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    4: // Modelo
    begin
      FDQuery1.Filter := Format('modelo like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    5: // Tipo
    begin
      FDQuery1.Filter := Format('tipo like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    6: // Color
    begin
      FDQuery1.Filter := Format('color like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    7: // Proveedor
    begin
      FDQuery1.Filter := Format('proveedor like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
    8: // Descripción
    begin
      FDQuery1.Filter := Format('descripcion like ''%%%s%%''', [SearchBox1.Text]);
      FDQuery1.Filtered := True;
    end;
  else
    FDQuery1.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

procedure TFrmMiscelaneos.SearchBox2InvokeSearch(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0: // Nombre
    begin
      MiscelaneoModeloTable.Filter := Format('nombre like ''%%%s%%''', [SearchBox2.Text]);
      MiscelaneoModeloTable.Filtered := True;
    end;
    1: // Descripción
    begin
      MiscelaneoModeloTable.Filter := Format('descripcion like ''%%%s%%''', [SearchBox2.Text]);
      MiscelaneoModeloTable.Filtered := True;
    end;
    2: // Marca
    begin
      MiscelaneoModeloTable.Filter := Format('marca like ''%%%s%%''', [SearchBox2.Text]);
      MiscelaneoModeloTable.Filtered := True;
    end;
    3: // Tipo
    begin
      MiscelaneoModeloTable.Filter := Format('tipo like ''%%%s%%''', [SearchBox2.Text]);
      MiscelaneoModeloTable.Filtered := True;
    end;
  else
    MiscelaneoModeloTable.Filtered := False; // Si no se selecciona una opción válida, desactiva el filtro
  end;
end;

end.
