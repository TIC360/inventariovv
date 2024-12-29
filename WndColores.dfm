object FrmColores: TFrmColores
  Left = 0
  Top = 0
  Caption = 'Colores'
  ClientHeight = 316
  ClientWidth = 618
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
    Left = 233
    Top = 0
    Height = 316
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 316
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label13: TLabel
      Left = 6
      Top = 16
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object DBEdit8: TDBEdit
      Left = 66
      Top = 13
      Width = 159
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DSColores
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 236
    Top = 0
    Width = 382
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 288
      Width = 376
      Height = 25
      DataSource = DSColores
      Align = alBottom
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 382
      Height = 244
      Align = alClient
      DataSource = DSColores
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
          Width = 200
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 382
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
        Text = 'Nombre'
        Items.Strings = (
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
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 104
    Top = 24
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 240
    Top = 24
  end
  object ColoresTable: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM colores')
    Left = 390
    Top = 110
  end
  object DSColores: TDataSource
    DataSet = ColoresTable
    Left = 390
    Top = 198
  end
end
