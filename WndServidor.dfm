object FrmServidor: TFrmServidor
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderStyle = bsDialog
  Caption = 'Configurar conexi'#243'n al servidor'
  ClientHeight = 154
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 120
  DesignSize = (
    538
    154)
  TextHeight = 20
  object Label13: TLabel
    Left = 20
    Top = 30
    Width = 55
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Servidor'
  end
  object Label14: TLabel
    Left = 20
    Top = 66
    Width = 30
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Ruta'
  end
  object EditDatabase: TEdit
    Left = 130
    Top = 63
    Width = 399
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object EditServer: TEdit
    Left = 130
    Top = 27
    Width = 171
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 538
    Height = 43
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      538
      43)
    object Button2: TButton
      Left = 332
      Top = 6
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 438
      Top = 6
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object ButtonValidar: TButton
      Left = 20
      Top = 6
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Validar'
      TabOrder = 2
      OnClick = ButtonValidarClick
    end
  end
  object FDConnectionTest: TFDConnection
    LoginPrompt = False
    OnError = FDConnectionTestError
    AfterConnect = FDConnectionTestAfterConnect
    Left = 401
    Top = 21
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 300
    Top = 41
  end
end
