object NuevoPmiGabinetes: TNuevoPmiGabinetes
  Left = 0
  Top = 0
  Caption = 'Agregar gabinete'
  ClientHeight = 294
  ClientWidth = 389
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
    Width = 389
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
    Top = 129
    Width = 389
    Height = 165
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 387
      Height = 163
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
    Width = 389
    Height = 104
    Align = alTop
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 14
      Top = 0
      Width = 203
      Height = 89
      Caption = 'Buscar'
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 52
        Width = 35
        Height = 15
        Caption = 'Buscar'
      end
      object Label2: TLabel
        Left = 20
        Top = 23
        Width = 13
        Height = 15
        Caption = 'En'
      end
      object ComboBox1: TComboBox
        Left = 61
        Top = 21
        Width = 120
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
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
      object SearchBox1: TSearchBox
        Left = 61
        Top = 50
        Width = 121
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 1
        OnInvokeSearch = SearchBox1InvokeSearch
      end
    end
    object Button2: TButton
      Left = 223
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 223
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Agregar'
      TabOrder = 2
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
      
        #9'gabinete a, gabinete_modelo b, gabinete_marca c, gabinete_tipo ' +
        'd, '
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
