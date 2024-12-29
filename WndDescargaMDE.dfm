object FrmDescargaMDE: TFrmDescargaMDE
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Descargar modelo digital de elevaci'#243'n'
  ClientHeight = 553
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 20
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 0
    Width = 782
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 579
    ExplicitHeight = 447
    object Label39: TLabel
      Left = 13
      Top = 82
      Width = 52
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Punto A'
    end
    object Label40: TLabel
      Left = 14
      Top = 118
      Width = 51
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Punto B'
    end
    object Label41: TLabel
      Left = 77
      Top = 51
      Width = 46
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Latitud'
    end
    object Label42: TLabel
      Left = 275
      Top = 49
      Width = 46
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Latitud'
    end
    object Label35: TLabel
      Left = 14
      Top = 201
      Width = 540
      Height = 40
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 
        'Se recomienda medir la altura cada 10 metros si el terreno es ir' +
        'regular, y cada 20 metros si el terreno es plano.'
      WordWrap = True
    end
    object Label43: TLabel
      Left = 14
      Top = 250
      Width = 61
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Distancia'
    end
    object Label44: TLabel
      Left = 85
      Top = 250
      Width = 51
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = '1.07 km'
    end
    object Label45: TLabel
      Left = 165
      Top = 250
      Width = 154
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Resoluci'#243'n topogr'#225'fica'
    end
    object Label47: TLabel
      Left = 14
      Top = 280
      Width = 470
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 
        'Se realizar'#225'n 100 mediciones, y se consumir'#225' igual n'#250'mero de cr'#233 +
        'ditos.'
    end
    object Shape3: TShape
      Left = 14
      Top = 6
      Width = 543
      Height = 37
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Brush.Style = bsClear
      Pen.Color = clLightslategray
      Pen.Style = psDot
    end
    object Label36: TLabel
      Left = 343
      Top = 14
      Width = 138
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Cr'#233'ditos disponibles:'
    end
    object Label38: TLabel
      Left = 498
      Top = 14
      Width = 49
      Height = 20
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = '10,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit7: TEdit
      Left = 275
      Top = 78
      Width = 188
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 0
    end
    object Edit8: TEdit
      Left = 275
      Top = 116
      Width = 189
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 77
      Top = 78
      Width = 189
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 2
    end
    object Edit9: TEdit
      Left = 77
      Top = 116
      Width = 188
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 3
    end
    object Button6: TButton
      Left = 77
      Top = 153
      Width = 189
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ver puntos en mapa'
      TabOrder = 4
    end
    object Button7: TButton
      Left = 165
      Top = 323
      Width = 226
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Descargar perfil topogr'#225'fico'
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 328
      Top = 246
      Width = 115
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 6
      Text = '10 metros'
      Items.Strings = (
        '1 metro'
        '5 metros'
        '10 metros'
        '15 metros'
        '20 metros'
        '25 metros'
        '30 metros'
        '35 metros'
        '40 metros'
        '50 metros')
    end
    object Button4: TButton
      Left = 29
      Top = 9
      Width = 132
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Agregar cr'#233'ditos'
      TabOrder = 7
    end
  end
end
