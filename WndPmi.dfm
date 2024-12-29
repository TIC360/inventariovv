object FrmPmi: TFrmPmi
  Left = 0
  Top = 0
  Caption = 'Puntos de Monitoreo'
  ClientHeight = 495
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 305
    Top = 0
    Height = 495
    Beveled = True
    ExplicitHeight = 442
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 495
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      305
      495)
    object Label8: TLabel
      Left = 6
      Top = 50
      Width = 51
      Height = 15
      Caption = 'Domicilio'
    end
    object Label10: TLabel
      Left = 6
      Top = 148
      Width = 54
      Height = 15
      Caption = 'Municipio'
    end
    object Label13: TLabel
      Left = 6
      Top = 24
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object Label15: TLabel
      Left = 6
      Top = 177
      Width = 51
      Height = 15
      Caption = 'Localidad'
    end
    object Label2: TLabel
      Left = 6
      Top = 228
      Width = 48
      Height = 15
      Caption = 'Longitud'
    end
    object Label3: TLabel
      Left = 6
      Top = 257
      Width = 37
      Height = 15
      Caption = 'Latitud'
    end
    object DBText1: TDBText
      Left = 66
      Top = 177
      Width = 184
      Height = 17
      DataField = 'LOCALIDAD'
      DataSource = DSPmi
    end
    object DBText2: TDBText
      Left = 66
      Top = 149
      Width = 184
      Height = 17
      DataField = 'MUNICIPIO'
      DataSource = DSPmi
    end
    object Label1: TLabel
      Left = 6
      Top = 202
      Width = 37
      Height = 15
      Caption = 'Regi'#243'n'
    end
    object DBText3: TDBText
      Left = 66
      Top = 202
      Width = 113
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'REGION'
      DataSource = DSPmi
    end
    object Label4: TLabel
      Left = 6
      Top = 286
      Width = 23
      Height = 15
      Caption = 'Tipo'
    end
    object Label5: TLabel
      Left = 89
      Top = 356
      Width = 72
      Height = 15
      Caption = 'Tipo de mapa'
    end
    object DBEdit8: TDBEdit
      Left = 66
      Top = 21
      Width = 95
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ID'
      DataSource = DSPmi
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 66
      Top = 50
      Width = 232
      Height = 88
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DOMICILIO'
      DataSource = DSPmi
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 66
      Top = 145
      Width = 232
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'MUNICIPIO_ID'
      DataSource = DSPmi
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSMunicipios
      TabOrder = 2
      Visible = False
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 66
      Top = 174
      Width = 232
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'LOCALIDAD_ID'
      DataSource = DSPmi
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSLocalidades
      TabOrder = 3
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 66
      Top = 226
      Width = 232
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'LONGITUD'
      DataSource = DSPmi
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 66
      Top = 254
      Width = 232
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'LATITUD'
      DataSource = DSPmi
      TabOrder = 5
    end
    object ActivityIndicator1: TActivityIndicator
      Left = 106
      Top = 322
      IndicatorColor = aicCustom
      IndicatorCustomColor = clAqua
      IndicatorSize = aisSmall
      IndicatorType = aitRefresh
    end
    object BtnUbicar: TButton
      Left = 167
      Top = 322
      Width = 132
      Height = 25
      Caption = 'Mostrar ubicaci'#243'n'
      TabOrder = 7
      OnClick = BtnUbicarClick
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 66
      Top = 283
      Width = 232
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'TIPO_ID'
      DataSource = DSPmi
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSTipo
      TabOrder = 6
    end
    object ComboBox2: TComboBox
      Left = 167
      Top = 353
      Width = 132
      Height = 23
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 9
      Text = 'Mapa de vialidades'
      OnChange = ComboBox2Change
      Items.Strings = (
        'Mapa satelital'
        'Mapa del terreno'
        'Mapa de vialidades')
    end
  end
  object Panel5: TPanel
    Left = 308
    Top = 0
    Width = 492
    Height = 495
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 254
      Width = 492
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 467
      Width = 486
      Height = 25
      DataSource = DSPmi
      Align = alBottom
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 254
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 42
        Width = 490
        Height = 188
        Align = alClient
        DataSource = DSPmi
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'NOMBRE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUNICIPIO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALIDAD'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMICILIO'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LONGITUD'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LATITUD'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUNICIPIO_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOCALIDAD_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'REGION'
            Width = 120
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 490
        Height = 41
        Align = alTop
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object Label19: TLabel
          Left = 14
          Top = 12
          Width = 51
          Height = 15
          Caption = 'Filtrar por'
        end
        object ComboBox1: TComboBox
          Left = 73
          Top = 10
          Width = 145
          Height = 23
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'Nombre'
          Items.Strings = (
            'Nombre'
            'Domicilio'
            'Municipio'
            'Localidad'
            'Regi'#243'n'
            'Sin filtro')
        end
        object SearchBox1: TSearchBox
          Left = 224
          Top = 10
          Width = 153
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 1
          OnInvokeSearch = SearchBox1InvokeSearch
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 230
        Width = 490
        Height = 23
        Align = alBottom
        Alignment = taLeftJustify
        Caption = ' Listo'
        TabOrder = 2
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 257
      Width = 492
      Height = 207
      Align = alClient
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 2
      object Mapa: TECNativeMap
        Left = 1
        Top = 1
        Width = 490
        Height = 205
        HideShapesWhenZoom = False
        HideShapesWhenWaitingTile = False
        DblClickZoom = True
        MouseWheelZoom = True
        latitude = 43.232951000000000000
        longitude = 0.078081999999994910
        Reticle = True
        ReticleColor = clBlack
        ZoomScaleFactor = 0
        NumericalZoom = 14.000000000000000000
        DragRect = drNone
        Draggable = True
        TileServer = tsGoogle
        OnlyOneOpenInfoWindow = False
        WaitingForDestruction = False
        Active = False
        NbrThreadTile = ttFour
        OnShapeDrag = MapaShapeDrag
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object PmiTable: TFDQuery
    MasterSource = DSPmi
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.id,'
      '  a.domicilio,'
      '  a.longitud,'
      '  a.latitud,'
      '  a.municipio_id,'
      '  a.localidad_id,'
      '  b.nombre as municipio,'
      '  d.nombre as localidad'
      'FROM'
      '  pmi a'
      '  JOIN municipios b ON a.municipio_id = b.id'
      '  LEFT JOIN localidades d ON a.localidad_id = d.id;')
    Left = 548
    Top = 160
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 450
    Top = 336
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 419
    Top = 375
  end
  object FDQueryLocalidades: TFDQuery
    MasterSource = DSPmi
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  a.id, a.municipio_id, a.nombre, b.nombre as municipio '
      'FROM '
      '  localidades a, municipios b'
      'WHERE'
      '  a.municipio_id = b.id'
      'ORDER BY'
      '  b.nombre, a.nombre')
    Left = 16
    Top = 316
  end
  object DSLocalidades: TDataSource
    DataSet = FDQueryLocalidades
    Left = 88
    Top = 380
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode, evRowsetSize]
    FetchOptions.RowsetSize = 10000
    SQL.Strings = (
      'SELECT'
      '  a.id,'
      '  a.domicilio,'
      '  a.longitud,'
      '  a.latitud,'
      '  a.municipio_id,'
      '  a.localidad_id,'
      '  b.nombre as municipio,'
      '  d.nombre as localidad,'
      '  r.nombre as region,'
      '  a.tipo_id'
      'FROM'
      '  pmi a'
      '  JOIN municipios b ON a.municipio_id = b.id'
      '  LEFT JOIN localidades d ON a.localidad_id = d.id'
      '  JOIN regiones r ON r.id = b.region_id'
      'ORDER BY'
      '  a.id')
    Left = 64
    Top = 120
  end
  object DSPmi: TDataSource
    DataSet = FDQuery1
    Left = 64
    Top = 192
  end
  object FDQueryMunicipios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM MUNICIPIOS')
    Left = 62
    Top = 398
  end
  object DSMunicipios: TDataSource
    DataSet = FDQueryMunicipios
    Left = 92
    Top = 446
  end
  object FDTableTipo: TFDTable
    IndexName = 'PMI_TIPO_PK'
    MasterSource = DSPmi
    DetailFields = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_TIPO'
    Left = 260
    Top = 420
  end
  object DSTipo: TDataSource
    DataSet = FDTableTipo
    Left = 180
    Top = 428
  end
end
