object NuevoPmiRadios: TNuevoPmiRadios
  Left = 0
  Top = 0
  Caption = 'Agregar radio'
  ClientHeight = 369
  ClientWidth = 683
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
    Width = 683
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
    Top = 185
    Width = 683
    Height = 184
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 681
      Height = 182
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
    Width = 683
    Height = 160
    Align = alTop
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 10
      Top = 6
      Width = 191
      Height = 91
      Caption = 'Buscar'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 53
        Width = 35
        Height = 15
        Caption = 'Buscar'
      end
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 13
        Height = 15
        Caption = 'En'
      end
      object ComboBox1: TComboBox
        Left = 54
        Top = 24
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
        Left = 57
        Top = 50
        Width = 121
        Height = 23
        TabOrder = 1
        OnInvokeSearch = SearchBox1InvokeSearch
      end
    end
    object Button1: TButton
      Left = 598
      Top = 19
      Width = 76
      Height = 25
      Caption = 'Agregar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 598
      Top = 50
      Width = 76
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object GroupBox2: TGroupBox
      Left = 207
      Top = 6
      Width = 385
      Height = 146
      Caption = 'Configuraci'#243'n'
      TabOrder = 3
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 38
        Height = 15
        Caption = 'Azimut'
      end
      object Label4: TLabel
        Left = 16
        Top = 53
        Width = 16
        Height = 15
        Caption = 'Tilt'
      end
      object Label7: TLabel
        Left = 16
        Top = 82
        Width = 20
        Height = 15
        Caption = 'FoV'
      end
      object Label8: TLabel
        Left = 16
        Top = 110
        Width = 18
        Height = 15
        Caption = 'BW'
      end
      object Label9: TLabel
        Left = 127
        Top = 24
        Width = 36
        Height = 15
        Caption = 'grados'
      end
      object Label10: TLabel
        Left = 127
        Top = 53
        Width = 36
        Height = 15
        Caption = 'grados'
      end
      object Label11: TLabel
        Left = 127
        Top = 82
        Width = 36
        Height = 15
        Caption = 'grados'
      end
      object Label12: TLabel
        Left = 127
        Top = 110
        Width = 25
        Height = 15
        Caption = 'MHz'
      end
      object Label13: TLabel
        Left = 198
        Top = 24
        Width = 32
        Height = 15
        Caption = 'Altura'
      end
      object Label14: TLabel
        Left = 326
        Top = 24
        Width = 37
        Height = 15
        Caption = 'metros'
      end
      object Label15: TLabel
        Left = 198
        Top = 53
        Width = 57
        Height = 15
        Caption = 'Frecuencia'
      end
      object Label16: TLabel
        Left = 326
        Top = 53
        Width = 25
        Height = 15
        Caption = 'MHz'
      end
      object Label17: TLabel
        Left = 198
        Top = 82
        Width = 49
        Height = 15
        Caption = 'Ganancia'
      end
      object Label18: TLabel
        Left = 326
        Top = 82
        Width = 17
        Height = 15
        Caption = 'dBi'
      end
      object Label19: TLabel
        Left = 198
        Top = 110
        Width = 46
        Height = 15
        Caption = 'Potencia'
      end
      object Label20: TLabel
        Left = 326
        Top = 110
        Width = 25
        Height = 15
        Caption = 'dBm'
      end
      object EditAzimut: TEdit
        Left = 65
        Top = 22
        Width = 56
        Height = 23
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        Text = '0'
      end
      object EditTilt: TEdit
        Left = 65
        Top = 50
        Width = 56
        Height = 23
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        Text = '0'
      end
      object EditFoV: TEdit
        Left = 65
        Top = 79
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 2
        Text = '0'
      end
      object EditBW: TEdit
        Left = 65
        Top = 108
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 3
        Text = '0'
      end
      object EditAltura: TEdit
        Left = 264
        Top = 22
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 4
        Text = '0'
      end
      object EditFrecuencia: TEdit
        Left = 264
        Top = 50
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 5
        Text = '0'
      end
      object EditGanancia: TEdit
        Left = 264
        Top = 79
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 6
        Text = '0'
      end
      object EditPotencia: TEdit
        Left = 264
        Top = 108
        Width = 56
        Height = 23
        Alignment = taCenter
        TabOrder = 7
        Text = '0'
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
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
      #9'radio a, radio_modelo b, radio_marca c, radio_tipo d, '
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
