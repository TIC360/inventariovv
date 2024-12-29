unit WndMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ActnMenus, Vcl.StdActns,
  Vcl.VirtualImageList, Vcl.BaseImageCollection, Vcl.ImageCollection,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  IniFiles, Vcl.Menus;

type
  TFrmMain = class(TForm)
    ActionManager1: TActionManager;
    ActionCatalogoCamaras: TAction;
    ActionCatalogoSwitches: TAction;
    ActionCatalogoGabinetes: TAction;
    ActionCatalogoRadios: TAction;
    ActionCatalogoPostes: TAction;
    ActionCatalogoMiscelaneos: TAction;
    ActionCatalogoPmi: TAction;
    ActionCatalogoColores: TAction;
    ActionCatalogoProveedores: TAction;
    ActionCatalogoLocalidades: TAction;
    ActionCatalogoMunicipios: TAction;
    ActionMonitoreoPmi: TAction;
    ActionValidarCamaras: TAction;
    ActionAcercaDe: TAction;
    ActionImprimirReportePMI: TAction;
    ActionMapaDisponibilidad: TAction;
    ActionRegiones: TAction;
    ActionConfig: TAction;
    ActionBaseDeDatos: TAction;
    ActionDiagrama: TAction;
    ActionOrigenDestino: TAction;
    ActionViabilidadEnlaces: TAction;
    ActionViabilidadPtMP: TAction;
    ActionDashboardDisponibilidadTotal: TAction;
    ActionDashboardDisponibilidadPorRegion: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    WindowClose1: TWindowClose;
    MainMenu1: TMainMenu;
    Diario1: TMenuItem;
    Diario2: TMenuItem;
    Dashboard1: TMenuItem;
    Muntosdemonitoreo1: TMenuItem;
    Mapadedisponibilidad1: TMenuItem;
    Mapadedisponibilidad2: TMenuItem;
    FichaPMI1: TMenuItem;
    Catlogos1: TMenuItem;
    Regiones1: TMenuItem;
    Regiones2: TMenuItem;
    Proveedores1: TMenuItem;
    Proveedores2: TMenuItem;
    Municipios1: TMenuItem;
    Municipios2: TMenuItem;
    Gabinetes1: TMenuItem;
    Gabinetes2: TMenuItem;
    Postes1: TMenuItem;
    Postes2: TMenuItem;
    Cmaras1: TMenuItem;
    Cmaras2: TMenuItem;
    Switches1: TMenuItem;
    Disponibilidad1: TMenuItem;
    otal1: TMenuItem;
    otal2: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    FileExit2: TFileExit;
    Help1: TMenuItem;
    About1: TMenuItem;
    StatusBar1: TStatusBar;
    Configuracin1: TMenuItem;
    Usuarios1: TMenuItem;

    procedure ActionCatalogoArcosExecute(Sender: TObject);
    procedure ActionCatalogoSwitchesExecute(Sender: TObject);
    procedure ActionCatalogoGabinetesExecute(Sender: TObject);
    procedure ActionCatalogoRadiosExecute(Sender: TObject);
    procedure ActionCatalogoPostesExecute(Sender: TObject);
    procedure ActionCatalogoMiscelaneosExecute(Sender: TObject);
    procedure ActionCatalogoPmiExecute(Sender: TObject);
    procedure ActionCatalogoColoresExecute(Sender: TObject);
    procedure ActionCatalogoProveedoresExecute(Sender: TObject);
    procedure ActionCatalogoMunicipiosExecute(Sender: TObject);
    procedure ActionCatalogoLocalidadesExecute(Sender: TObject);
    procedure ActionMonitoreoPmiExecute(Sender: TObject);
    procedure ActionValidarCamarasExecute(Sender: TObject);
    procedure ActionAcercaDeExecute(Sender: TObject);
    procedure ActionImprimirReportePMIExecute(Sender: TObject);
    procedure ActionMapaDisponibilidadExecute(Sender: TObject);
    procedure ActionRegionesExecute(Sender: TObject);
    procedure ActionConfigExecute(Sender: TObject);
    procedure ActionBaseDeDatosExecute(Sender: TObject);
    procedure ActionDiagramaExecute(Sender: TObject);
    procedure ActionOrigenDestinoExecute(Sender: TObject);
    procedure ActionViabilidadEnlacesExecute(Sender: TObject);
    procedure ActionViabilidadPtMPExecute(Sender: TObject);
    procedure ActionDashboardDisponibilidadTotalExecute(Sender: TObject);
    procedure ActionDashboardDisponibilidadPorRegionExecute(Sender: TObject);
    procedure ActionCatalogoCamarasExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses DataModule, WndCamaras, WndSwitches, WndGabinetes, WndRadios,
  WndPostes, WndMiscelaneos, WndPmi, WndArcos, WndColores, WndProveedores,
  WndMunicipios, WndLocalidades, WndPmi2, WndValidarCamaras,
  WndSplashScreen, WndImprimir, WndMapaDisponibilidad, WndRegiones,
  WndConfig, WndServidor, WndDiagrama, WndTopologia, WndViabilidadPtP,
  WndViabilidadPtMP, WndDashboard1, WndDashboard2, GlobalVars;

procedure TFrmMain.ActionCatalogoCamarasExecute(Sender: TObject);
var
  wnd: TFrmCamaras;
begin
  wnd := TFrmCamaras.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoColoresExecute(Sender: TObject);
var
  wnd: TFrmColores;
begin
  wnd := TFrmColores.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoGabinetesExecute(Sender: TObject);
var
  wnd: TFrmGabinetes;
begin
  wnd := TFrmGabinetes.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoLocalidadesExecute(Sender: TObject);
var
  wnd: TFrmLocalidades;
begin
  wnd := TFrmLocalidades.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoMiscelaneosExecute(Sender: TObject);
var
  wnd: TFrmMiscelaneos;
begin
  wnd := TFrmMiscelaneos.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoMunicipiosExecute(Sender: TObject);
var
  wnd: TFrmMunicipios;
begin
  wnd := TFrmMunicipios.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoPmiExecute(Sender: TObject);
var
  wnd: TFrmPmi;
begin
  wnd := TFrmPmi.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoPostesExecute(Sender: TObject);
var
  wnd: TFrmPostes;
begin
  wnd := TFrmPostes.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoProveedoresExecute(Sender: TObject);
var
  wnd: TFrmProveedores;
begin
  wnd := TFrmProveedores.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoRadiosExecute(Sender: TObject);
var
  wnd: TFrmRadios;
begin
  wnd := TFrmRadios.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionCatalogoSwitchesExecute(Sender: TObject);
var
  wnd: TFrmSwitches;
begin
  wnd := TFrmSwitches.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionConfigExecute(Sender: TObject);
var
  wnd: TFrmConfig;
begin
  wnd := TFrmConfig.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionDiagramaExecute(Sender: TObject);
var
  wnd : TFrmDiagrama;
begin
  wnd := TFrmDiagrama.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionImprimirReportePMIExecute(Sender: TObject);
var
  wndPrint: TFrmImprimir;
begin
  wndPrint := TFrmImprimir.Create(Self);
  wndPrint.Label1.Visible := True;
  wndPrint.SearchBox1.Visible := True;
  wndPrint.btnImprimir.Enabled := False;
  wndPrint.btnExportarJPG.Enabled := False;
  wndPrint.SearchBox1.SetFocus;
  wndPrint.Show;
end;

procedure TFrmMain.ActionMapaDisponibilidadExecute(Sender: TObject);
var
  wndMapaDisponibilidad : TFrmMapaDisponibilidad;
begin
  // Muestra los PMIs activos e inactivos
  wndMapaDisponibilidad := TFrmMapaDisponibilidad.Create(Self);
  wndMapaDisponibilidad.Show;
end;

procedure TFrmMain.ActionMonitoreoPmiExecute(Sender: TObject);
var
  wnd: TFrmPmi2;
begin
  wnd := TFrmPmi2.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionOrigenDestinoExecute(Sender: TObject);
var
  wnd: TFrmTopologia;
begin
  wnd := TFrmTopologia.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionRegionesExecute(Sender: TObject);
var
  wnd: TFrmRegiones;
begin
  wnd := TFrmRegiones.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionDashboardDisponibilidadTotalExecute(Sender: TObject);
var
  wnd: TFrmDashboard1;
begin
  wnd := TFrmDashboard1.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionDashboardDisponibilidadPorRegionExecute(Sender: TObject);
var
  wnd: TFrmDashboard2;
begin
  wnd := TFrmDashboard2.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionAcercaDeExecute(Sender: TObject);
var
  wnd: TSplashForm;
begin
  wnd := TSplashForm.Create(Self);
  wnd.Timer1.Enabled := False;
  wnd.Show;
end;

procedure TFrmMain.ActionBaseDeDatosExecute(Sender: TObject);
var
  wnd: TFrmServidor;
begin
  wnd := TFrmServidor.Create(Self);
  wnd.ShowModal;
end;

procedure TFrmMain.ActionCatalogoArcosExecute(Sender: TObject);
var
  wnd: TFrmArcos;
begin
  wnd := TFrmArcos.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionValidarCamarasExecute(Sender: TObject);
var
  wnd: TFrmValidarCamaras;
begin
  wnd := TFrmValidarCamaras.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionViabilidadEnlacesExecute(Sender: TObject);
var
  wnd: TFrmViabilidadPtP;
begin
  wnd := TFrmViabilidadPtP.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.ActionViabilidadPtMPExecute(Sender: TObject);
var
  wnd: TFrmViabilidadPtMP;
begin
  wnd := TFrmViabilidadPtMP.Create(Self);
  wnd.Show;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := UserName;
  StatusBar1.Panels[1].Text := UserRole;
  StatusBar1.Panels[2].Text := DatabaseServer;
  StatusBar1.Panels[3].Text := '     ' + DataBase;
end;

end.
