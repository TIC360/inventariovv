object FrmSeleccionaSectorial: TFrmSeleccionaSectorial
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderStyle = bsDialog
  Caption = 'Elegir Sectorial'
  ClientHeight = 286
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Label1: TLabel
    Left = 9
    Top = 12
    Width = 38
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Nodo'
  end
  object SBNodo: TSearchBox
    Left = 55
    Top = 9
    Width = 151
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    CharCase = ecUpperCase
    TabOrder = 0
    ButtonWidth = 30
    OnInvokeSearch = SBNodoInvokeSearch
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 45
    Width = 541
    Height = 193
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RADIO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTURA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AZIMUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TILT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOV'
        Width = 60
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 383
    Top = 246
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 281
    Top = 246
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
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
    Left = 168
    Top = 131
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 38
    Top = 131
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '   pr.radio,'
      '   pr.altura,'
      '   pr.azimut,'
      '   pr.tilt,'
      '   pr.fov,'
      '   r.nombre,'
      '   rm.nombre as modelo,'
      '   rma.nombre as marca'
      'FROM'
      '   pmi_radio pr'
      'JOIN'
      '   radio r ON pr.radio = r.serie'
      'JOIN'
      '   radio_modelo rm ON r.modelo_id = rm.id'
      'JOIN'
      '   radio_marca rma ON rm.marca_id = rma.id'
      'WHERE'
      '   pr.pmi = :NODO')
    Left = 262
    Top = 131
    ParamData = <
      item
        Name = 'NODO'
        DataType = ftString
        ParamType = ptInput
        Value = 'XA0003'
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 348
    Top = 131
  end
end
