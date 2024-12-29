object FrmSwitches: TFrmSwitches
  Left = 0
  Top = 0
  Caption = 'Switches'
  ClientHeight = 442
  ClientWidth = 827
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
    Width = 827
    Height = 442
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Switches'
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
        object Label10: TLabel
          Left = 6
          Top = 130
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
        object Label15: TLabel
          Left = 6
          Top = 159
          Width = 29
          Height = 15
          Caption = 'Color'
        end
        object Label16: TLabel
          Left = 6
          Top = 188
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
          Top = 102
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
          DataSource = DSSwitch
        end
        object DBText2: TDBText
          Left = 64
          Top = 130
          Width = 186
          Height = 16
          DataField = 'MODELO'
          DataSource = DSSwitch
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 38
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SERIE'
          DataSource = DSSwitch
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 64
          Top = 124
          Width = 186
          Height = 23
          DataField = 'MODELO_ID'
          DataSource = DSSwitch
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSSwitchModelo
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
          DataSource = DSSwitch
          TabOrder = 0
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 64
          Top = 153
          Width = 186
          Height = 23
          DataField = 'COLOR_ID'
          DataSource = DSSwitch
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSColores
          TabOrder = 5
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 64
          Top = 182
          Width = 186
          Height = 23
          DataField = 'PROVEEDOR_ID'
          DataSource = DSSwitch
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSProveedores
          TabOrder = 6
        end
        object DBEdit10: TDBEdit
          Left = 64
          Top = 66
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'FOLIO'
          DataSource = DSSwitch
          TabOrder = 2
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 64
          Top = 95
          Width = 186
          Height = 23
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSSwitchMarca
          TabOrder = 3
          Visible = False
          OnClick = DBLookupComboBox6Click
        end
      end
      object Panel5: TPanel
        Left = 260
        Top = 0
        Width = 559
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
          Width = 553
          Height = 25
          DataSource = DSSwitch
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator1BeforeAction
          OnClick = DBNavigator1Click
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 41
          Width = 559
          Height = 340
          Align = alClient
          DataSource = DSSwitch
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
              Width = 120
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
              FieldName = 'MODELO'
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
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROVEEDOR'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPV4'
              Width = 96
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
              Width = 320
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
          Width = 559
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
            ItemIndex = 2
            TabOrder = 0
            Text = 'Folio'
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
          DataSource = DSSwitchModelo
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 80
          Top = 144
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'URL'
          DataSource = DSSwitchModelo
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 174
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MARCA_ID'
          DataSource = DSSwitchModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSSwitchMarca
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 80
          Top = 202
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'tipo_id'
          DataSource = DSSwitchModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSSwitchTipo
          TabOrder = 4
        end
        object DBMemo2: TDBMemo
          Left = 80
          Top = 49
          Width = 170
          Height = 89
          DataField = 'DESCRIPCION'
          DataSource = DSSwitchModelo
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        Left = 260
        Top = 0
        Width = 559
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
          Width = 553
          Height = 25
          DataSource = DSSwitchModelo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator2BeforeAction
          OnClick = DBNavigator2Click
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 559
          Height = 340
          Align = alClient
          DataSource = DSSwitchModelo
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
          Width = 559
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
          DataSource = DSSwitchMarca
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 41
          Width = 194
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'URL'
          DataSource = DSSwitchMarca
          TabOrder = 1
        end
      end
      object Panel9: TPanel
        Left = 260
        Top = 0
        Width = 559
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
          Width = 553
          Height = 25
          DataSource = DSSwitchMarca
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator3BeforeAction
          OnClick = DBNavigator3Click
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 559
          Height = 381
          Align = alClient
          DataSource = DSSwitchMarca
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
          DataSource = DSSwitchTipo
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 80
          Top = 45
          Width = 170
          Height = 84
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRIPCION'
          DataSource = DSSwitchTipo
          TabOrder = 1
        end
      end
      object Panel12: TPanel
        Left = 260
        Top = 0
        Width = 559
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
          Width = 553
          Height = 25
          DataSource = DSSwitchTipo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator4BeforeAction
          OnClick = DBNavigator4Click
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 559
          Height = 381
          Align = alClient
          DataSource = DSSwitchTipo
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
  object FDQuerySwitchBySerie: TFDQuery
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
      
        #9'switch a, switch_modelo b, switch_marca c, switch_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 680
    Top = 359
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 368
    Top = 295
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'CharacterSet=UTF8'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey')
    LoginPrompt = False
    Left = 368
    Top = 235
  end
  object SwitchModeloTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT '
      
        '  a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.url, b' +
        '.nombre as marca, '
      '  c.nombre || '#39' ('#39' || c.descripcion || '#39')'#39' as tipo '
      'FROM '
      '  switch_modelo a, switch_marca b, switch_tipo c'
      'WHERE '
      '  a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 435
    Top = 92
  end
  object DSSwitch: TDataSource
    DataSet = SwitchTable
    Left = 316
    Top = 196
  end
  object SwitchTable: TFDQuery
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
      
        #9'switch a, switch_modelo b, switch_marca c, switch_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 320
    Top = 92
  end
  object DSSwitchModelo: TDataSource
    DataSet = SwitchModeloTable
    Left = 413
    Top = 196
  end
  object DSSwitchMarca: TDataSource
    DataSet = SwitchMarcaTable
    Left = 530
    Top = 196
  end
  object SwitchMarcaTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM switch_marca')
    Left = 570
    Top = 92
  end
  object SwitchTipoTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM switch_tipo')
    Left = 692
    Top = 92
  end
  object DSSwitchTipo: TDataSource
    DataSet = SwitchTipoTable
    Left = 637
    Top = 196
  end
  object ProveedoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM proveedores')
    Left = 858
    Top = 196
  end
  object ColoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM colores')
    Left = 750
    Top = 180
  end
  object DSColores: TDataSource
    DataSet = ColoresTable
    Left = 750
    Top = 268
  end
  object DSProveedores: TDataSource
    DataSet = ProveedoresTable
    Left = 858
    Top = 266
  end
end
