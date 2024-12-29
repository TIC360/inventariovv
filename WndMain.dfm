object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Inventario de Sistema de Videovigilancia'
  ClientHeight = 523
  ClientWidth = 830
  Color = clSlategray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  StyleName = 'Windows'
  OnShow = FormShow
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 830
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 400
      end>
    StyleName = 'Turquoise Gray'
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Caption = '-'
              end
              item
                Action = ActionConfig
                Caption = '&Usuarios'
                ImageIndex = 26
              end
              item
                Caption = '-'
              end
              item
                Action = ActionAcercaDe
                Caption = 'A&cerca de...'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        Items.SmallIcons = False
        Items = <>
      end
      item
        Items = <
          item
            Action = ActionMonitoreoPmi
            Caption = '&Puntos de Monitoreo'
            ImageIndex = 5
            ImageName = 'Pmi_48px'
          end>
      end
      item
        Items = <
          item
            Action = ActionCatalogoGabinetes
            Caption = '&Gabinetes'
            ImageIndex = 16
            ImageName = 'Box_48px'
          end
          item
            Action = ActionCatalogoRadios
            Caption = '&Radios'
            ImageIndex = 1
            ImageName = 'Radio_48px'
          end
          item
            Action = ActionCatalogoPostes
            Caption = '&Postes'
            ImageIndex = 9
            ImageName = 'Poste_48px'
          end
          item
            Action = ActionCatalogoMiscelaneos
            Caption = '&Miscel'#225'neos'
            ImageIndex = 14
            ImageName = 'Miscelaneos_48px'
          end
          item
            Action = ActionCatalogoCamaras
            Caption = '&C'#225'maras'
            ImageIndex = 0
            ImageName = 'CamaraFija_48px'
          end
          item
            Action = ActionCatalogoPmi
            Caption = 'PM&I'
            ImageIndex = 7
            ImageName = 'Pickup_48px'
          end
          item
            Action = ActionCatalogoSwitches
            Caption = '&Switches'
            ImageIndex = 12
            ImageName = 'Switch_48px'
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            Caption = '&Button1'
            CommandStyle = csControl
            CommandProperties.Width = 150
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActionImprimirReportePMI
            ImageIndex = 22
          end>
      end
      item
        Items = <
          item
            Action = ActionMapaDisponibilidad
            Caption = '&Mapa de disponibilidad'
            ImageIndex = 13
            ImageName = 'Data_Protection_48'
          end
          item
            Action = ActionValidarCamaras
            ImageIndex = 0
            ImageName = 'CamaraFija_48px'
          end>
      end
      item
        Items = <
          item
            Caption = '&RibbonGroup6'
            CommandStyle = csControl
            CommandProperties.Width = 150
          end>
      end
      item
        Items = <
          item
            Action = ActionRegiones
            Caption = '&Regiones'
            ImageIndex = 23
          end
          item
            Action = ActionCatalogoColores
            Caption = '&Colores'
            ImageIndex = 12
            ImageName = 'Switch_48px'
          end
          item
            Action = ActionCatalogoProveedores
            Caption = '&Proveedores'
            ImageIndex = 15
            ImageName = 'Permissions_48'
          end
          item
            Action = ActionCatalogoLocalidades
            Caption = '&Localidades'
            ImageIndex = 13
            ImageName = 'Data_Protection_48'
          end
          item
            Action = ActionCatalogoMunicipios
            Caption = '&Municipios'
            ImageIndex = 14
            ImageName = 'Miscelaneos_48px'
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = WindowTileHorizontal1
            ImageIndex = 33
          end
          item
            Action = WindowTileVertical1
            ImageIndex = 34
          end
          item
            Action = WindowArrange1
          end
          item
            Action = WindowMinimizeAll1
          end
          item
            Action = WindowClose1
          end
          item
            Action = WindowCascade1
            ImageIndex = 32
          end>
      end
      item
        Items = <
          item
            Action = ActionOrigenDestino
            Caption = '&Origen-Destino'
            ImageIndex = 28
          end
          item
            Action = ActionViabilidadPtMP
            Caption = 'V&iabilidad PtMP'
            ImageIndex = 27
          end
          item
            Action = ActionViabilidadEnlaces
            Caption = '&Viabilidad PtP'
            ImageIndex = 28
          end
          item
            Action = ActionDiagrama
            Caption = '&Diagrama'
            ImageIndex = 4
            ImageName = 'Exit Sign_48px'
          end>
      end
      item
        Items = <
          item
            Action = ActionDashboardDisponibilidadPorRegion
            Caption = 'D&isponibilidad por regi'#243'n'
            ImageIndex = 31
          end
          item
            Action = ActionDashboardDisponibilidadTotal
            ImageIndex = 15
            ImageName = 'Permissions_48'
          end>
      end
      item
        Items = <
          item
            Action = ActionValidarCamaras
            ImageIndex = 0
            ImageName = 'CamaraFija_48px'
          end
          item
            Action = ActionMonitoreoPmi
            Caption = '&Puntos de monitoreo'
            ImageIndex = 5
            ImageName = 'Pmi_48px'
          end
          item
            Action = ActionDashboardDisponibilidadTotal
            ImageIndex = 15
            ImageName = 'Permissions_48'
          end>
      end>
    Left = 70
    Top = 230
    StyleName = 'Platform Default'
    object ActionCatalogoCamaras: TAction
      Category = 'Catalogos'
      Caption = 'C'#225'maras'
      ImageIndex = 0
      ImageName = 'CamaraFija_48px'
      OnExecute = ActionCatalogoCamarasExecute
    end
    object ActionCatalogoSwitches: TAction
      Category = 'Catalogos'
      Caption = 'Switches'
      ImageIndex = 12
      ImageName = 'Switch_48px'
      OnExecute = ActionCatalogoSwitchesExecute
    end
    object ActionCatalogoGabinetes: TAction
      Category = 'Catalogos'
      Caption = 'Gabinetes'
      ImageIndex = 16
      ImageName = 'Box_48px'
      OnExecute = ActionCatalogoGabinetesExecute
    end
    object ActionCatalogoRadios: TAction
      Category = 'Catalogos'
      Caption = 'Radios'
      ImageIndex = 1
      ImageName = 'Radio_48px'
      OnExecute = ActionCatalogoRadiosExecute
    end
    object ActionCatalogoPostes: TAction
      Category = 'Catalogos'
      Caption = 'Postes'
      ImageIndex = 9
      ImageName = 'Poste_48px'
      OnExecute = ActionCatalogoPostesExecute
    end
    object ActionCatalogoMiscelaneos: TAction
      Category = 'Catalogos'
      Caption = 'Miscel'#225'neos'
      ImageIndex = 14
      ImageName = 'Miscelaneos_48px'
      OnExecute = ActionCatalogoMiscelaneosExecute
    end
    object ActionCatalogoPmi: TAction
      Category = 'Catalogos'
      Caption = 'PMI'
      ImageIndex = 7
      ImageName = 'Pickup_48px'
      OnExecute = ActionCatalogoPmiExecute
    end
    object ActionCatalogoColores: TAction
      Category = 'Catalogos'
      Caption = 'Colores'
      ImageIndex = 12
      ImageName = 'Switch_48px'
      OnExecute = ActionCatalogoColoresExecute
    end
    object ActionCatalogoProveedores: TAction
      Category = 'Catalogos'
      Caption = 'Proveedores'
      ImageIndex = 15
      ImageName = 'Permissions_48'
      OnExecute = ActionCatalogoProveedoresExecute
    end
    object ActionCatalogoLocalidades: TAction
      Category = 'Catalogos'
      Caption = 'Localidades'
      ImageIndex = 13
      ImageName = 'Data_Protection_48'
      OnExecute = ActionCatalogoLocalidadesExecute
    end
    object ActionCatalogoMunicipios: TAction
      Category = 'Catalogos'
      Caption = 'Municipios'
      ImageIndex = 14
      ImageName = 'Miscelaneos_48px'
      OnExecute = ActionCatalogoMunicipiosExecute
    end
    object ActionMonitoreoPmi: TAction
      Category = 'Monitoreo'
      Caption = 'PM'
      ImageIndex = 5
      ImageName = 'Pmi_48px'
      OnExecute = ActionMonitoreoPmiExecute
    end
    object ActionValidarCamaras: TAction
      Category = 'Monitoreo'
      Caption = 'Validar'
      ImageIndex = 0
      ImageName = 'CamaraFija_48px'
      OnExecute = ActionValidarCamarasExecute
    end
    object ActionAcercaDe: TAction
      Caption = 'Acerca de...'
      OnExecute = ActionAcercaDeExecute
    end
    object ActionImprimirReportePMI: TAction
      Category = 'Imprimir'
      Caption = 'C'#233'dula de PMI'
      ImageIndex = 22
      OnExecute = ActionImprimirReportePMIExecute
    end
    object ActionMapaDisponibilidad: TAction
      Category = 'Imprimir'
      Caption = 'Mapa de disponibilidad'
      ImageIndex = 13
      ImageName = 'Data_Protection_48'
      OnExecute = ActionMapaDisponibilidadExecute
    end
    object ActionRegiones: TAction
      Category = 'Catalogos'
      Caption = 'Regiones'
      ImageIndex = 23
      OnExecute = ActionRegionesExecute
    end
    object ActionConfig: TAction
      Category = 'Catalogos'
      Caption = 'Usuarios'
      ImageIndex = 26
      OnExecute = ActionConfigExecute
    end
    object ActionBaseDeDatos: TAction
      Category = 'Catalogos'
      Caption = 'Base de datos'
      ImageIndex = 25
      OnExecute = ActionBaseDeDatosExecute
    end
    object ActionDiagrama: TAction
      Category = 'Topologia'
      Caption = 'Diagrama'
      ImageIndex = 4
      ImageName = 'Exit Sign_48px'
      OnExecute = ActionDiagramaExecute
    end
    object ActionOrigenDestino: TAction
      Category = 'Topologia'
      Caption = 'Origen-Destino'
      ImageIndex = 28
      OnExecute = ActionOrigenDestinoExecute
    end
    object ActionViabilidadEnlaces: TAction
      Category = 'Topologia'
      Caption = 'Viabilidad PtP'
      ImageIndex = 28
      OnExecute = ActionViabilidadEnlacesExecute
    end
    object ActionViabilidadPtMP: TAction
      Category = 'Topologia'
      Caption = 'Viabilidad PtMP'
      ImageIndex = 27
      OnExecute = ActionViabilidadPtMPExecute
    end
    object ActionDashboardDisponibilidadTotal: TAction
      Category = 'Dashboard'
      Caption = 'Disponibilidad'
      ImageIndex = 15
      ImageName = 'Permissions_48'
      OnExecute = ActionDashboardDisponibilidadTotalExecute
    end
    object ActionDashboardDisponibilidadPorRegion: TAction
      Category = 'Dashboard'
      Caption = 'Disponibilidad por regi'#243'n'
      ImageIndex = 31
      OnExecute = ActionDashboardDisponibilidadPorRegionExecute
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 32
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 33
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 34
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object FileExit2: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 18
    end
  end
  object MainMenu1: TMainMenu
    Left = 70
    Top = 140
    object N1: TMenuItem
      Caption = 'Archivo'
      object Configuracin1: TMenuItem
        Caption = 'Configuraci'#243'n'
        object Usuarios1: TMenuItem
          Action = ActionConfig
        end
      end
      object Salir1: TMenuItem
        Action = FileExit2
        Caption = '&Cerrar sesi'#243'n'
      end
    end
    object Diario1: TMenuItem
      Caption = 'Diario'
      object Muntosdemonitoreo1: TMenuItem
        Action = ActionMonitoreoPmi
        Caption = 'Puntos de monitoreo'
      end
      object Mapadedisponibilidad1: TMenuItem
        Action = ActionMapaDisponibilidad
      end
      object Mapadedisponibilidad2: TMenuItem
        Action = ActionValidarCamaras
        Caption = 'Validaci'#243'n manual'
      end
      object FichaPMI1: TMenuItem
        Action = ActionImprimirReportePMI
        Caption = 'Impresi'#243'n de C'#233'dula'
      end
    end
    object Diario2: TMenuItem
      Caption = 'Inventario'
      object Catlogos1: TMenuItem
        Caption = 'Cat'#225'logos b'#225'sicos'
        object Regiones1: TMenuItem
          Action = ActionRegiones
        end
        object Regiones2: TMenuItem
          Action = ActionCatalogoColores
        end
        object Proveedores1: TMenuItem
          Action = ActionCatalogoProveedores
        end
        object Proveedores2: TMenuItem
          Action = ActionCatalogoLocalidades
        end
        object Municipios1: TMenuItem
          Action = ActionCatalogoMunicipios
        end
      end
      object Municipios2: TMenuItem
        Caption = 'Componentes'
        object Gabinetes1: TMenuItem
          Action = ActionCatalogoGabinetes
        end
        object Gabinetes2: TMenuItem
          Action = ActionCatalogoRadios
        end
        object Postes1: TMenuItem
          Action = ActionCatalogoPostes
        end
        object Postes2: TMenuItem
          Action = ActionCatalogoMiscelaneos
        end
        object Cmaras1: TMenuItem
          Action = ActionCatalogoCamaras
        end
        object Cmaras2: TMenuItem
          Action = ActionCatalogoPmi
          Caption = 'Puntos de monitoreo'
        end
        object Switches1: TMenuItem
          Action = ActionCatalogoSwitches
        end
      end
    end
    object Dashboard1: TMenuItem
      Caption = 'Dashboard'
      object Disponibilidad1: TMenuItem
        Caption = 'Disponibilidad'
        object otal1: TMenuItem
          Action = ActionDashboardDisponibilidadTotal
        end
        object otal2: TMenuItem
          Action = ActionDashboardDisponibilidadPorRegion
        end
      end
    end
    object Help1: TMenuItem
      Caption = '&Ayuda'
      object About1: TMenuItem
        Action = ActionAcercaDe
      end
    end
  end
end
