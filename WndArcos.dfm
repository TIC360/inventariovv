object FrmArcos: TFrmArcos
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Arcos carreteros'
  ClientHeight = 553
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 120
  TextHeight = 20
  object Splitter1: TSplitter
    Left = 321
    Top = 0
    Width = 4
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    MinSize = 38
    ExplicitHeight = 539
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label8: TLabel
      Left = 5
      Top = 92
      Width = 65
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Domicilio'
    end
    object Label10: TLabel
      Left = 5
      Top = 215
      Width = 66
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Municipio'
    end
    object Label13: TLabel
      Left = 5
      Top = 60
      Width = 55
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Nombre'
    end
    object Label15: TLabel
      Left = 5
      Top = 251
      Width = 65
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Localidad'
    end
    object Label1: TLabel
      Left = 5
      Top = 24
      Width = 47
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Regi'#243'n'
    end
    object Label2: TLabel
      Left = 5
      Top = 287
      Width = 59
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Longitud'
    end
    object Label3: TLabel
      Left = 5
      Top = 323
      Width = 46
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Latitud'
    end
    object DBText1: TDBText
      Left = 78
      Top = 250
      Width = 231
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LOCALIDAD'
      DataSource = DMPmi.DSPmi
    end
    object DBText2: TDBText
      Left = 79
      Top = 215
      Width = 229
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'MUNICIPIO'
      DataSource = DMPmi.DSPmi
    end
    object DBEdit8: TDBEdit
      Left = 80
      Top = 56
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'ID'
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 78
      Top = 92
      Width = 231
      Height = 111
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'DOMICILIO'
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 211
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'MUNICIPIO_ID'
      KeyField = 'ID'
      ListField = 'NOMBRE'
      TabOrder = 3
      Visible = False
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 80
      Top = 247
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LOCALIDAD_ID'
      KeyField = 'ID'
      ListField = 'NOMBRE'
      TabOrder = 4
      Visible = False
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 80
      Top = 20
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'REGION_ID'
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DMPrincipal.DSRegiones
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 283
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LONGITUD'
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 319
      Width = 231
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'LATITUD'
      TabOrder = 6
    end
  end
  object Panel5: TPanel
    Left = 325
    Top = 0
    Width = 457
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 518
      Width = 449
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 457
      Height = 514
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'REGION'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'PMI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOMICILIO'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LONGITUD'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LATITUD'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'REGION_ID'
          Visible = False
        end>
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 110
    Top = 126
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)\I2V.FDB')
    Connected = True
    LoginPrompt = False
    Left = 246
    Top = 126
  end
  object DSLocalidades: TDataSource
    DataSet = FDQueryLocalidades
    Left = 224
    Top = 380
  end
  object FDQueryLocalidades: TFDQuery
    Active = True
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
    Left = 224
    Top = 308
  end
end
