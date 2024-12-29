unit Pmi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.ExtDlgs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  Vcl.WinXPickers, frxClass, frxDBSet, frCoreClasses, Clipbrd, IniFiles,
  System.ImageList, Vcl.ImgList;

type
  TDynamicPmi = class(TFrame)
    Panel1: TPanel;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    PopupMenu1: TPopupMenu;
    Cargarfoto1: TMenuItem;
    Borrarfoto1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Cargarfoto2: TMenuItem;
    Borrarfoto2: TMenuItem;
    PopupMenu3: TPopupMenu;
    Cargarfoto3: TMenuItem;
    Borrarfoto3: TMenuItem;
    PopupMenu4: TPopupMenu;
    Cargarfoto4: TMenuItem;
    Borrarfoto4: TMenuItem;
    PopupMenuCamaras: TPopupMenu;
    Agregar6: TMenuItem;
    Eliminar6: TMenuItem;
    Actualizar6: TMenuItem;
    PopupMenuGabinetes: TPopupMenu;
    Agregar3: TMenuItem;
    Eliminar3: TMenuItem;
    Actualizar3: TMenuItem;
    PopupMenuPostes: TPopupMenu;
    Agregar4: TMenuItem;
    Eliminar4: TMenuItem;
    Actualizar4: TMenuItem;
    PopupMenuRadios: TPopupMenu;
    Agregar2: TMenuItem;
    Eliminar2: TMenuItem;
    Actualizar2: TMenuItem;
    PopupMenuSwitches: TPopupMenu;
    Agregar5: TMenuItem;
    Eliminar5: TMenuItem;
    Actualizar5: TMenuItem;
    PopupMenuVarios: TPopupMenu;
    Agregar1: TMenuItem;
    Eliminar1: TMenuItem;
    Actualizar1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Label5: TLabel;
    Label8: TLabel;
    CamarasByPmi: TFDQuery;
    DSCamarasByPmi: TDataSource;
    SwitchesByPmi: TFDQuery;
    DSSwitchesByPmi: TDataSource;
    PostesByPmi: TFDQuery;
    DSPostesByPmi: TDataSource;
    GabinetesByPmi: TFDQuery;
    DSGabinetesByPmi: TDataSource;
    RadiosByPmi: TFDQuery;
    DSRadiosByPmi: TDataSource;
    MiscelaneosByPmi: TFDQuery;
    DSMiscelaneosByPmi: TDataSource;
    FDQueryFoto1: TFDQuery;
    DSFoto: TDataSource;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Label10: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DatePicker2: TDatePicker;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DatePicker3: TDatePicker;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DatePicker4: TDatePicker;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    PmiTableById: TFDQuery;
    DSPmiById: TDataSource;
    FDQueryMediciones: TFDQuery;
    DSMediciones: TDataSource;
    LabelLat: TDBText;
    LabelLng: TDBText;
    N1: TMenuItem;
    Modificar1: TMenuItem;
    N2: TMenuItem;
    ImageList1: TImageList;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Modificar5: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Modificar6: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure Cargarfoto1Click(Sender: TObject);
    procedure Cargarfoto2Click(Sender: TObject);
    procedure Cargarfoto3Click(Sender: TObject);
    procedure Cargarfoto4Click(Sender: TObject);
    procedure Borrarfoto1Click(Sender: TObject);
    procedure Borrarfoto2Click(Sender: TObject);
    procedure Borrarfoto3Click(Sender: TObject);
    procedure Borrarfoto4Click(Sender: TObject);
    procedure Agregar6Click(Sender: TObject);
    procedure Eliminar6Click(Sender: TObject);
    procedure Actualizar6Click(Sender: TObject);
    procedure Agregar5Click(Sender: TObject);
    procedure Eliminar5Click(Sender: TObject);
    procedure Actualizar5Click(Sender: TObject);
    procedure Agregar4Click(Sender: TObject);
    procedure Actualizar4Click(Sender: TObject);
    procedure Eliminar4Click(Sender: TObject);
    procedure Agregar3Click(Sender: TObject);
    procedure Actualizar3Click(Sender: TObject);
    procedure Eliminar3Click(Sender: TObject);
    procedure Actualizar2Click(Sender: TObject);
    procedure Actualizar1Click(Sender: TObject);
    procedure Agregar2Click(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure Eliminar2Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DatePicker2Change(Sender: TObject);
    procedure DatePicker3Change(Sender: TObject);
    procedure DatePicker4Change(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure DBImage2DblClick(Sender: TObject);
    procedure DBImage3DblClick(Sender: TObject);
    procedure DBImage4DblClick(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure Modificar5Click(Sender: TObject);
    procedure Modificar6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DataModulePmi2, WndNuevoPmiCamaras, WndNuevoPmiGabientes,
  WndNuevoPmiMiscelaneos, WndNuevoPmiPostes, WndNuevoPmiRadios,
  WndNuevoPmiSwitches, DataModuleReportePMI, ImagePreview, WndImprimir,
  WndEditarCamara, WndEditarRadio, WndEditarMiscelaneo;

procedure TDynamicPmi.Actualizar1Click(Sender: TObject);
begin
  DSMiscelaneosByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Actualizar2Click(Sender: TObject);
begin
  DSRadiosByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Actualizar3Click(Sender: TObject);
begin
  DSGabinetesByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Actualizar4Click(Sender: TObject);
begin
  DSPostesByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Actualizar5Click(Sender: TObject);
begin
  DSSwitchesByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Actualizar6Click(Sender: TObject);
begin
  DSCamarasByPmi.DataSet.Refresh;
end;

procedure TDynamicPmi.Agregar1Click(Sender: TObject);
var
  PmiMiscelaneos: TNuevoPmiMiscelaneos;
begin
  PmiMiscelaneos := TNuevoPmiMiscelaneos.Create(Self);
  PmiMiscelaneos.Padre := Self;
  PmiMiscelaneos.Panel1.Caption := DBEdit1.Text;
  PmiMiscelaneos.Show;
end;

procedure TDynamicPmi.Agregar2Click(Sender: TObject);
var
  PmiRadios: TNuevoPmiRadios;
begin
  PmiRadios := TNuevoPmiRadios.Create(Self);
  PmiRadios.Padre := Self;
  PmiRadios.Panel1.Caption := DBEdit1.Text;
  PmiRadios.Show;
end;

procedure TDynamicPmi.Agregar3Click(Sender: TObject);
var
  PmiGabinetes: TNuevoPmiGabinetes;
begin
  PmiGabinetes := TNuevoPmiGabinetes.Create(Self);
  PmiGabinetes.Padre := Self;
  PmiGabinetes.Panel1.Caption := DBEdit1.Text;
  PmiGabinetes.Show;
end;

procedure TDynamicPmi.Agregar4Click(Sender: TObject);
var
  PmiPostes : TNuevoPmiPostes;
begin
  PmiPostes := TNuevoPmiPostes.Create(Self);
  PmiPostes.Padre := Self;
  PmiPostes.Panel1.Caption := DBEdit1.Text;
  PmiPostes.Show;
end;

procedure TDynamicPmi.Agregar5Click(Sender: TObject);
var
  PmiSwitches : TNuevoPmiSwitches;
begin
  PmiSwitches := TNuevoPmiSwitches.Create(Self);
  PmiSwitches.Padre := Self;
  PmiSwitches.Panel1.Caption := DBEdit1.Text;
  PmiSwitches.Show;
end;

procedure TDynamicPmi.Agregar6Click(Sender: TObject);
var
  PmiCamaras : TNuevoPmiCamaras;
begin
  PmiCamaras := TNuevoPmiCamaras.Create(self);
  PmiCamaras.Padre := Self;
  PmiCamaras.Panel1.Caption := DBEdit1.Text;
  PmiCamaras.LabelLat.Caption := LabelLat.Caption;
  PmiCamaras.LabelLng.Caption := LabelLng.Caption;
  PmiCamaras.Show;
end;

procedure TDynamicPmi.Borrarfoto1Click(Sender: TObject);
begin
  try
    FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto1 = NULL WHERE id = :PMI';
    FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.ExecSQL;

    FDQueryFoto1.Close;
    FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
    FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.Active := True;
    FDQueryFoto1.Open;
  finally
    FDQueryFoto1.Refresh;
  end;
end;

procedure TDynamicPmi.Borrarfoto2Click(Sender: TObject);
begin
  try
    FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto2 = NULL WHERE id = :PMI';
    FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.ExecSQL;

    FDQueryFoto1.Close;
    FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
    FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.Active := True;
    FDQueryFoto1.Open;
  finally
    FDQueryFoto1.Refresh;
  end;
end;

procedure TDynamicPmi.Borrarfoto3Click(Sender: TObject);
begin
  try
    FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto3 = NULL WHERE id = :PMI';
    FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.ExecSQL;

    FDQueryFoto1.Close;
    FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
    FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.Active := True;
    FDQueryFoto1.Open;
  finally
    FDQueryFoto1.Refresh;
  end;
end;

procedure TDynamicPmi.Borrarfoto4Click(Sender: TObject);
begin
  try
    FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto4 = NULL WHERE id = :PMI';
    FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.ExecSQL;

    FDQueryFoto1.Close;
    FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
    FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    FDQueryFoto1.Active := True;
    FDQueryFoto1.Open;
  finally
    FDQueryFoto1.Refresh;
  end;
end;

procedure TDynamicPmi.Button2Click(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET ac = :ac, tfse = :tfse, tfpr = :tfpr, fac = :fecha1, ftfse = :fecha2, ftfpr = :fecha3 WHERE ID = :id';
  FDQuery1.ParamByName('ac').AsFloat := StrToFloat(DBEdit2.Text);
  FDQuery1.ParamByName('tfse').AsFloat := StrToFloat(DBEdit3.Text);
  FDQuery1.ParamByName('tfpr').AsFloat := StrToFloat(DBEdit4.Text);
  FDQuery1.ParamByName('fecha1').AsDate := DatePicker2.Date;
  FDQuery1.ParamByName('fecha2').AsDate := DatePicker3.Date;
  FDQuery1.ParamByName('fecha3').AsDate := DatePicker4.Date;
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  Application.MessageBox('Registro actualizado correctamente.', 'Información', MB_ICONINFORMATION + MB_OK);
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar la fecha de registro de corriente alterna', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.Cargarfoto1Click(Sender: TObject);
var
  FileStream: TFileStream;
  MemoryStream: TMemoryStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    FileStream := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
    try
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.LoadFromStream(FileStream);
        MemoryStream.Position := 0;

        FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto1 = :ImageData WHERE id = :PMI';
        FDQueryFoto1.ParamByName('ImageData').LoadFromStream(MemoryStream, ftBlob);
        FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.ExecSQL;

        FDQueryFoto1.Close;
        FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
        FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.Active := True;
        FDQueryFoto1.Open;
      finally
         MemoryStream.Free;
      end;
    finally
      FileStream.Free;
    end;
  end;
end;

procedure TDynamicPmi.Cargarfoto2Click(Sender: TObject);
var
  FileStream: TFileStream;
  MemoryStream: TMemoryStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    FileStream := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
    try
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.LoadFromStream(FileStream);
        MemoryStream.Position := 0;

        FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto2 = :ImageData WHERE id = :PMI';
        FDQueryFoto1.ParamByName('ImageData').LoadFromStream(MemoryStream, ftBlob);
        FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.ExecSQL;

        FDQueryFoto1.Close;
        FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
        FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.Active := True;
        FDQueryFoto1.Open;
      finally
         MemoryStream.Free;
      end;
    finally
      FileStream.Free;
    end;
  end;
end;

procedure TDynamicPmi.Cargarfoto3Click(Sender: TObject);
var
  FileStream: TFileStream;
  MemoryStream: TMemoryStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    FileStream := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
    try
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.LoadFromStream(FileStream);
        MemoryStream.Position := 0;

        FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto3 = :ImageData WHERE id = :PMI';
        FDQueryFoto1.ParamByName('ImageData').LoadFromStream(MemoryStream, ftBlob);
        FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.ExecSQL;

        FDQueryFoto1.Close;
        FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
        FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.Active := True;
        FDQueryFoto1.Open;
      finally
         MemoryStream.Free;
      end;
    finally
      FileStream.Free;
    end;
  end;
end;

procedure TDynamicPmi.Cargarfoto4Click(Sender: TObject);
var
  FileStream: TFileStream;
  MemoryStream: TMemoryStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    FileStream := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead);
    try
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.LoadFromStream(FileStream);
        MemoryStream.Position := 0;

        FDQueryFoto1.SQL.Text := 'UPDATE pmi SET foto4 = :ImageData WHERE id = :PMI';
        FDQueryFoto1.ParamByName('ImageData').LoadFromStream(MemoryStream, ftBlob);
        FDQueryFoto1.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.ExecSQL;

        FDQueryFoto1.Close;
        FDQueryFoto1.SQL.Text := 'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :PMI';
        FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
        FDQueryFoto1.Active := True;
        FDQueryFoto1.Open;
      finally
         MemoryStream.Free;
      end;
    finally
      FileStream.Free;
    end;
  end;
end;

procedure TDynamicPmi.DatePicker2Change(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET fac = :fecha1 WHERE ID = :id';
  FDQuery1.ParamByName('fecha1').AsDate := DatePicker2.Date;
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar la fecha de registro de corriente alterna.', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DatePicker3Change(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET ftfse = :fecha2 WHERE ID = :id';
  FDQuery1.ParamByName('fecha2').AsDate := DatePicker3.Date;
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar la fecha de registro de la Tierra Física en el Sistema Eléctrico. ', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DatePicker4Change(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET ftfpr = :fecha3 WHERE ID = :id';
  FDQuery1.ParamByName('fecha3').AsDate := DatePicker4.Date;
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar la fecha de registro de la Tierra Física en el Pararrayos. ', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DBEdit2Exit(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET ac = :ac WHERE ID = :id';
  FDQuery1.ParamByName('ac').AsFloat := StrToFloat(DBEdit2.Text);
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar el voltaje de corriente alterna.', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DBEdit3Exit(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET tfse = :tfse WHERE ID = :id';
  FDQuery1.ParamByName('tfse').AsFloat := StrToFloat(DBEdit3.Text);
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar el valor de la Tierra Física en el Sistema Eléctrico. ', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DBEdit4Exit(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'UPDATE pmi SET tfpr = :tfpr WHERE ID = :id';
  FDQuery1.ParamByName('tfpr').AsFloat := StrToFloat(DBEdit4.Text);
  FDQuery1.ParamByName('id').AsString := DBEdit1.Text;
  try
    FDQuery1.ExecSQL;
  except
    on E: Exception do
      begin
        Application.MessageBox('Error al actualizar la Tierra Física del Pararrayos. ', 'Error', MB_ICONHAND + MB_OK);
      end;
  end;
end;

procedure TDynamicPmi.DBEdit5DblClick(Sender: TObject);
var
  Url: String;
  Lat, Lng: String;
begin
  Lat := LabelLat.Caption;
  Lng := LabelLng.Caption;
  Url := 'https://www.google.com/maps?q=' + Lat + ',' + Lng;
  Clipboard.AsText := Url;
  Application.MessageBox('Se copió una liga de Google Maps', 'i2V', MB_ICONQUESTION + MB_OK);
end;

procedure TDynamicPmi.DBImage1DblClick(Sender: TObject);
var
  imagePreview : TFrmImagePreview;
begin
  imagePreview := TFrmImagePreview.Create(Self);
  imagePreview.label5.Caption := DBEdit1.Text;
  imagePreview.label1.Caption := Label1.Caption;

  try
    DBImage1.DataField := 'foto1';
    imagePreview.FDQueryFoto1.Close;
    imagePreview.FDQueryFoto1.SQL.Text := 'SELECT foto1 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryFoto1.Active := True;
    imagePreview.FDQueryFoto1.Open;
  finally
     imagePreview.Refresh;
  end;

  try
    imagePreview.DBRichEdit1.DataField := 'COMENTARIO1';
    imagePreview.FDQueryComentario.Close;
    imagePreview.FDQueryComentario.SQL.Text := 'SELECT comentario1 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryComentario.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryComentario.Active := True;
    imagePreview.FDQueryComentario.Open;
  finally
     imagePreview.Refresh;
  end;

  imagePreview.Show;
end;

procedure TDynamicPmi.DBImage2DblClick(Sender: TObject);
var
  imagePreview : TFrmImagePreview;
begin
  imagePreview := TFrmImagePreview.Create(Self);
  imagePreview.label5.Caption := DBEdit1.Text;
  imagePreview.label1.Caption := Label2.Caption;

  try
    DBImage1.DataField := 'foto1';
    imagePreview.FDQueryFoto1.Close;
    imagePreview.FDQueryFoto1.SQL.Text := 'SELECT foto2 AS foto1 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryFoto1.Active := True;
    imagePreview.FDQueryFoto1.Open;
  finally
     imagePreview.Refresh;
  end;

  try
    imagePreview.DBRichEdit1.DataField := 'COMENTARIO2';
    imagePreview.FDQueryComentario.Close;
    imagePreview.FDQueryComentario.SQL.Text := 'SELECT comentario2 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryComentario.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryComentario.Active := True;
    imagePreview.FDQueryComentario.Open;
  finally
     imagePreview.Refresh;
  end;

  imagePreview.Show;
end;

procedure TDynamicPmi.DBImage3DblClick(Sender: TObject);
var
  imagePreview : TFrmImagePreview;
begin
  imagePreview := TFrmImagePreview.Create(Self);
  imagePreview.label5.Caption := DBEdit1.Text;
  imagePreview.label1.Caption := Label3.Caption;

  try
    DBImage1.DataField := 'foto1';
    imagePreview.FDQueryFoto1.Close;
    imagePreview.FDQueryFoto1.SQL.Text := 'SELECT foto3 AS foto1 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryFoto1.Active := True;
    imagePreview.FDQueryFoto1.Open;
  finally
     imagePreview.Refresh;
  end;

  try
    imagePreview.DBRichEdit1.DataField := 'COMENTARIO3';
    imagePreview.FDQueryComentario.Close;
    imagePreview.FDQueryComentario.SQL.Text := 'SELECT comentario3 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryComentario.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryComentario.Active := True;
    imagePreview.FDQueryComentario.Open;
  finally
     imagePreview.Refresh;
  end;

  imagePreview.Show;
end;

procedure TDynamicPmi.DBImage4DblClick(Sender: TObject);
var
  imagePreview : TFrmImagePreview;
begin
  imagePreview := TFrmImagePreview.Create(Self);
  imagePreview.label5.Caption := DBEdit1.Text;
  imagePreview.label1.Caption := Label4.Caption;

  try
    DBImage1.DataField := 'foto1';
    imagePreview.FDQueryFoto1.Close;
    imagePreview.FDQueryFoto1.SQL.Text := 'SELECT foto4 AS foto1 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryFoto1.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryFoto1.Active := True;
    imagePreview.FDQueryFoto1.Open;
  finally
     imagePreview.Refresh;
  end;

  try
    imagePreview.DBRichEdit1.DataField := 'COMENTARIO4';
    imagePreview.FDQueryComentario.Close;
    imagePreview.FDQueryComentario.SQL.Text := 'SELECT comentario4 FROM pmi WHERE id = :PMI';
    imagePreview.FDQueryComentario.Params.ParamByName('PMI').AsString := DBEdit1.Text;
    imagePreview.FDQueryComentario.Active := True;
    imagePreview.FDQueryComentario.Open;
  finally
     imagePreview.Refresh;
  end;

  imagePreview.Show;
end;

procedure TDynamicPmi.Eliminar1Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  MisToDelete: integer;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid6.DataSource.DataSet.Fields[7].AsString;
  MisToDelete := DBGrid6.DataSource.DataSet.Fields[0].AsInteger;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'Confirmar', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_miscelaneo WHERE pmi = :PMI AND miscelaneo = :MIS';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('MIS').AsInteger := MisToDelete;

    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid6.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Eliminar2Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  SwToDelete: string;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid5.DataSource.DataSet.Fields[0].AsString;
  SwToDelete := DBGrid5.DataSource.DataSet.Fields[0].AsString;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'i2V', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_radio WHERE pmi = :PMI AND radio = :RAD';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('RAD').AsString := SwToDelete;

    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid5.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Eliminar3Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  SwToDelete: string;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid4.DataSource.DataSet.Fields[0].AsString;
  SwToDelete := DBGrid4.DataSource.DataSet.Fields[0].AsString;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'i2V', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_gabinete WHERE pmi = :PMI AND gabinete = :GAB';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('GAB').AsString := SwToDelete;

    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid4.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Eliminar4Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  SwToDelete: string;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid3.DataSource.DataSet.Fields[0].AsString;
  SwToDelete := DBGrid3.DataSource.DataSet.Fields[0].AsString;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'Confirmar', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_poste WHERE pmi = :PMI AND poste = :POS';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('POS').AsString := SwToDelete;

    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid3.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Eliminar5Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  SwToDelete: string;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid2.DataSource.DataSet.Fields[0].AsString;
  SwToDelete := DBGrid2.DataSource.DataSet.Fields[0].AsString;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'Confirmar', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_switch WHERE pmi = :PMI AND switch = :SW';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('SW').AsString := SwToDelete;

    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid2.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Eliminar6Click(Sender: TObject);
var
  PmiToDelete: string;
  ArtToDelete: string;
  CamToDelete: string;
  Respuesta: Integer;
  Mensaje: PWideChar;
begin
  PmiToDelete := DBEdit1.Text;
  ArtToDelete := DBGrid1.DataSource.DataSet.Fields[0].AsString;
  CamToDelete := DBGrid1.DataSource.DataSet.Fields[0].AsString;

  Mensaje := PWideChar('¿Está seguro que desea borrar: ' + ArtToDelete + '?');
  Respuesta := Application.MessageBox(Mensaje, 'Confirmar', MB_ICONQUESTION + MB_YESNO);

  if Respuesta = IDYES then
  begin
    FDQuery1.SQL.Text := 'DELETE FROM pmi_camara WHERE pmi = :PMI AND camara = :CAM';
    FDQuery1.ParamByName('PMI').AsString := PmiToDelete;
    FDQuery1.ParamByName('CAM').AsString := CamToDelete;
    try
      FDQuery1.ExecSQL;
    except
      on E: Exception do
        Application.MessageBox('Error al eliminar el registro.', 'Error', MB_ICONHAND + MB_OK);
    end;

    DBGrid1.DataSource.DataSet.Refresh;
  end;
end;

procedure TDynamicPmi.Modificar1Click(Sender: TObject);
var
  PmiEditarCamara : TFrmEditarCamara;
begin
  PmiEditarCamara := TFrmEditarCamara.Create(self);
  PmiEditarCamara.Padre := Self;
  PmiEditarCamara.Panel1.Caption := DBEdit1.Text;
  PmiEditarCamara.LabelLat.Caption := LabelLat.Caption;
  PmiEditarCamara.LabelLng.Caption := LabelLng.Caption;
  PmiEditarCamara.EditNombre.Text := DBGrid1.DataSource.DataSet.FieldByName('nombre').AsString;
  PmiEditarCamara.LabelAzimut.Caption := DBGrid1.DataSource.DataSet.FieldByName('azimut').AsString + ' grados';
  PmiEditarCamara.LabelCamara.Caption := DBGRid1.DataSource.DataSet.FieldByName('serie').AsString;
  PmiEditarCamara.ShowModal;
end;

procedure TDynamicPmi.Modificar5Click(Sender: TObject);
var
  PmiEditarRadio : TFrmEditarRadio;
begin
  PmiEditarRadio := TFrmEditarRadio.Create(self);
  PmiEditarRadio.Padre := Self;
  PmiEditarRadio.Panel1.Caption := DBEdit1.Text;
  PmiEditarRadio.EditAzimut.Text := DBGrid5.DataSource.DataSet.FieldByName('azimut').AsString;
  PmiEditarRadio.EditTilt.Text := DBGrid5.DataSource.DataSet.FieldByName('tilt').AsString;
  PmiEditarRadio.EditFoV.Text := DBGrid5.DataSource.DataSet.FieldByName('fov').AsString;
  PmiEditarRadio.EditBW.Text := DBGrid5.DataSource.DataSet.FieldByName('bw').AsString;
  PmiEditarRadio.EditAltura.Text := DBGrid5.DataSource.DataSet.FieldByName('altura').AsString;
  PmiEditarRadio.EditFrecuencia.Text := DBGrid5.DataSource.DataSet.FieldByName('frecuencia').AsString;
  PmiEditarRadio.EditGanancia.Text := DBGrid5.DataSource.DataSet.FieldByName('ganancia').AsString;
  PmiEditarRadio.EditPotencia.Text := DBGrid5.DataSource.DataSet.FieldByName('potencia').AsString;

  // Agregar los demás campos


  PmiEditarRadio.LabelMarca.Caption := DBGrid5.DataSource.DataSet.FieldByName('marca').AsString;
  PmiEditarRadio.LabelModelo.Caption := DBGRid5.DataSource.DataSet.FieldByName('modelo').AsString;
  PmiEditarRadio.LabelSerie.Caption := DBGRid5.DataSource.DataSet.FieldByName('serie').AsString;
  PmiEditarRadio.LabelFolio.Caption := DBGRid5.DataSource.DataSet.FieldByName('folio').AsString;
  PmiEditarRadio.ShowModal;
end;

procedure TDynamicPmi.Modificar6Click(Sender: TObject);
var
  PmiEditarMiscelaneo : TFrmEditarMiscelaneo;
begin
  PmiEditarMiscelaneo := TFrmEditarMiscelaneo.Create(self);
  PmiEditarMiscelaneo.Padre := Self;
  PmiEditarMiscelaneo.Panel1.Caption := DBEdit1.Text;
  PmiEditarMiscelaneo.NumberBox1.Text := DBGrid6.DataSource.DataSet.FieldByName('cantidad').AsString;
  PmiEditarMiscelaneo.LabelMarca.Caption := DBGrid6.DataSource.DataSet.FieldByName('marca').AsString;
  PmiEditarMiscelaneo.LabelModelo.Caption := DBGRid6.DataSource.DataSet.FieldByName('modelo').AsString;
  PmiEditarMiscelaneo.LabelSerie.Caption := DBGRid6.DataSource.DataSet.FieldByName('serie').AsString;
  PmiEditarMiscelaneo.LabelFolio.Caption := DBGRid6.DataSource.DataSet.FieldByName('folio').AsString;
  PmiEditarMiscelaneo.LabelId.Caption := DBGrid6.DataSource.DataSet.FieldByName('id').AsString;
  PmiEditarMiscelaneo.ShowModal;
end;

end.
