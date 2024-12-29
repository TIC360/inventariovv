object FrmMapaDisponibilidad: TFrmMapaDisponibilidad
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Mapa de disponibilidad'
  ClientHeight = 442
  ClientWidth = 875
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
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 408
    Height = 442
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 181
      Width = 408
      Height = 3
      Cursor = crVSplit
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      Color = clBtnFace
      MinSize = 31
      ParentColor = False
    end
    object Splitter2: TSplitter
      Left = 145
      Top = 0
      Height = 181
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      MinSize = 31
    end
    object DBLookupListBox2: TDBLookupListBox
      Left = 0
      Top = 0
      Width = 145
      Height = 169
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DataSourceRegiones
      TabOrder = 0
    end
    object DBLookupListBox1: TDBLookupListBox
      Left = 148
      Top = 0
      Width = 260
      Height = 169
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DataSourceMunicipios
      TabOrder = 1
      OnClick = DBLookupListBox1Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 184
      Width = 408
      Height = 258
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      DataSource = DSCamaras
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PMI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMARA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGION'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO'
          Visible = False
        end>
    end
  end
  object Panel2: TPanel
    Left = 408
    Top = 0
    Width = 467
    Height = 442
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Mapa: TECNativeMap
    Left = 408
    Top = 0
    Width = 467
    Height = 442
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HideShapesWhenZoom = False
    HideShapesWhenWaitingTile = False
    DblClickZoom = True
    MouseWheelZoom = True
    latitude = 19.542600000000000000
    longitude = -96.910200000000000000
    Reticle = False
    ReticleColor = clBlack
    ZoomScaleFactor = 0
    NumericalZoom = 14.000000000000000000
    DragRect = drNone
    Draggable = True
    OnlyOneOpenInfoWindow = False
    WaitingForDestruction = False
    Active = True
    NbrThreadTile = ttFour
    Align = alClient
    TabOrder = 2
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 434
    Top = 114
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 430
    Top = 24
  end
  object FDTableRegiones: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'REGIONES'
    Left = 435
    Top = 200
  end
  object FDTableMunicipios: TFDTable
    IndexName = 'MUNICIPIOS_REGIONES_FK'
    MasterSource = DataSourceRegiones
    MasterFields = 'ID'
    DetailFields = 'REGION_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MUNICIPIOS'
    Left = 445
    Top = 280
  end
  object DataSourceMunicipios: TDataSource
    DataSet = FDTableMunicipios
    Left = 555
    Top = 280
  end
  object DataSourceRegiones: TDataSource
    DataSet = FDTableRegiones
    Left = 555
    Top = 200
  end
  object FDQueryCamaras: TFDQuery
    Filtered = True
    Filter = 'pmi='#39'RTSoftware'#39
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.pmi,'
      '  a.nombre AS camara,'
      '  d.nombre AS region,'
      '  c.nombre AS municipio,'
      '  e.nombre AS localidad,'
      '  a.pmi || '#39' '#39' || a.nombre AS cam,'
      '  a.camara AS serie,'
      '  b.domicilio,'
      '  b.foto1,'
      '  ec.estatus,'
      '  c.id     AS municipio_id,'
      '  b.latitud,'
      '  b.longitud,'
      '  a.azimut,'
      '  cati.nombre AS TIPO'
      'FROM'
      '  pmi_camara a'
      '  JOIN pmi b ON a.pmi = b.id'
      '  LEFT JOIN camara ca ON a.camara = ca.serie'
      '  LEFT JOIN camara_modelo camo ON ca.modelo_id = camo.id'
      '  LEFT JOIN camara_tipo cati ON camo.TIPO_ID = cati.id'
      '  LEFT JOIN municipios c ON b.municipio_id = c.id'
      '  LEFT JOIN regiones d ON c.region_id = d.id'
      '  LEFT JOIN localidades e ON b.localidad_id = e.id'
      
        '  LEFT JOIN estatus_camara ec ON a.camara = ec.camara AND ec.fec' +
        'ha = CURRENT_DATE'
      'WHERE'
      '  c.ID = :MUNICIPIO_ID'
      'ORDER BY'
      '  a.pmi, a.nombre;')
    Left = 700
    Top = 200
    ParamData = <
      item
        Name = 'MUNICIPIO_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '30092'
      end>
  end
  object DSCamaras: TDataSource
    DataSet = FDQueryCamaras
    Left = 701
    Top = 280
  end
end
