object FrmPostes: TFrmPostes
  Left = 0
  Top = 0
  Caption = 'Postes'
  ClientHeight = 442
  ClientWidth = 786
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
    Width = 786
    Height = 442
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Postes'
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
          Top = 42
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
          Top = 13
          Width = 42
          Height = 15
          Caption = 'Art'#237'culo'
        end
        object Label15: TLabel
          Left = 6
          Top = 158
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
          Top = 71
          Width = 26
          Height = 15
          Caption = 'Folio'
        end
        object Label18: TLabel
          Left = 6
          Top = 100
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
          DataSource = DSPoste
        end
        object DBText2: TDBText
          Left = 64
          Top = 130
          Width = 186
          Height = 16
          DataField = 'MODELO'
          DataSource = DSPoste
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 38
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SERIE'
          DataSource = DSPoste
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 64
          Top = 124
          Width = 186
          Height = 23
          DataField = 'MODELO_ID'
          DataSource = DSPoste
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSPosteModelo
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
          DataSource = DSPoste
          TabOrder = 0
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 64
          Top = 153
          Width = 186
          Height = 23
          DataField = 'COLOR_ID'
          DataSource = DSPoste
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
          DataSource = DSPoste
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
          DataSource = DSPoste
          TabOrder = 2
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 64
          Top = 95
          Width = 186
          Height = 23
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSPosteMarca
          TabOrder = 3
          Visible = False
          OnClick = DBLookupComboBox6Click
        end
      end
      object Panel5: TPanel
        Left = 260
        Top = 0
        Width = 518
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
          Width = 512
          Height = 25
          DataSource = DSPoste
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator1BeforeAction
          OnClick = DBNavigator1Click
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 41
          Width = 518
          Height = 340
          Align = alClient
          DataSource = DSPoste
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
          Width = 518
          Height = 41
          Align = alTop
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 2
          object Label9: TLabel
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
          DataSource = DSPosteModelo
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 80
          Top = 144
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'URL'
          DataSource = DSPosteModelo
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 173
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MARCA_ID'
          DataSource = DSPosteModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSPosteMarca
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 80
          Top = 202
          Width = 170
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'TIPO_ID'
          DataSource = DSPosteModelo
          KeyField = 'id'
          ListField = 'NOMBRE'
          ListSource = DSPosteTipo
          TabOrder = 4
        end
        object DBMemo2: TDBMemo
          Left = 80
          Top = 49
          Width = 170
          Height = 89
          DataField = 'DESCRIPCION'
          DataSource = DSPosteModelo
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        Left = 260
        Top = 0
        Width = 518
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
          Width = 512
          Height = 25
          DataSource = DSPosteModelo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator2BeforeAction
          OnClick = DBNavigator2Click
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 518
          Height = 340
          Align = alClient
          DataSource = DSPosteModelo
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
          Width = 518
          Height = 41
          Align = alTop
          Caption = 'Panel6'
          ShowCaption = False
          TabOrder = 2
          object Label14: TLabel
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
          DataSource = DSPosteMarca
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 41
          Width = 194
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          DataField = 'URL'
          DataSource = DSPosteMarca
          TabOrder = 1
        end
      end
      object Panel9: TPanel
        Left = 260
        Top = 0
        Width = 518
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
          Width = 512
          Height = 25
          DataSource = DSPosteMarca
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator3BeforeAction
          OnClick = DBNavigator3Click
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 518
          Height = 381
          Align = alClient
          DataSource = DSPosteMarca
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
          DataSource = DSPosteTipo
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 80
          Top = 45
          Width = 170
          Height = 84
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRIPCION'
          DataSource = DSPosteTipo
          TabOrder = 1
        end
      end
      object Panel12: TPanel
        Left = 260
        Top = 0
        Width = 518
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
          Width = 512
          Height = 25
          DataSource = DSPosteTipo
          Align = alBottom
          ConfirmDelete = False
          TabOrder = 0
          BeforeAction = DBNavigator4BeforeAction
          OnClick = DBNavigator4Click
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 518
          Height = 381
          Align = alClient
          DataSource = DSPosteTipo
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
  object PosteTable: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      
        #9'poste a, poste_modelo b, poste_marca c, poste_tipo d, colores e' +
        ', '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 443
    Top = 160
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 553
    Top = 164
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
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      
        #9'poste a, poste_modelo b, poste_marca c, poste_tipo d, colores e' +
        ', '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 260
    Top = 216
  end
  object DSPoste: TDataSource
    DataSet = FDQuery1
    Left = 260
    Top = 294
  end
  object PosteTipoTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM poste_tipo')
    Left = 630
    Top = 216
  end
  object DSPosteTipo: TDataSource
    DataSet = PosteTipoTable
    Left = 630
    Top = 294
  end
  object PosteModeloTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT '
      
        '  a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.url, b' +
        '.nombre as marca, '
      '  c.nombre || '#39' ('#39' || c.descripcion || '#39')'#39' as tipo '
      'FROM '
      '  poste_modelo a, poste_marca b, poste_tipo c'
      'WHERE '
      '  a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 376
    Top = 216
  end
  object DSPosteModelo: TDataSource
    DataSet = PosteModeloTable
    Left = 376
    Top = 294
  end
  object PosteMarcaTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM poste_marca')
    Left = 510
    Top = 216
  end
  object DSPosteMarca: TDataSource
    DataSet = PosteMarcaTable
    Left = 510
    Top = 294
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 490
    Top = 379
  end
  object DSProveedores: TDataSource
    DataSet = ProveedoresTable
    Left = 828
    Top = 246
  end
  object DSColores: TDataSource
    DataSet = ColoresTable
    Left = 720
    Top = 248
  end
  object ProveedoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM proveedores')
    Left = 828
    Top = 176
  end
  object ColoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM colores')
    Left = 720
    Top = 160
  end
end