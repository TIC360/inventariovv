object FrmPmi2: TFrmPmi2
  Left = 0
  Top = 0
  Caption = 'Puntos de Monitoreo'
  ClientHeight = 442
  ClientWidth = 799
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
    Left = 329
    Top = 0
    Height = 442
  end
  object PageControl1: TPageControl
    Left = 332
    Top = 0
    Width = 467
    Height = 442
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    Align = alClient
    HotTrack = True
    MultiLine = True
    PopupMenu = PopupMenu1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'PMI'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 459
        Height = 412
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 459
          Height = 390
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSPmi
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'CLAVE'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOMICILIO'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LONGITUD'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LATITUD'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUNICIPIO_ID'
              Visible = False
            end>
        end
        object Panel6: TPanel
          Left = 0
          Top = 390
          Width = 459
          Height = 22
          Align = alBottom
          Alignment = taLeftJustify
          Caption = ' Listo'
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 442
    Align = alLeft
    Caption = 'Panel1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    ShowCaption = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 121
      Top = 49
      Width = 207
      Height = 392
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 207
        Height = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Municipios'
        Layout = tlCenter
        ExplicitWidth = 59
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 0
        Top = 15
        Width = 207
        Height = 364
        Align = alClient
        KeyField = 'ID'
        ListField = 'NOMBRE'
        ListSource = DSMunicipios
        TabOrder = 0
        OnClick = DBLookupListBox1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 49
      Width = 120
      Height = 392
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 120
        Height = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Regiones'
        Layout = tlCenter
        ExplicitWidth = 48
      end
      object DBLookupListBox2: TDBLookupListBox
        Left = 0
        Top = 15
        Width = 120
        Height = 364
        Align = alClient
        KeyField = 'ID'
        ListField = 'NOMBRE'
        ListSource = DSRegiones
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 327
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 15
        Width = 69
        Height = 15
        Caption = 'Clave de PMI'
        Layout = tlCenter
      end
      object txtBuscar: TSearchBox
        Left = 83
        Top = 13
        Width = 166
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 0
        OnInvokeSearch = txtBuscarInvokeSearch
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 434
    Top = 286
    object PopupMenu11: TMenuItem
      Caption = 'Cerrar pesta'#241'a'
      OnClick = PopupMenu11Click
    end
  end
  object FDQueryPmi: TFDQuery
    Filtered = True
    Filter = 'ID='#39'XXX'#39
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 10000
    SQL.Strings = (
      'SELECT'
      '  a.id, a.domicilio, a.longitud, a.latitud, a.municipio_id'
      'FROM'
      '  pmi a'
      'ORDER BY'
      '  id')
    Left = 322
    Top = 154
  end
  object DSPmi: TDataSource
    DataSet = FDQueryPmi
    Left = 332
    Top = 226
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 560
    Top = 156
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'CharacterSet=UTF8'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey')
    LoginPrompt = False
    Left = 676
    Top = 156
  end
  object FDTableRegiones: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'REGIONES'
    Left = 61
    Top = 331
  end
  object DSRegiones: TDataSource
    DataSet = FDTableRegiones
    Left = 63
    Top = 195
  end
  object FDTableMunicipios: TFDTable
    IndexFieldNames = 'REGION_ID'
    MasterSource = DSRegiones
    MasterFields = 'ID'
    DetailFields = 'REGION_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MUNICIPIOS'
    Left = 241
    Top = 321
  end
  object DSMunicipios: TDataSource
    DataSet = FDTableMunicipios
    Left = 193
    Top = 219
  end
end
