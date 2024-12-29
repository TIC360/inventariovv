unit ImagePreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Phys.IBBase, IniFiles;

type
  TFrmImagePreview = class(TForm)
    Splitter1: TSplitter;
    DBImage1: TDBImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    BtnGuardarComentario: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DBRichEdit1: TDBRichEdit;
    DSFoto: TDataSource;
    FDQueryFoto1: TFDQuery;
    FDQueryComentario: TFDQuery;
    DSComentario: TDataSource;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGuardarComentarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImagePreview: TFrmImagePreview;

implementation

{$R *.dfm}

uses GlobalVars;

procedure TFrmImagePreview.BtnGuardarComentarioClick(Sender: TObject);
var
  RichText: TMemoryStream;
begin
  // Crear un stream para almacenar el contenido del TRichEdit
  RichText := TMemoryStream.Create;
  try
    begin
    // Guardar el contenido del TRichEdit en el stream
    DBRichEdit1.Lines.SaveToStream(RichText);

    // Asegurarse de que el stream esté al principio
    RichText.Position := 0;

    if DBRichEdit1.DataField = 'COMENTARIO1' then
        FDQueryComentario.SQL.Text := 'UPDATE pmi SET comentario1 = :RichText WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO2' then
        FDQueryComentario.SQL.Text := 'UPDATE pmi SET comentario2 = :RichText WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO3' then
        FDQueryComentario.SQL.Text := 'UPDATE pmi SET comentario3 = :RichText WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO4' then
        FDQueryComentario.SQL.Text := 'UPDATE pmi SET comentario4 = :RichText WHERE id = :PMI';

    // Asignar el contenido del stream al parámetro de la consulta
    FDQueryComentario.ParamByName('RichText').LoadFromStream(RichText, ftBlob);

     // Asignar el PMI seleccionado
    FDQueryComentario.ParamByName('PMI').AsString := Label5.Caption;

    // Ejecutar la consulta
    FDQueryComentario.ExecSQL;
    end;
  finally
    RichText.Free;
  end;

  // Mostrar los cambios guardados
  try
    FDQueryComentario.Close;
    if DBRichEdit1.DataField = 'COMENTARIO1' then
        FDQueryComentario.SQL.Text := 'SELECT comentario1 FROM pmi WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO2' then
        FDQueryComentario.SQL.Text := 'SELECT comentario2 FROM pmi WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO3' then
        FDQueryComentario.SQL.Text := 'SELECT comentario3 FROM pmi WHERE id = :PMI'
    else if DBRichEdit1.DataField = 'COMENTARIO4' then
        FDQueryComentario.SQL.Text := 'SELECT comentario4 FROM pmi WHERE id = :PMI';

    FDQueryComentario.Params.ParamByName('PMI').AsString := Label5.Caption;
    FDQueryComentario.Active := True;
    FDQueryComentario.Open;
  finally
     Refresh;
  end;

end;

procedure TFrmImagePreview.Button3Click(Sender: TObject);
var
  SelAttrStyle: TFontStyles;
begin
  if DBRichEdit1.SelLength > 0 then
  begin
    SelAttrStyle := DBRichEdit1.SelAttributes.Style;

    if fsBold in SelAttrStyle then
      SelAttrStyle := SelAttrStyle - [fsBold]
    else
      SelAttrStyle := SelAttrStyle + [fsBold];

    DBRichEdit1.SelAttributes.Style := SelAttrStyle;
  end;
end;

procedure TFrmImagePreview.Button4Click(Sender: TObject);
var
  SelAttrStyle: TFontStyles;
begin
  if DBRichEdit1.SelLength > 0 then
  begin
    SelAttrStyle := DBRichEdit1.SelAttributes.Style;

    if fsItalic in SelAttrStyle then
      SelAttrStyle := SelAttrStyle - [fsItalic]
    else
      SelAttrStyle := SelAttrStyle + [fsItalic];

    DBRichEdit1.SelAttributes.Style := SelAttrStyle;
  end;
end;

procedure TFrmImagePreview.Button5Click(Sender: TObject);
var
  SelAttrStyle: TFontStyles;
begin
  if DBRichEdit1.SelLength > 0 then
  begin
    SelAttrStyle := DBRichEdit1.SelAttributes.Style;

    if fsUnderline in SelAttrStyle then
      SelAttrStyle := SelAttrStyle - [fsUnderline]
    else
      SelAttrStyle := SelAttrStyle + [fsUnderline];

    DBRichEdit1.SelAttributes.Style := SelAttrStyle;
  end;
end;

procedure TFrmImagePreview.Button6Click(Sender: TObject);
var
  SelAttrSize: Integer;
begin
  if DBRichEdit1.SelLength > 0 then
  begin
    SelAttrSize := DBRichEdit1.SelAttributes.Size;
    DBRichEdit1.SelAttributes.Size := SelAttrSize + 1;
  end;
end;

procedure TFrmImagePreview.Button7Click(Sender: TObject);
var
  SelAttrSize: Integer;
begin
  if DBRichEdit1.SelLength > 0 then
  begin
    SelAttrSize := DBRichEdit1.SelAttributes.Size;
    DBRichEdit1.SelAttributes.Size := SelAttrSize - 1;
  end;
end;


procedure TFrmImagePreview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImagePreview.FormCreate(Sender: TObject);
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
    FDQueryComentario.Active := True;
    FDQueryFoto1.Active := True;
  except
    on E: Exception do
      Application.MessageBox('Error al conectar a la base de datos.', 'Información', MB_ICONHAND + MB_OK);
  end;
end;

end.
