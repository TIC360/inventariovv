object FrmProveedores: TFrmProveedores
  Left = 0
  Top = 0
  Caption = 'Proveedores'
  ClientHeight = 442
  ClientWidth = 655
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
      Left = 4
      Top = 48
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object Label1: TLabel
      Left = 4
      Top = 19
      Width = 21
      Height = 15
      Caption = 'RFC'
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 45
      Width = 185
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DSProveedores
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 66
      Top = 16
      Width = 111
      Height = 23
      CharCase = ecUpperCase
      DataField = 'RFC'
      DataSource = DSProveedores
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 260
    Top = 0
    Width = 395
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
      Width = 389
      Height = 25
      DataSource = DSProveedores
      Align = alBottom
      ConfirmDelete = False
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 395
      Height = 370
      Align = alClient
      DataSource = DSProveedores
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
          FieldName = 'RFC'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Width = 240
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 395
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
        Text = 'Nombre'
        Items.Strings = (
          'RFC'
          'Nombre'
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
  object ProveedoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM proveedores')
    Left = 428
    Top = 16
  end
  object DSProveedores: TDataSource
    DataSet = ProveedoresTable
    Left = 428
    Top = 86
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 150
    Top = 120
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB'
      'User_Name=SYSDBA')
    LoginPrompt = False
    Left = 270
    Top = 100
  end
end
