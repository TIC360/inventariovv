program i2V;

uses
  Vcl.Forms,
  Winapi.Windows,
  WndMain in 'WndMain.pas' {FrmMain},
  WndCamaras in 'WndCamaras.pas' {FrmCamaras},
  Vcl.Themes,
  Vcl.Styles,
  WndSwitches in 'WndSwitches.pas' {FrmSwitches},
  WndGabinetes in 'WndGabinetes.pas' {FrmGabinetes},
  WndRadios in 'WndRadios.pas' {FrmRadios},
  WndPostes in 'WndPostes.pas' {FrmPostes},
  WndMiscelaneos in 'WndMiscelaneos.pas' {FrmMiscelaneos},
  WndPmi in 'WndPmi.pas' {FrmPmi},
  WndColores in 'WndColores.pas' {FrmColores},
  WndProveedores in 'WndProveedores.pas' {FrmProveedores},
  WndLocalidades in 'WndLocalidades.pas' {FrmLocalidades},
  WndMunicipios in 'WndMunicipios.pas' {FrmMunicipios},
  WndPmi2 in 'WndPmi2.pas' {FrmPmi2},
  Pmi in 'Pmi.pas' {DynamicPmi: TFrame},
  WndNuevoPmiCamaras in 'WndNuevoPmiCamaras.pas' {NuevoPmiCamaras},
  WndNuevoPmiGabientes in 'WndNuevoPmiGabientes.pas' {NuevoPmiGabinetes},
  WndNuevoPmiMiscelaneos in 'WndNuevoPmiMiscelaneos.pas' {NuevoPmiMiscelaneos},
  WndNuevoPmiPostes in 'WndNuevoPmiPostes.pas' {NuevoPmiPostes},
  WndNuevoPmiRadios in 'WndNuevoPmiRadios.pas' {NuevoPmiRadios},
  WndNuevoPmiSwitches in 'WndNuevoPmiSwitches.pas' {NuevoPmiSwitches},
  WndValidarCamaras in 'WndValidarCamaras.pas' {FrmValidarCamaras},
  WndSplashScreen in 'WndSplashScreen.pas' {SplashForm},
  ImagePreview in 'ImagePreview.pas' {FrmImagePreview},
  WndImprimir in 'WndImprimir.pas' {FrmImprimir},
  WndMapaDisponibilidad in 'WndMapaDisponibilidad.pas' {FrmMapaDisponibilidad},
  WndRegiones in 'WndRegiones.pas' {FrmRegiones},
  WndConfig in 'WndConfig.pas' {FrmConfig},
  WndEditarCamara in 'WndEditarCamara.pas' {FrmEditarCamara},
  WndEditarRadio in 'WndEditarRadio.pas' {FrmEditarRadio},
  WndEditarMiscelaneo in 'WndEditarMiscelaneo.pas' {FrmEditarMiscelaneo},
  WndDashboard1 in 'WndDashboard1.pas' {FrmDashBoard1},
  WndDashboard2 in 'WndDashboard2.pas' {FrmDashboard2},
  WndLogin in 'WndLogin.pas' {FormLogin},
  GlobalVars in 'GlobalVars.pas';

{$R *.res}
begin
  Application.Initialize;

  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.Title := 'i2V para Windows';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TSplashForm, SplashForm);
  Application.CreateForm(TFormLogin, FormLogin);
  SplashForm.Show;
  SplashForm.Update; // Fuerza la actualización visual del Splash Screen

  Sleep(3000); // Simula un tiempo de carga (opcional)

  SplashForm.Hide;
  SplashForm.Free;

  FormLogin.ShowModal;

  Application.Run;
end.
