object FrmCamaras: TFrmCamaras
  Left = 0
  Top = 0
  Caption = 'C'#225'maras'
  ClientHeight = 442
  ClientWidth = 834
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 834
    Height = 442
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'C'#225'maras'
      object Splitter1: TSplitter
        Left = 257
        Top = 0
        Height = 412
        ExplicitHeight = 414
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 0
        object Label8: TLabel
          Left = 6
          Top = 40
          Width = 25
          Height = 15
          Caption = 'Serie'
        end
        object Label9: TLabel
          Left = 6
          Top = 156
          Width = 22
          Height = 15
          Caption = 'IPv4'
        end
        object Label10: TLabel
          Left = 6
          Top = 127
          Width = 41
          Height = 15
          Caption = 'Modelo'
        end
        object Label13: TLabel
          Left = 6
          Top = 12
          Width = 42
          Height = 15
          Caption = 'Art'#237'culo'
        end
        object Label14: TLabel
          Left = 6
          Top = 185
          Width = 27
          Height = 15
          Caption = 'MAC'
        end
        object Label15: TLabel
          Left = 6
          Top = 214
          Width = 29
          Height = 15
          Caption = 'Color'
        end
        object Label16: TLabel
          Left = 6
          Top = 242
          Width = 54
          Height = 15
          Caption = 'Proveedor'
        end
        object Label17: TLabel
          Left = 6
          Top = 70
          Width = 26
          Height = 15
          Caption = 'Folio'
        end
        object Label18: TLabel
          Left = 6
          Top = 98
          Width = 33
          Height = 15
          Caption = 'Marca'
        end
        object DBText1: TDBText
          Left = 64
          Top = 101
          Width = 186
          Height = 17
          DataField = 'MARCA'
          DataSource = DSCamara
        end
        object DBText2: TDBText
          Left = 64
          Top = 130
          Width = 186
          Height = 16
          DataField = 'MODELO'
          DataSource = DSCamara
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 38
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SERIE'
          DataSource = DSCamara
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 64
          Top = 153
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'IPV4'
          DataSource = DSCamara
          TabOrder = 5
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 64
          Top = 124
          Width = 186
          Height = 23
          DataField = 'MODELO_ID'
          DataSource = DSCamara
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSCamaraModelo
          TabOrder = 4
          Visible = False
        end
        object DBEdit8: TDBEdit
          Left = 64
          Top = 9
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'ARTICULO'
          DataSource = DSCamara
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 64
          Top = 182
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'MAC'
          DataSource = DSCamara
          TabOrder = 6
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 64
          Top = 210
          Width = 186
          Height = 23
          DataField = 'COLOR_ID'
          DataSource = DSCamara
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSColores
          TabOrder = 7
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 64
          Top = 239
          Width = 186
          Height = 23
          DataField = 'PROVEEDOR_ID'
          DataSource = DSCamara
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSProveedores
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 64
          Top = 66
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'FOLIO'
          DataSource = DSCamara
          TabOrder = 2
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 64
          Top = 95
          Width = 186
          Height = 23
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSCamaraMarca
          TabOrder = 3
          Visible = False
          OnClick = DBLookupComboBox6Click
        end
      end
      object Panel5: TPanel
        Left = 260
        Top = 0
        Width = 566
        Height = 412
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 384
          Width = 560
          Height = 25
          DataSource = DSCamara
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator1BeforeAction
          OnClick = DBNavigator1Click
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 41
          Width = 566
          Height = 340
          Align = alClient
          DataSource = DSCamara
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ARTICULO'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIE'
              Width = 120
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
              FieldName = 'MARCA'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODELO'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLOR'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROVEEDOR'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPV4'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAC'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Width = 352
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
              FieldName = 'MARCA_ID'
              Visible = False
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 566
          Height = 41
          Align = alTop
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 2
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
            TabOrder = 0
            Items.Strings = (
              'Art'#237'culo'
              'Serie'
              'Folio'
              'Marca'
              'Modelo'
              'Tipo'
              'Color'
              'Proveedor'
              'IPv4'
              'MAC'
              'Descripci'#243'n'
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Modelos'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 257
        Top = 0
        Height = 412
        ExplicitHeight = 414
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          257
          412)
        object Label4: TLabel
          Left = 7
          Top = 23
          Width = 41
          Height = 15
          Caption = 'Modelo'
        end
        object Label5: TLabel
          Left = 7
          Top = 147
          Width = 21
          Height = 15
          Caption = 'URL'
        end
        object Label6: TLabel
          Left = 7
          Top = 177
          Width = 33
          Height = 15
          Caption = 'Marca'
        end
        object Label7: TLabel
          Left = 7
          Top = 206
          Width = 23
          Height = 15
          Caption = 'Tipo'
        end
        object Label12: TLabel
          Left = 7
          Top = 51
          Width = 62
          Height = 15
          Caption = 'Descripci'#243'n'
        end
        object DBEdit4: TDBEdit
          Left = 80
          Top = 20
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'NOMBRE'
          DataSource = DSCamaraModelo
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 80
          Top = 144
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'URL'
          DataSource = DSCamaraModelo
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 174
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MARCA_ID'
          DataSource = DSCamaraModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSCamaraMarca
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 80
          Top = 202
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'tipo_id'
          DataSource = DSCamaraModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSCamaraTipo
          TabOrder = 4
        end
        object DBMemo2: TDBMemo
          Left = 80
          Top = 49
          Width = 170
          Height = 89
          DataField = 'DESCRIPCION'
          DataSource = DSCamaraModelo
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        Left = 260
        Top = 0
        Width = 566
        Height = 412
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 1
        object DBNavigator2: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 384
          Width = 560
          Height = 25
          DataSource = DSCamaraModelo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator2BeforeAction
          OnClick = DBNavigator2Click
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 566
          Height = 340
          Align = alClient
          DataSource = DSCamaraModelo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TIPO_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URL'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Width = 160
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 566
          Height = 41
          Align = alTop
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 2
          object Label20: TLabel
            Left = 14
            Top = 12
            Width = 51
            Height = 15
            Caption = 'Filtrar por'
          end
          object ComboBox2: TComboBox
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
              'Descripci'#243'n'
              'Marca'
              'Tipo'
              'Sin filtro')
          end
          object SearchBox2: TSearchBox
            Left = 224
            Top = 10
            Width = 153
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 1
            OnInvokeSearch = SearchBox2InvokeSearch
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Marcas'
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 257
        Top = 0
        Height = 412
        ExplicitHeight = 414
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          257
          412)
        object Label3: TLabel
          Left = 3
          Top = 15
          Width = 33
          Height = 15
          Caption = 'Marca'
        end
        object Label1: TLabel
          Left = 3
          Top = 44
          Width = 21
          Height = 15
          Caption = 'URL'
        end
        object DBEdit3: TDBEdit
          Left = 56
          Top = 12
          Width = 194
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'NOMBRE'
          DataSource = DSCamaraMarca
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 41
          Width = 194
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'URL'
          DataSource = DSCamaraMarca
          TabOrder = 1
        end
      end
      object Panel9: TPanel
        Left = 260
        Top = 0
        Width = 566
        Height = 412
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 1
        object DBNavigator3: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 384
          Width = 560
          Height = 25
          DataSource = DSCamaraMarca
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator3BeforeAction
          OnClick = DBNavigator3Click
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 566
          Height = 381
          Align = alClient
          DataSource = DSCamaraMarca
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Caption = 'MARCA'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URL'
              Width = 320
              Visible = True
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tipos'
      ImageIndex = 3
      object Splitter4: TSplitter
        Left = 257
        Top = 0
        Height = 412
        ExplicitHeight = 414
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 412
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          257
          412)
        object Label2: TLabel
          Left = 9
          Top = 15
          Width = 23
          Height = 15
          Caption = 'Tipo'
        end
        object Label11: TLabel
          Left = 9
          Top = 47
          Width = 62
          Height = 15
          Caption = 'Descripci'#243'n'
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 12
          Width = 171
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'NOMBRE'
          DataSource = DSCamaraTipo
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 80
          Top = 45
          Width = 170
          Height = 84
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRIPCION'
          DataSource = DSCamaraTipo
          TabOrder = 1
        end
      end
      object Panel12: TPanel
        Left = 260
        Top = 0
        Width = 566
        Height = 412
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 1
        object DBNavigator4: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 384
          Width = 560
          Height = 25
          DataSource = DSCamaraTipo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator4BeforeAction
          OnClick = DBNavigator4Click
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 566
          Height = 381
          Align = alClient
          DataSource = DSCamaraTipo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Title.Caption = 'DESCRIPCI'#211'N'
              Width = 320
              Visible = True
            end>
        end
      end
    end
  end
  object QryCamaras: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.ipv4, a.mac, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      
        #9'camara a, camara_modelo b, camara_marca c, camara_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 366
    Top = 248
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 360
    Top = 179
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 360
    Top = 104
  end
  object CamaraTable: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.ipv4, a.mac, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      
        #9'camara a, camara_modelo b, camara_marca c, camara_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 292
    Top = 382
  end
  object DSCamara: TDataSource
    DataSet = CamaraTable
    Left = 292
    Top = 470
  end
  object DSCamaraModelo: TDataSource
    DataSet = CamaraModeloTable
    Left = 418
    Top = 470
  end
  object CamaraModeloTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'SELECT a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.u' +
        'rl, b.nombre as marca, c.nombre as tipo FROM camara_modelo a, ca' +
        'mara_marca b, camara_tipo c'
      'WHERE a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 418
    Top = 382
  end
  object DSCamaraMarca: TDataSource
    DataSet = CamaraMarcaTable
    Left = 570
    Top = 470
  end
  object CamaraMarcaTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM camara_marca')
    Left = 570
    Top = 382
  end
  object CamaraTipoTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM camara_tipo')
    Left = 708
    Top = 382
  end
  object DSCamaraTipo: TDataSource
    DataSet = CamaraTipoTable
    Left = 708
    Top = 470
  end
  object ColoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM colores')
    Left = 550
    Top = 110
  end
  object DSColores: TDataSource
    DataSet = ColoresTable
    Left = 550
    Top = 198
  end
  object ProveedoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM proveedores')
    Left = 658
    Top = 126
  end
  object DSProveedores: TDataSource
    DataSet = ProveedoresTable
    Left = 658
    Top = 196
  end
end
