object FrmEditarMiscelaneo: TFrmEditarMiscelaneo
  Left = 0
  Top = 0
  Caption = 'Editar Miscel'#225'neo'
  ClientHeight = 157
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox2: TGroupBox
    Left = 240
    Top = 31
    Width = 178
    Height = 81
    Caption = 'Unidades'
    TabOrder = 0
    object Label3: TLabel
      Left = 17
      Top = 22
      Width = 48
      Height = 15
      Caption = 'Cantidad'
    end
    object LabelId: TLabel
      Left = 24
      Top = 56
      Width = 38
      Height = 15
      Caption = 'LabelId'
    end
    object NumberBox1: TNumberBox
      Left = 79
      Top = 18
      Width = 84
      Height = 23
      MinValue = 1.000000000000000000
      MaxValue = 999999.000000000000000000
      TabOrder = 0
      Value = 1.000000000000000000
      SpinButtonOptions.Placement = nbspInline
    end
  end
  object Button1: TButton
    Left = 343
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 241
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 31
    Width = 227
    Height = 113
    Caption = 'Datos del radio'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
    object Label2: TLabel
      Left = 16
      Top = 46
      Width = 41
      Height = 15
      Caption = 'Modelo'
    end
    object Label5: TLabel
      Left = 16
      Top = 69
      Width = 25
      Height = 15
      Caption = 'Serie'
    end
    object Label6: TLabel
      Left = 16
      Top = 91
      Width = 26
      Height = 15
      Caption = 'Folio'
    end
    object LabelMarca: TLabel
      Left = 72
      Top = 24
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
    object LabelModelo: TLabel
      Left = 72
      Top = 46
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
    object LabelSerie: TLabel
      Left = 72
      Top = 69
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
    object LabelFolio: TLabel
      Left = 72
      Top = 91
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 25
    Align = alTop
    Caption = 'XA0000'
    Color = clAliceblue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 185
    Top = 44
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 45
    Top = 44
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 121
    Top = 89
  end
end
