object FrmTopologia: TFrmTopologia
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Topolog'#237'a de la red'
  ClientHeight = 542
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 218
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 280
      Height = 216
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 26
        Width = 56
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Punto B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 17
        Top = 70
        Width = 255
        Height = 139
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'UBICACION'
        DataSource = DSPuntoB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Lat: TDBText
        Left = 4
        Top = 1
        Width = 81
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'LATITUD'
        DataSource = DSPuntoB
        Visible = False
      end
      object Lng: TDBText
        Left = 124
        Top = -1
        Width = 81
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'LONGITUD'
        DataSource = DSPuntoB
        Visible = False
      end
      object SBDestino: TSearchBox
        Left = 82
        Top = 18
        Width = 189
        Height = 28
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        CharCase = ecUpperCase
        TabOrder = 0
        ButtonWidth = 38
        OnInvokeSearch = SBDestinoInvokeSearch
      end
    end
    object Panel5: TPanel
      Left = 281
      Top = 1
      Width = 569
      Height = 216
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 1
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 567
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Alignment = taCenter
        Caption = 'Equipos de comunicaci'#243'n en el Punto B'
        ExplicitWidth = 261
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 6
        Top = 26
        Width = 557
        Height = 184
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        DataSource = DSSectorial
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PMI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RADIO'
            Width = 200
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
            FieldName = 'ALTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOV'
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 218
    Width = 851
    Height = 324
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel6'
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 849
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taCenter
      Caption = 'Equipos de comunicaci'#243'n conectados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 250
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 25
      Width = 841
      Height = 294
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BorderStyle = bsNone
      DataSource = DSTopologia
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
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
          FieldName = 'DESTINO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ORIGEN'
          Title.Caption = 'NODO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGENANTENA'
          Title.Caption = 'RADIO'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTINOANTENA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DISTANCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LATITUD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LONGITUD'
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
          FieldName = 'ALTURA'
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
          Width = 300
          Visible = True
        end>
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 74
    Top = 294
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
    Left = 210
    Top = 294
  end
  object FDQueryPuntoB: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  pmi.id,'
      
        '  pmi.domicilio || '#39'. MPIO: '#39' ||municipios.nombre ||'#39', LOCALIDAD' +
        ': '#39' || localidades.nombre || '#39'. COORDENADAS: ('#39' || pmi.latitud |' +
        '|'#39', '#39' ||pmi.longitud ||'#39')'#39' AS ubicacion,'
      '  pmi.latitud,'
      '  pmi.longitud'
      'FROM'
      '   pmi'
      'INNER JOIN'
      '   municipios ON pmi.MUNICIPIO_ID = municipios.ID'
      'LEFT JOIN'
      '   localidades ON pmi.LOCALIDAD_ID = localidades.ID'
      'WHERE pmi.ID = :PMI')
    Left = 330
    Top = 294
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object DSPuntoB: TDataSource
    DataSet = FDQueryPuntoB
    Left = 330
    Top = 380
  end
  object FDQueryTopologia: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  topologia.id,'
      '  topologia.destino,'
      '  topologia.origen,'
      '  topologia.origenantena,'
      '  topologia.destinoantena,'
      '  topologia.distancia,'
      '  pmi.latitud,'
      '  pmi.longitud,'
      '  pmi_radio.azimut,'
      '  pmi_radio.tilt,'
      '  pmi_radio.altura,'
      '  municipios.nombre AS municipio,'
      '  localidades.nombre AS localidad'
      'FROM'
      '  topologia'
      'INNER JOIN pmi ON topologia.origen = pmi.id'
      'INNER JOIN pmi_radio ON pmi_radio.pmi = topologia.origen'
      'INNER JOIN radio ON pmi_radio.radio = radio.serie'
      'INNER JOIN municipios ON pmi.municipio_id = municipios.id'
      'LEFT JOIN localidades ON pmi.localidad_id = localidades.id'
      'WHERE'
      '  topologia.destino = :DESTINO AND'
      '  topologia.destinoantena = :DESTINOANTENA;')
    Left = 586
    Top = 294
    ParamData = <
      item
        Name = 'DESTINO'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DESTINOANTENA'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object DSTopologia: TDataSource
    DataSet = FDQueryTopologia
    Left = 586
    Top = 379
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 385
    object PopupMenuAgregar: TMenuItem
      Caption = 'Agregar radioenlace'
      OnClick = PopupMenuAgregarClick
    end
    object Actualizar1: TMenuItem
      Caption = 'Actualizar'
      OnClick = Actualizar1Click
    end
  end
  object FDQuerySectorial: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '   pmi_radio.pmi,'
      '   pmi_radio.radio,'
      '   pmi_radio.azimut,'
      '   pmi_radio.tilt,'
      '   pmi_radio.altura,'
      '   pmi_radio.fov,'
      '   radio.nombre  '
      'FROM'
      '  pmi_radio'
      'INNER JOIN radio ON pmi_radio.radio = radio.serie'
      'WHERE pmi_radio.pmi = :PMI')
    Left = 452
    Top = 294
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
    Left = 450
    Top = 379
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 131
    Top = 151
  end
  object PopupMenu2: TPopupMenu
    Left = 180
    Top = 385
    object Desconectarradioenlace1: TMenuItem
      Caption = 'Desconectar radioenlace'
      OnClick = Desconectarradioenlace1Click
    end
    object Desconectarradioenlace2: TMenuItem
      Caption = 'Actualizar'
      OnClick = Desconectarradioenlace2Click
    end
  end
end
