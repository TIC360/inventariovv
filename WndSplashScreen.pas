unit WndSplashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Skia, Vcl.Imaging.jpeg;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

procedure TSplashForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TSplashForm.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.Label1Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.Label2Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.Label3Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.Label8Click(Sender: TObject);
begin
  Close
end;

procedure TSplashForm.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Close;
end;

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False; // Desactiva el Timer
  SplashForm.Close;        // Cierra el Splash Screen
end;

end.
