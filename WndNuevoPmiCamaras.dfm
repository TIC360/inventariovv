object NuevoPmiCamaras: TNuevoPmiCamaras
  Left = 0
  Top = 0
  Caption = 'Agregar c'#225'mara'
  ClientHeight = 483
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'XA0000'
    Color = clAliceblue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDarkturquoise
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 233
    Width = 743
    Height = 250
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 741
      Height = 248
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource1
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
          FieldName = 'SERIE'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOLIO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICULO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COLOR_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PROVEEDOR_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COLOR'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVEEDOR'
          Width = 150
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 25
    Width = 743
    Height = 208
    Align = alTop
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    object LabelLng: TLabel
      Left = 16
      Top = 103
      Width = 48
      Height = 15
      Caption = 'LabelLng'
      Visible = False
    end
    object LabelLat: TLabel
      Left = 88
      Top = 103
      Width = 44
      Height = 15
      Caption = 'LabelLat'
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 506
      Top = 0
      Width = 207
      Height = 119
      Caption = 'Personalizar la c'#225'mara'
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 26
        Width = 44
        Height = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nombre'
      end
      object Label4: TLabel
        Left = 8
        Top = 85
        Width = 38
        Height = 15
        Caption = 'Azimut'
      end
      object EditNombre: TEdit
        Left = 64
        Top = 22
        Width = 129
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Azimut: TTrackBar
        Left = 53
        Top = 84
        Width = 150
        Height = 23
        Max = 360
        ShowSelRange = False
        TabOrder = 1
        TickStyle = tsManual
        OnChange = AzimutChange
      end
      object Button3: TButton
        Left = 64
        Top = 53
        Width = 129
        Height = 25
        Caption = 'Ver azimut en mapa'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 0
      Width = 177
      Height = 90
      Caption = 'Buscar'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 52
        Width = 35
        Height = 15
        Caption = 'Buscar'
      end
      object Label2: TLabel
        Left = 8
        Top = 26
        Width = 13
        Height = 15
        Caption = 'En'
      end
      object SearchBox1: TSearchBox
        Left = 49
        Top = 52
        Width = 121
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 0
        OnInvokeSearch = SearchBox1InvokeSearch
      end
      object ComboBox1: TComboBox
        Left = 49
        Top = 23
        Width = 121
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Cualquier dato'
        Items.Strings = (
          'Cualquier dato'
          'Serie'
          'Folio'
          'Art'#237'culo'
          'Modelo'
          'Descripci'#243'n'
          'Marca'
          'Tipo'
          'Color'
          'Proveedor')
      end
    end
    object Button2: TButton
      Left = 542
      Top = 126
      Width = 75
      Height = 24
      Caption = 'Cerrar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 623
      Top = 126
      Width = 75
      Height = 24
      Caption = 'Agregar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Mapa: TECNativeMap
      Left = 191
      Top = 6
      Width = 308
      Height = 196
      HideShapesWhenZoom = False
      HideShapesWhenWaitingTile = False
      DblClickZoom = True
      MouseWheelZoom = True
      latitude = 43.232951000000000000
      longitude = 0.078081999999994910
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
      Visible = False
      TabOrder = 4
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor'
      '         '
      'FROM '
      #9'camara a, camara_modelo b, camara_marca c, camara_tipo d, '
      '        colores e, proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 347
    Top = 186
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 443
    Top = 186
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor '
      'FROM '
      #9'camara a, camara_modelo b, camara_marca c, camara_tipo d, '
      '        colores e, proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 531
    Top = 186
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 110
    Top = 186
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 246
    Top = 186
  end
end
