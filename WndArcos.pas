unit WndArcos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.UI.Intf, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TFrmArcos = class(TForm)
    Panel4: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    DSLocalidades: TDataSource;
    FDQueryLocalidades: TFDQuery;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArcos: TFrmArcos;

implementation

{$R *.dfm}

uses DataModuleArcos;

procedure TFrmArcos.DBLookupComboBox1Click(Sender: TObject);
begin
  if not (FDQueryLocalidades.State in [dsInactive]) then
  begin
    try
      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filter := 'MUNICIPIO_ID = '+IntToStr(DBLookupComboBox1.KeyValue);
      FDQueryLocalidades.Filtered := True;
      FDQueryLocalidades.Open;
    except
      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filtered := False;
      FDQueryLocalidades.Open;
    end;
  end;
end;

procedure TFrmArcos.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
  nbDelete:
    begin
      try
        DBNavigator1.DataSource.DataSet.Delete;
        ShowMessage('Arco carretero borrado exitosamente.');
      except
        on E: EFDDBEngineException do
        case E[0].ErrorCode of
          335544466: // Violación de integridad referencial por intento de borrado de llave foránea
          begin
            Application.MessageBox('No se puede eliminar el Arco carretero.', 'Error de integridad referencial', MB_ICONINFORMATION or MB_OK);
            // Cancelar la acción de borrar para evitar que el DBNavigator intente borrarlo de nuevo
            Abort;
          end;
          else
            ShowMessage('Código de error: ' + IntToStr(E[0].ErrorCode));
        end;
      end;
      // Cancelar la acción predeterminada del DBNavigator para evitar la excepción no manejada
      Abort;
    end;
  End;
end;

procedure TFrmArcos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Case Button of
    nbInsert:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      DBLookupComboBox1.Visible := True;
      DBLookupComboBox2.Visible := True;
      DBLookupComboBox2.KeyValue := null;

      FDQueryLocalidades.Close;
      FDQueryLocalidades.Filter := 'MUNICIPIO_ID = 0';
      FDQueryLocalidades.Filtered := True;
      FDQueryLocalidades.Open;

      DBLookupComboBox3.SetFocus;
    end;
    nbPost, nbCancel:
    begin
      DBText1.Visible := True;
      DBText2.Visible := True;
      DBLookupComboBox1.Visible := False;
      DBLookupComboBox2.Visible := False;
      DBNavigator1.BtnClick(nbRefresh);
    end;
    nbEdit:
    begin
      DBText1.Visible := False;
      DBText2.Visible := False;
      //DBLookupComboBox2.KeyValue := DBGrid1.DataSource.DataSet.Fields[8].Value;
      try
        FDQueryLocalidades.Close;
        FDQueryLocalidades.Filter := 'MUNICIPIO_ID = '+IntToStr(DBLookupComboBox1.KeyValue);
        FDQueryLocalidades.Filtered := True;
        FDQueryLocalidades.Open;
      except
        FDQueryLocalidades.Close;
        FDQueryLocalidades.Filtered := False;
        FDQueryLocalidades.Open;
      end;
      DBLookupComboBox1.Visible := True;
      DBLookupComboBox2.Visible := True;
      DBLookupComboBox3.SetFocus;
    end;
  End;
end;

end.
