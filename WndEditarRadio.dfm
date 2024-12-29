object FrmEditarRadio: TFrmEditarRadio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Editar radio'
  ClientHeight = 215
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 631
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
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 240
    Top = 31
    Width = 385
    Height = 146
    Caption = 'Configuraci'#243'n'
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 38
      Height = 15
      Caption = 'Azimut'
    end
    object Label4: TLabel
      Left = 16
      Top = 53
      Width = 16
      Height = 15
      Caption = 'Tilt'
    end
    object Label7: TLabel
      Left = 16
      Top = 82
      Width = 20
      Height = 15
      Caption = 'FoV'
    end
    object Label8: TLabel
      Left = 16
      Top = 110
      Width = 18
      Height = 15
      Caption = 'BW'
    end
    object Label9: TLabel
      Left = 127
      Top = 24
      Width = 36
      Height = 15
      Caption = 'grados'
    end
    object Label10: TLabel
      Left = 127
      Top = 53
      Width = 36
      Height = 15
      Caption = 'grados'
    end
    object Label11: TLabel
      Left = 127
      Top = 82
      Width = 36
      Height = 15
      Caption = 'grados'
    end
    object Label12: TLabel
      Left = 127
      Top = 110
      Width = 25
      Height = 15
      Caption = 'MHz'
    end
    object Label13: TLabel
      Left = 198
      Top = 24
      Width = 32
      Height = 15
      Caption = 'Altura'
    end
    object Label14: TLabel
      Left = 326
      Top = 24
      Width = 37
      Height = 15
      Caption = 'metros'
    end
    object Label15: TLabel
      Left = 198
      Top = 53
      Width = 57
      Height = 15
      Caption = 'Frecuencia'
    end
    object Label16: TLabel
      Left = 326
      Top = 53
      Width = 25
      Height = 15
      Caption = 'MHz'
    end
    object Label17: TLabel
      Left = 198
      Top = 82
      Width = 49
      Height = 15
      Caption = 'Ganancia'
    end
    object Label18: TLabel
      Left = 326
      Top = 82
      Width = 17
      Height = 15
      Caption = 'dBi'
    end
    object Label19: TLabel
      Left = 198
      Top = 110
      Width = 46
      Height = 15
      Caption = 'Potencia'
    end
    object Label20: TLabel
      Left = 326
      Top = 110
      Width = 25
      Height = 15
      Caption = 'dBm'
    end
    object EditAzimut: TEdit
      Left = 65
      Top = 22
      Width = 56
      Height = 23
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      Text = '0'
    end
    object EditTilt: TEdit
      Left = 65
      Top = 50
      Width = 56
      Height = 23
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      Text = '0'
    end
    object EditFoV: TEdit
      Left = 65
      Top = 79
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 2
      Text = '0'
    end
    object EditBW: TEdit
      Left = 65
      Top = 108
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 3
      Text = '0'
    end
    object EditAltura: TEdit
      Left = 264
      Top = 22
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 4
      Text = '0'
    end
    object EditFrecuencia: TEdit
      Left = 264
      Top = 50
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 5
      Text = '0'
    end
    object EditGanancia: TEdit
      Left = 264
      Top = 79
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 6
      Text = '0'
    end
    object EditPotencia: TEdit
      Left = 264
      Top = 108
      Width = 56
      Height = 23
      Alignment = taCenter
      TabOrder = 7
      Text = '0'
    end
  end
  object Button1: TButton
    Left = 412
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 504
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 31
    Width = 227
    Height = 146
    Caption = 'Datos del radio'
    TabOrder = 4
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
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 204
    Top = 60
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 209
    Top = 120
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 94
    Top = 134
  end
end
