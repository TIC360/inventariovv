object FrmRegiones: TFrmRegiones
  Left = 0
  Top = 0
  Caption = 'Regiones'
  ClientHeight = 286
  ClientWidth = 646
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
    Height = 286
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 286
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      257
      286)
    object Label1: TLabel
      Left = 7
      Top = 13
      Width = 44
      Height = 15
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 7
      Top = 41
      Width = 34
      Height = 15
      Caption = 'Prefijo'
    end
    object DBEdit2: TDBEdit
      Left = 66
      Top = 10
      Width = 184
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DSRegiones
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 66
      Top = 38
      Width = 55
      Height = 23
      CharCase = ecUpperCase
      DataField = 'PREFIJO'
      DataSource = DSRegiones
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 260
    Top = 0
    Width = 386
    Height = 286
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 258
      Width = 380
      Height = 25
      DataSource = DSRegiones
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 386
      Height = 214
      Align = alClient
      DataSource = DSRegiones
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
          Width = 195
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREFIJO'
          Width = 67
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 386
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
          'Prefijo'
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
  object FDQueryRegiones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM regiones')
    Left = 96
    Top = 136
  end
  object DSRegiones: TDataSource
    DataSet = FDQueryRegiones
    Left = 216
    Top = 136
  end
end
