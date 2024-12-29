object FrmAgregaDestino: TFrmAgregaDestino
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Agregar radioenlace'
  ClientHeight = 549
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 17
  object Splitter2: TSplitter
    Left = 0
    Top = 178
    Width = 848
    Height = 3
    Cursor = crVSplit
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    MinSize = 34
  end
  object Panel1: TPanel
    Left = 0
    Top = 504
    Width = 848
    Height = 45
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object ButtonGuardar: TButton
      Left = 284
      Top = 7
      Width = 83
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Agregar'
      TabOrder = 0
      OnClick = ButtonGuardarClick
    end
    object ButtonCerrar: TButton
      Left = 374
      Top = 7
      Width = 83
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Cancel = True
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = ButtonCerrarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 178
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 283
      Height = 176
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 0
      DesignSize = (
        283
        176)
      object Label1: TLabel
        Left = 14
        Top = 19
        Width = 50
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Punto A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 14
        Top = 55
        Width = 259
        Height = 105
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'UBICACION'
        DataSource = DSPuntoA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object SBDestino: TSearchBox
        Left = 72
        Top = 16
        Width = 167
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        CharCase = ecUpperCase
        TabOrder = 0
        ButtonWidth = 34
        OnInvokeSearch = SBDestinoInvokeSearch
      end
    end
    object Panel2: TPanel
      Left = 284
      Top = 1
      Width = 563
      Height = 176
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 1
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 561
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Alignment = taCenter
        Caption = 'Antenas en el punto A'
        ExplicitWidth = 128
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 18
        Width = 561
        Height = 157
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        DataSource = DSSectorial
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RADIO'
            Width = 177
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
            FieldName = 'PMI'
            Visible = False
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 181
    Width = 848
    Height = 323
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 2
    object Splitter3: TSplitter
      Left = 284
      Top = 1
      Height = 321
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      MinSize = 34
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 283
      Height = 321
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel6'
      ShowCaption = False
      TabOrder = 0
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 283
        Height = 321
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        object Label13: TLabel
          Left = 2
          Top = 78
          Width = 49
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Nombre'
        end
        object LabelNodoA: TLabel
          Left = 63
          Top = 28
          Width = 4
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
        end
        object LabelNodoB: TLabel
          Left = 63
          Top = 238
          Width = 45
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Label14'
        end
        object Label3: TLabel
          Left = 63
          Top = 4
          Width = 104
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Punto A (origen)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 63
          Top = 162
          Width = 109
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Punto B (destino)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 17
          Top = 28
          Width = 34
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Nodo'
        end
        object Label6: TLabel
          Left = 22
          Top = 53
          Width = 29
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Serie'
        end
        object Label7: TLabel
          Left = 34
          Top = 102
          Width = 17
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Lat'
        end
        object Label8: TLabel
          Left = 30
          Top = 128
          Width = 21
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Lng'
        end
        object LabelDestino: TLabel
          Left = 63
          Top = 186
          Width = 75
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'LabelDestino'
        end
        object LabelOrigen: TLabel
          Left = 63
          Top = 78
          Width = 4
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
        end
        object LabelOrigenAntena: TLabel
          Left = 63
          Top = 53
          Width = 4
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
        end
        object LabelRadioDestino: TLabel
          Left = 63
          Top = 212
          Width = 109
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'LabelRadioDestino'
        end
        object Lat1: TDBText
          Left = 63
          Top = 102
          Width = 206
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'LATITUD'
          DataSource = DSPuntoA
        end
        object Lat2: TLabel
          Left = 63
          Top = 265
          Width = 24
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lat2'
        end
        object Lng1: TDBText
          Left = 63
          Top = 128
          Width = 206
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'LONGITUD'
          DataSource = DSPuntoA
        end
        object Lng2: TLabel
          Left = 63
          Top = 292
          Width = 28
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lng2'
        end
        object Label9: TLabel
          Left = 17
          Top = 186
          Width = 34
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Nodo'
        end
        object Label10: TLabel
          Left = 22
          Top = 212
          Width = 29
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Serie'
        end
        object Label11: TLabel
          Left = 2
          Top = 238
          Width = 49
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Nombre'
        end
        object Label12: TLabel
          Left = 34
          Top = 265
          Width = 17
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Lat'
        end
        object Label14: TLabel
          Left = 30
          Top = 292
          Width = 21
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Lng'
        end
      end
    end
    object Panel7: TPanel
      Left = 287
      Top = 1
      Width = 560
      Height = 321
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = 'Panel7'
      ShowCaption = False
      TabOrder = 1
      object Label16: TLabel
        Left = 1
        Top = 1
        Width = 558
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Alignment = taCenter
        Caption = 'Mapa del radioenlace'
        ExplicitWidth = 128
      end
      object Mapa: TECNativeMap
        Left = 1
        Top = 18
        Width = 558
        Height = 302
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
        Align = alClient
        TabOrder = 0
      end
    end
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
    Left = 610
    Top = 264
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 484
    Top = 264
  end
  object FDQueryPuntoA: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  pmi.id,'
      
        '  pmi.domicilio || '#39'. MPIO: '#39' ||municipios.nombre ||'#39', LOCALIDAD' +
        ': '#39' || localidades.nombre || '#39'. COORDENADAS: ('#39' || pmi.latitud |' +
        '|'#39', '#39' ||pmi.longitud ||'#39')'#39' AS ubicacion,'
      '  pmi.latitud, pmi.longitud'
      'FROM'
      '   pmi'
      'INNER JOIN'
      '   municipios ON pmi.MUNICIPIO_ID = municipios.ID'
      'LEFT JOIN'
      '   localidades ON pmi.LOCALIDAD_ID = localidades.ID'
      'WHERE pmi.ID = :PMI')
    Left = 320
    Top = 104
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object DSPuntoA: TDataSource
    DataSet = FDQueryPuntoA
    Left = 420
    Top = 104
  end
  object FDQuerySectorial: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '   pmi_radio.pmi,'
      '   pmi_radio.radio,'
      '   pmi_radio.azimut,'
      '   pmi_radio.tilt,'
      '   pmi_radio.altura,'
      '   radio.nombre  '
      'FROM'
      '  pmi_radio'
      'INNER JOIN radio ON pmi_radio.radio = radio.serie'
      'WHERE pmi_radio.pmi = :PMI')
    Left = 532
    Top = 104
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object DSSectorial: TDataSource
    DataSet = FDQuerySectorial
    Left = 641
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 751
    Top = 101
  end
end
