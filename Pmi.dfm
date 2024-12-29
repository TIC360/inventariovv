object DynamicPmi: TDynamicPmi
  Left = 0
  Top = 0
  Width = 758
  Height = 559
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 193
    Width = 758
    Height = 232
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 19
      Margins.Top = 19
      Margins.Right = 19
      Margins.Bottom = 19
      Caption = 'C'#225'maras'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSCamarasByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuCamaras
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPV4'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AZIMUT'
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 19
      Margins.Top = 19
      Margins.Right = 19
      Margins.Bottom = 19
      Caption = 'Switches'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSSwitchesByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuSwitches
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPV4'
            Width = 163
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Margins.Left = 19
      Margins.Top = 19
      Margins.Right = 19
      Margins.Bottom = 19
      Caption = 'Postes'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSPostesByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuPostes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALTURA'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 88
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Margins.Left = 19
      Margins.Top = 19
      Margins.Right = 19
      Margins.Bottom = 19
      Caption = 'Gabinetes'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSGabinetesByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuGabinetes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 125
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Margins.Left = 19
      Margins.Top = 19
      Margins.Right = 19
      Margins.Bottom = 19
      Caption = 'Radios'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSRadiosByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuRadios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPV4'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AZIMUT'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TILT'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOV'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BW'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALTURA'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRECUENCIA'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GANANCIA'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POTENCIA'
            Width = 74
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Varios'
      ImageIndex = 5
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 202
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DataSource = DSMiscelaneosByPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenuVarios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Caption = 'CANT'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICULO'
            Title.Caption = 'NOMBRE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOLIO'
            Width = 163
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 193
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 10
      Top = 15
      Width = 29
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Clave'
    end
    object Label8: TLabel
      Left = 10
      Top = 51
      Width = 50
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Direcci'#243'n'
    end
    object Label10: TLabel
      Left = 241
      Top = 15
      Width = 70
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Coordenadas'
    end
    object Label13: TLabel
      Left = 453
      Top = 120
      Width = 23
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'VCA'
    end
    object Label14: TLabel
      Left = 30
      Top = 122
      Width = 36
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'T.F.S.E.'
    end
    object Label15: TLabel
      Left = 233
      Top = 119
      Width = 35
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'T. F. Pr'
    end
    object LabelLat: TDBText
      Left = 630
      Top = 140
      Width = 81
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LATITUD'
      DataSource = DSPmiById
      Visible = False
    end
    object LabelLng: TDBText
      Left = 630
      Top = 157
      Width = 81
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LONGITUD'
      DataSource = DSPmiById
      Visible = False
    end
    object Button1: TButton
      Left = 133
      Top = 414
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ver mapa'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 489
      Top = 115
      Width = 61
      Height = 23
      Hint = 'Voltaje de Corriente Alterna'
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'AC'
      DataSource = DSPmiById
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DatePicker2: TDatePicker
      Left = 489
      Top = 148
      Width = 135
      Hint = 'Fecha en que se realiz'#243' la medici'#243'n'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Date = 45476.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      MaxYear = 2100
      MinYear = 2024
      ShowHint = True
      TabOrder = 2
      OnChange = DatePicker2Change
    end
    object DBEdit3: TDBEdit
      Left = 81
      Top = 116
      Width = 61
      Height = 23
      Hint = 'Tierra F'#237'sica del Sistema El'#233'ctrico'
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'TFSE'
      DataSource = DSPmiById
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = DBEdit3Exit
    end
    object DatePicker3: TDatePicker
      Left = 79
      Top = 148
      Width = 135
      Hint = 'Fecha en que se realiz'#243' la medici'#243'n'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Date = 45476.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      MaxYear = 2100
      MinYear = 2024
      ShowHint = True
      TabOrder = 4
      OnChange = DatePicker3Change
    end
    object DBEdit4: TDBEdit
      Left = 283
      Top = 115
      Width = 61
      Height = 23
      Hint = 'Tierra F'#237'sica del Pararrayos'
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'TFPR'
      DataSource = DSPmiById
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = DBEdit4Exit
    end
    object DatePicker4: TDatePicker
      Left = 283
      Top = 148
      Width = 135
      Hint = 'Fecha en que se realiz'#243' la medici'#243'n'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Date = 45476.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      MaxYear = 2100
      MinYear = 2024
      ShowHint = True
      TabOrder = 6
      OnChange = DatePicker4Change
    end
    object DBMemo1: TDBMemo
      Left = 81
      Top = 48
      Width = 570
      Height = 60
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'DIRECCION'
      DataSource = DSPmiById
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 12
      Width = 151
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'ID'
      DataSource = DSPmiById
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 357
      Top = 12
      Width = 174
      Height = 23
      Hint = 'Doble click para copiar URL de Google Maps'
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'COORDENADAS'
      DataSource = DSPmiById
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
      OnDblClick = DBEdit5DblClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 425
    Width = 758
    Height = 134
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 74
      Top = 131
      Width = 75
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'PMI completo'
    end
    object Label2: TLabel
      Left = 231
      Top = 131
      Width = 46
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'C'#225'maras'
    end
    object Label3: TLabel
      Left = 357
      Top = 131
      Width = 68
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Cimentaci'#243'n'
    end
    object Label4: TLabel
      Left = 518
      Top = 131
      Width = 30
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Mapa'
    end
    object DBImage1: TDBImage
      Left = 56
      Top = 9
      Width = 129
      Height = 112
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataField = 'foto1'
      DataSource = DSFoto
      PopupMenu = PopupMenu1
      Stretch = True
      TabOrder = 0
      OnDblClick = DBImage1DblClick
    end
    object DBImage2: TDBImage
      Left = 195
      Top = 9
      Width = 129
      Height = 112
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataField = 'foto2'
      DataSource = DSFoto
      PopupMenu = PopupMenu2
      Stretch = True
      TabOrder = 1
      OnDblClick = DBImage2DblClick
    end
    object DBImage3: TDBImage
      Left = 334
      Top = 9
      Width = 129
      Height = 112
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataField = 'foto3'
      DataSource = DSFoto
      PopupMenu = PopupMenu3
      Stretch = True
      TabOrder = 2
      OnDblClick = DBImage3DblClick
    end
    object DBImage4: TDBImage
      Left = 473
      Top = 9
      Width = 129
      Height = 112
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataField = 'foto4'
      DataSource = DSFoto
      PopupMenu = PopupMenu4
      Stretch = True
      TabOrder = 3
      OnDblClick = DBImage4DblClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 330
    object Cargarfoto1: TMenuItem
      Caption = 'Cargar foto'
      OnClick = Cargarfoto1Click
    end
    object Borrarfoto1: TMenuItem
      Caption = 'Borrar foto'
      OnClick = Borrarfoto1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 575
    Top = 330
    object Cargarfoto2: TMenuItem
      Caption = 'Cargar foto'
      OnClick = Cargarfoto2Click
    end
    object Borrarfoto2: TMenuItem
      Caption = 'Borrar foto'
      OnClick = Borrarfoto2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 726
    Top = 330
    object Cargarfoto3: TMenuItem
      Caption = 'Cargar foto'
      OnClick = Cargarfoto3Click
    end
    object Borrarfoto3: TMenuItem
      Caption = 'Borrar foto'
      OnClick = Borrarfoto3Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 877
    Top = 330
    object Cargarfoto4: TMenuItem
      Caption = 'Cargar foto'
      OnClick = Cargarfoto4Click
    end
    object Borrarfoto4: TMenuItem
      Caption = 'Borrar foto'
      OnClick = Borrarfoto4Click
    end
  end
  object PopupMenuCamaras: TPopupMenu
    Images = ImageList1
    Left = 274
    Top = 30
    object Agregar6: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar6Click
    end
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      ImageIndex = 2
      OnClick = Modificar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Eliminar6: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar6Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Actualizar6: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar6Click
    end
  end
  object PopupMenuGabinetes: TPopupMenu
    Images = ImageList1
    Left = 560
    Top = 60
    object Agregar3: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar3Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Eliminar3: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar3Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Actualizar3: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar3Click
    end
  end
  object PopupMenuPostes: TPopupMenu
    Images = ImageList1
    Left = 462
    Top = 30
    object Agregar4: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar4Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Eliminar4: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar4Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Actualizar4: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar4Click
    end
  end
  object PopupMenuRadios: TPopupMenu
    Images = ImageList1
    Left = 658
    Top = 30
    object Agregar2: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar2Click
    end
    object Modificar5: TMenuItem
      Caption = 'Modificar'
      ImageIndex = 2
      OnClick = Modificar5Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Eliminar2: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar2Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Actualizar2: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar2Click
    end
  end
  object PopupMenuSwitches: TPopupMenu
    Images = ImageList1
    Left = 376
    Top = 64
    object Agregar5: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar5Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Eliminar5: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar5Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Actualizar5: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar5Click
    end
  end
  object PopupMenuVarios: TPopupMenu
    Images = ImageList1
    Left = 758
    Top = 59
    object Agregar1: TMenuItem
      Caption = 'Agregar'
      ImageIndex = 0
      OnClick = Agregar1Click
    end
    object Modificar6: TMenuItem
      Caption = 'Modificar'
      ImageIndex = 2
      OnClick = Modificar6Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 1
      OnClick = Eliminar1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Actualizar1: TMenuItem
      Caption = 'Refrescar'
      ImageIndex = 3
      OnClick = Actualizar1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 701
    Top = 486
  end
  object CamarasByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      
        '  b.serie, b.folio, b.ipv4, c.nombre as modelo, d.nombre as marc' +
        'a, '
      '  e.nombre as tipo, a.nombre AS nombre, a.azimut '
      'FROM'
      
        '  pmi_camara a, camara b, camara_modelo c, camara_marca d, camar' +
        'a_tipo e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.camara=b.serie AND b.modelo_id=c.id AND c.m' +
        'arca_id=d.id '
      '  AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 29
    Top = 122
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0001'
      end>
  end
  object DSCamarasByPmi: TDataSource
    DataSet = CamarasByPmi
    Left = 177
    Top = 122
  end
  object SwitchesByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      
        '  b.serie, b.folio, b.ipv4, c.nombre as modelo, d.nombre as marc' +
        'a, e.nombre as tipo '
      'FROM'
      
        '  pmi_switch a, switch b, switch_modelo c, switch_marca d, switc' +
        'h_tipo e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.switch=b.serie AND b.modelo_id=c.id AND c.m' +
        'arca_id=d.id AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 29
    Top = 202
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'CO0011'
      end>
  end
  object DSSwitchesByPmi: TDataSource
    DataSet = SwitchesByPmi
    Left = 177
    Top = 202
  end
  object PostesByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      
        '  b.serie, b.folio, b.altura, c.nombre as modelo, d.nombre as ma' +
        'rca, e.nombre as tipo '
      'FROM'
      
        '  pmi_poste a, poste b, poste_modelo c, poste_marca d, poste_tip' +
        'o e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.poste=b.serie AND b.modelo_id=c.id AND c.ma' +
        'rca_id=d.id AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 29
    Top = 274
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'CO0011'
      end>
  end
  object DSPostesByPmi: TDataSource
    DataSet = PostesByPmi
    Left = 177
    Top = 274
  end
  object GabinetesByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      
        '  b.serie, b.folio, c.nombre as modelo, d.nombre as marca, e.nom' +
        'bre as tipo '
      'FROM'
      
        '  pmi_gabinete a, gabinete b, gabinete_modelo c, gabinete_marca ' +
        'd, gabinete_tipo e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.gabinete=b.serie AND b.modelo_id=c.id AND c' +
        '.marca_id=d.id AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 29
    Top = 354
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'CO0011'
      end>
  end
  object DSGabinetesByPmi: TDataSource
    DataSet = GabinetesByPmi
    Left = 177
    Top = 354
  end
  object RadiosByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  b.serie, '
      '  b.folio, '
      '  b.ipv4, '
      '  c.nombre as modelo, '
      '  d.nombre as marca, '
      '  e.nombre as tipo, '
      '  a.azimut, '
      '  a.tilt,'
      '  a.fov,'
      '  a.bw,'
      '  a.altura,'
      '  a.frecuencia,'
      '  a.ganancia,'
      '  a.potencia '
      'FROM'
      
        '  pmi_radio a, radio b, radio_modelo c, radio_marca d, radio_tip' +
        'o e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.radio=b.serie AND b.modelo_id=c.id AND c.ma' +
        'rca_id=d.id AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 29
    Top = 422
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0001'
      end>
  end
  object DSRadiosByPmi: TDataSource
    DataSet = RadiosByPmi
    Left = 177
    Top = 422
  end
  object MiscelaneosByPmi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  b.id,'
      '  b.serie, '
      '  b.folio, '
      '  c.nombre as modelo, '
      '  d.nombre as marca, '
      '  e.nombre as tipo, '
      '  a.cantidad,'
      '  b.articulo '
      'FROM'
      '  pmi_miscelaneo a, '
      '  miscelaneo b, '
      '  miscelaneo_modelo c, '
      '  miscelaneo_marca d, '
      '  miscelaneo_tipo e'
      'WHERE'
      
        '  a.pmi = :PMI AND a.miscelaneo=b.id AND b.modelo_id=c.id AND c.' +
        'marca_id=d.id AND c.tipo_id=e.id'
      'ORDER BY'
      '  tipo')
    Left = 33
    Top = 500
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0001'
      end>
  end
  object DSMiscelaneosByPmi: TDataSource
    DataSet = MiscelaneosByPmi
    Left = 179
    Top = 500
  end
  object FDQueryFoto1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT foto1, foto2, foto3, foto4, id as serie FROM pmi WHERE id' +
        ' = :ID')
    Left = 484
    Top = 484
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0001'
      end>
  end
  object DSFoto: TDataSource
    DataSet = FDQueryFoto1
    Left = 593
    Top = 460
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 510
    Top = 196
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 646
    Top = 196
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 870
    Top = 518
  end
  object PmiTableById: TFDQuery
    Connection = FDConnection1
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayNumeric = '0.00'
    SQL.Strings = (
      'SELECT'
      '  a.id,'
      
        '  a.domicilio || '#39' ('#39' || COALESCE(b.nombre, '#39'Sin municipio'#39') || ' +
        #39') ('#39' || COALESCE(c.nombre, '#39'Sin localidad'#39') || '#39')'#39' AS direccion' +
        ','
      '  a.longitud || '#39', '#39' || a.latitud AS coordenadas,'
      '  a.comentario1,'
      '  a.ac,'
      '  a.tfse,'
      '  a.tfpr,'
      '  a.fac,'
      '  a.ftfse,'
      '  a.ftfpr,'
      '  a.comentario2,'
      '  a.comentario3,'
      '  a.comentario4,'
      '  a.latitud,'
      '  a.longitud   '
      'FROM'
      '  pmi a'
      '  LEFT JOIN municipios b ON a.municipio_id = b.id'
      '  LEFT JOIN localidades c ON a.localidad_id = c.id'
      'WHERE'
      '  a.ID = :ID;'
      '')
    Left = 310
    Top = 515
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0010'
      end>
  end
  object DSPmiById: TDataSource
    DataSet = PmiTableById
    Left = 400
    Top = 515
  end
  object FDQueryMediciones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  id, fac, ftfse, ftfpr'
      'FROM'
      '  pmi'
      'WHERE'
      '  id = :ID')
    Left = 366
    Top = 394
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = 'PR0001'
      end>
  end
  object DSMediciones: TDataSource
    DataSet = FDQueryMediciones
    Left = 490
    Top = 386
  end
  object ImageList1: TImageList
    Left = 860
    Top = 30
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCF0DC317DC37ABD54B150F869BA65DAA9D7A67D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DBFD316A73F6BD3B48F4F8535EF5DA9BA2FA7D000000000000
      00000000000000000000000000000000000000000000DDEAED2B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5F2
      E42650AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF73BF
      6FCB00000000000000000000000000000000000000000000000000000000E1E2
      FD263643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF5E69
      F6CB00000000000000000000000000000000000000005C695FFA645A45FF20AD
      D9F98AE2FF77FCFEFF0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1D9EE2DB0279CFFB0279CFFB22E9EF6EAC9E73F0000
      0000C35DB4BF0000000000000000000000000000000000000000D1EBD14150AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF54B050F90000000000000000000000000000000000000000CCCFFB413643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3A47F4F90000000000000000000000000000000095BDC48B1BABD8FF07C1
      FFFF07C1FFFF42C7FFC039AFFFC6000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EED1EA36B738A4EAB027
      9CFFB0279CFFF5E6F41C00000000FDFAFD06F1DBEE29C96DBCACB0279CFFB027
      9CFFB0299DFC00000000000000000000000000000000FEFFFE0150AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF77C174C5000000000000000000000000FEFEFF013643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF636DF5C50000000000000000000000000000000007C1FFFF07C1
      FFFF41C7FFC10098FFFF0098FFFF38AEFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF7AC39CB027
      9CFFB0279CFF0000000000000000000000000000000000000000B0279CFFB027
      9CFFB0279CFF000000000000000000000000000000006ABC68D750AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF000000000000000000000000565FF5D73643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF0000000000000000000000000000000007C1FFFF41C7
      FFC10098FFFF0098FFFF0098FFFF0098FFFF38AEFFC700000000000000000000
      0000000000000000000000000000000000000000000000000000B0279CFFBC48
      ABD8B0279CFF00000000000000000000000000000000F8EBF518DA9AD077BF52
      AFCCB0279CFF0000000000000000000000000000000050AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFFA9D7A67D00000000000000003643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF9BA2FA7D0000000000000000000000006BCFFF950098
      FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF32ACFFCD000000000000
      00000000000000000000000000000000000000000000F4E0F123B0279CFF0000
      0000D590CC830000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050AF4CFF50AF4CFF50AF
      4CFFC5E5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50AF
      4CFF50AF4CFF50AF4CFF6ABC68D700000000000000003643F4FF3643F4FF3643
      F4FFBDC1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3643
      F4FF3643F4FF3643F4FF565FF5D70000000000000000000000000000000027A7
      FFD80098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF38AEFFC70000
      00000000000000000000000000000000000000000000D48AC88AB0279CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4E2F222D58AC98900000000000000000000000050AF4CFF50AF4CFF50AF
      4CFFC5E5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50AF
      4CFF50AF4CFF50AF4CFF58B355F200000000000000003643F4FF3643F4FF3643
      F4FFBDC1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3643
      F4FF3643F4FF3643F4FF404CF4F2000000000000000000000000000000000000
      000028A8FFD70098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF37AE
      FFC80000000000000000000000000000000000000000CC74BEA4B0279CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF5FA0BB0279CFF00000000000000000000000050AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF7DC37ABD00000000000000003643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF6A73F6BD000000000000000000000000000000000000
      00000000000028A8FFD70098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF37AEFFC80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4B4DC58B0279CFF00000000000000000000000050AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFFDDEEDC3200000000000000003643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FFD7D9FD32000000000000000000000000000000000000
      0000000000000000000028A8FFD70098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF37AEFFC800000000000000000000000000000000F3DDF0270000
      0000000000000000000000000000000000000000000000000000F0D5EB32DB9B
      D275B12C9EF9BD4AACD4000000000000000000000000C1E3C05950AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFFC5E5C4FFC5E5C4FF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF000000000000000000000000B8BDFB593643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
      000000000000000000000000000028A8FFD70098FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF0098FFFFEDF8FF12000000000000000000000000DCA3D56DB027
      9CFFB0279CFFB0279CFF00000000000000000000000000000000D385C68FB027
      9CFFB0279CFFFDFBFD050000000000000000000000000000000059B355F150AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFFE6F2E52500000000000000000000000000000000414DF4F13643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FFE1E4FC2500000000000000000000000000000000000000000000
      00000000000000000000000000000000000028A8FFD70098FFFF0098FFFF0098
      FFFF0098FFFFECF7FF1300000000000000000000000000000000F1DAEF2AB027
      9CFFB0279CFFF3E1F12400000000000000000000000000000000B637A3EBB027
      9CFFB0279CFFDBA0D370000000000000000000000000000000000000000058B2
      54F350AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFFCBE6C94C0000000000000000000000000000000000000000000000003F4B
      F5F33643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FFC3C6FC4C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028A8FFD70098FFFF0098
      FFFFECF7FF13000000000000000000000000000000000000000000000000B027
      9CFFC054B0C9B0279CFFB0279CFFB0279CFFB22D9FF700000000D17FC496E5BA
      DF51FBF3FA0D0000000000000000000000000000000000000000000000000000
      0000C2E3C05850AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF6ABB67D8FEFF
      FE01000000000000000000000000000000000000000000000000000000000000
      0000B9BEFA583643F4FF3643F4FF3643F4FF3643F4FF3643F4FF545FF5D8FEFE
      FF01000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029A9FFD6EBF7
      FF14000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1AEDA5FCC75C0A2D385C68F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF83FF83FBFFFFFFF
      E00FE00F83FFFC17C007C00781FF820780038003C0FFC7C780038003C07FC787
      80018001C03F97FF80018001E01F9FF380018001F00F9FF380018001F807FFF3
      80018001FC03DFC380038003FE01C3C3C003C003FF03C3C3E007E007FF87E047
      F00FF00FFFCFFC7FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
