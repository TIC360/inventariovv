object FrmLocalidades: TFrmLocalidades
  Left = 0
  Top = 0
  Caption = 'Localidades'
  ClientHeight = 442
  ClientWidth = 753
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
    Height = 442
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 442
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      257
      442)
    object Label13: TLabel
      Left = 6
      Top = 16
      Width = 29
      Height = 15
      Caption = 'Clave'
    end
    object Label1: TLabel
      Left = 6
      Top = 45
      Width = 54
      Height = 15
      Caption = 'Municipio'
    end
    object Label2: TLabel
      Left = 6
      Top = 73
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object DBEdit1: TDBEdit
      Left = 66
      Top = 13
      Width = 79
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ID'
      DataSource = DSLocalidades
      TabOrder = 0
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 66
      Top = 42
      Width = 184
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'MUNICIPIO_ID'
      DataSource = DSLocalidades
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSMunicipio
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 67
      Top = 71
      Width = 184
      Height = 89
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOMBRE'
      DataSource = DSLocalidades
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 260
    Top = 0
    Width = 493
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 414
      Width = 487
      Height = 25
      DataSource = DSLocalidades
      Align = alBottom
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 493
      Height = 370
      Align = alClient
      DataSource = DSLocalidades
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
          Title.Caption = 'CLAVE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'LOCALIDAD'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO_ID'
          Visible = False
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 493
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
        ItemIndex = 1
        TabOrder = 0
        Text = 'Municipio'
        Items.Strings = (
          'Clave'
          'Municipio'
          'Localidad'
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
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 78
    Top = 174
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 190
    Top = 190
  end
  object FDQueryLocalidades: TFDQuery
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
    Left = 184
    Top = 284
  end
  object DSLocalidades: TDataSource
    DataSet = FDQueryLocalidades
    Left = 176
    Top = 364
  end
  object FDTableMunicipios: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MUNICIPIOS'
    Left = 70
    Top = 350
  end
  object DSMunicipio: TDataSource
    DataSet = FDTableMunicipios
    Left = 94
    Top = 284
  end
end
