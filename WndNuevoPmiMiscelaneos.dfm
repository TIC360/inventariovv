object NuevoPmiMiscelaneos: TNuevoPmiMiscelaneos
  Left = 0
  Top = 0
  Caption = 'Agregar miscel'#225'neo'
  ClientHeight = 289
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 25
    Align = alTop
    Caption = 'XA0000'
    Color = clAliceblue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 114
    Width = 495
    Height = 175
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 493
      Height = 173
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
    Width = 495
    Height = 89
    Align = alTop
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 16
      Top = 0
      Width = 193
      Height = 81
      Caption = 'Buscar'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 49
        Width = 35
        Height = 15
        Caption = 'Buscar'
      end
      object Label2: TLabel
        Left = 16
        Top = 20
        Width = 13
        Height = 15
        Caption = 'En'
      end
      object SearchBox1: TSearchBox
        Left = 57
        Top = 46
        Width = 121
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 0
        OnInvokeSearch = SearchBox1InvokeSearch
      end
      object ComboBox1: TComboBox
        Left = 57
        Top = 18
        Width = 120
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
    object GroupBox2: TGroupBox
      Left = 215
      Top = 0
      Width = 178
      Height = 81
      Caption = 'Unidades'
      TabOrder = 1
      object Label3: TLabel
        Left = 17
        Top = 22
        Width = 48
        Height = 15
        Caption = 'Cantidad'
      end
      object NumberBox1: TNumberBox
        Left = 79
        Top = 18
        Width = 84
        Height = 23
        MinValue = 1.000000000000000000
        MaxValue = 999999.000000000000000000
        TabOrder = 0
        Value = 1.000000000000000000
        SpinButtonOptions.Placement = nbspInline
      end
    end
    object Button2: TButton
      Left = 399
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 399
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Agregar'
      TabOrder = 3
      OnClick = Button1Click
    end
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
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 110
    Top = 186
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '        a.id,'
      #9'a.serie, a.folio, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor'
      '         '
      'FROM '
      
        #9'miscelaneo a, miscelaneo_modelo b, miscelaneo_marca c, miscelan' +
        'eo_tipo d, '
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
end
