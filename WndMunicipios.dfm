object FrmMunicipios: TFrmMunicipios
  Left = 0
  Top = 0
  Caption = 'Municipios'
  ClientHeight = 303
  ClientWidth = 689
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
  object Splitter1: TSplitter
    Left = 257
    Top = 0
    Height = 303
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 303
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      257
      303)
    object Label13: TLabel
      Left = 7
      Top = 16
      Width = 29
      Height = 15
      Caption = 'Clave'
    end
    object Label1: TLabel
      Left = 7
      Top = 45
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 7
      Top = 77
      Width = 37
      Height = 15
      Caption = 'Regi'#243'n'
    end
    object DBEdit1: TDBEdit
      Left = 66
      Top = 13
      Width = 184
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ID'
      DataSource = DSMunicipios
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 66
      Top = 42
      Width = 184
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DSMunicipios
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 66
      Top = 70
      Width = 184
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'REGION_ID'
      DataSource = DSMunicipios
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSRegiones
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 260
    Top = 0
    Width = 429
    Height = 303
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 275
      Width = 423
      Height = 25
      DataSource = DSMunicipios
      Align = alBottom
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 429
      Height = 231
      Align = alClient
      DataSource = DSMunicipios
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
          Title.Caption = 'Clave'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Municipio'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGION_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'REGION'
          Title.Caption = 'Regi'#243'n'
          Width = 144
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 429
      Height = 41
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 2
      object Label3: TLabel
        Left = 6
        Top = 14
        Width = 51
        Height = 15
        Caption = 'Filtrar por'
      end
      object ComboBox1: TComboBox
        Left = 65
        Top = 12
        Width = 145
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Municipio'
        Items.Strings = (
          'Municipio'
          'Regi'#243'n'
          'Sin filtro')
      end
      object SearchBox1: TSearchBox
        Left = 216
        Top = 12
        Width = 153
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 1
        OnInvokeSearch = SearchBox1InvokeSearch
      end
    end
  end
  object FDQueryMunicipios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.id,'
      '  a.nombre,'
      '  a.region_id,'
      '  b.nombre as region'
      'FROM'
      '  municipios a'
      '  LEFT JOIN regiones b ON a.region_id = b.id'
      'ORDER BY'
      '  a.nombre;  ')
    Left = 440
    Top = 130
  end
  object DSMunicipios: TDataSource
    DataSet = FDQueryMunicipios
    Left = 328
    Top = 224
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
    Top = 126
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 110
    Top = 126
  end
  object FDTableRegiones: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'REGIONES'
    Left = 715
    Top = 50
  end
  object DSRegiones: TDataSource
    DataSet = FDTableRegiones
    Left = 715
    Top = 120
  end
end
