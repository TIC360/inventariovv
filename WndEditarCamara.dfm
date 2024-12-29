object FrmEditarCamara: TFrmEditarCamara
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderStyle = bsDialog
  Caption = 'Editar c'#225'mara'
  ClientHeight = 344
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object LabelLng: TLabel
    Left = 16
    Top = 103
    Width = 48
    Height = 15
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'LabelLng'
    Visible = False
  end
  object LabelLat: TLabel
    Left = 88
    Top = 103
    Width = 44
    Height = 15
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'LabelLat'
    Visible = False
  end
  object LabelCamara: TLabel
    Left = 456
    Top = 208
    Width = 69
    Height = 15
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'LabelCamara'
  end
  object Button2: TButton
    Left = 407
    Top = 173
    Width = 75
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object ButtonActualizar: TButton
    Left = 516
    Top = 173
    Width = 75
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Actualizar'
    TabOrder = 1
    OnClick = ButtonActualizarClick
  end
  object GroupBox1: TGroupBox
    Left = 398
    Top = 39
    Width = 208
    Height = 119
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Nombre y azimut'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 44
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Nombre'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 38
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Azimut'
    end
    object LabelAzimut: TLabel
      Left = 65
      Top = 89
      Width = 6
      Height = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '0'
    end
    object EditNombre: TEdit
      Left = 64
      Top = 23
      Width = 129
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Azimut: TTrackBar
      Left = 53
      Top = 87
      Width = 150
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Max = 359
      ShowSelRange = False
      TabOrder = 1
      TickStyle = tsManual
      Visible = False
      OnChange = AzimutChange
    end
    object Button3: TButton
      Left = 64
      Top = 57
      Width = 129
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cambiar azimut'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    Caption = 'XA0000'
    Color = clAliceblue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDarkturquoise
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object Mapa: TECNativeMap
    Left = 7
    Top = 31
    Width = 385
    Height = 306
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HideShapesWhenZoom = False
    HideShapesWhenWaitingTile = False
    DblClickZoom = True
    MouseWheelZoom = True
    latitude = 43.232951000000000000
    longitude = 0.078081999999994910
    Reticle = False
    ReticleColor = clBlack
    ZoomScaleFactor = 0
    NumericalZoom = 14.000000000000000000
    DragRect = drNone
    Draggable = True
    OnlyOneOpenInfoWindow = False
    WaitingForDestruction = False
    Active = True
    NbrThreadTile = ttFour
    Visible = False
    TabOrder = 4
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 510
    Top = 253
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 623
    Top = 314
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 700
    Top = 310
  end
end
