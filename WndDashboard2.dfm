object FrmDashboard2: TFrmDashboard2
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderStyle = bsSingle
  Caption = 'Dashboard'
  ClientHeight = 428
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 757
    Height = 428
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Title.Text.Strings = (
      'Disponibilidad del Sistema de Videovigilancia por Regi'#243'n')
    Align = alClient
    TabOrder = 0
    OnClick = DBChart1Click
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      HoverElement = []
      Active = False
      ColorEachPoint = True
      DataSource = DBCrossTabSource2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 48
    Top = 30
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 48
    Top = 90
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  r.nombre AS region,'
      '  ce.nombre AS estatus,'
      '  COUNT(ec.id) AS cantidad'
      'FROM'
      '  estatus_camara ec'
      'LEFT JOIN'
      '  camara_estatus ce ON ec.estatus = ce.id'
      'LEFT JOIN'
      '  pmi p ON p.id = ec.pmi'
      'LEFT JOIN'
      '  municipios m ON m.id = p.municipio_id'
      'LEFT JOIN'
      '  regiones r ON r.id = m.region_id'
      'WHERE'
      '  fecha = CURRENT_DATE'
      'GROUP BY'
      '  estatus,'
      '  region'
      '')
    Left = 48
    Top = 170
  end
  object DBCrossTabSource2: TDBCrossTabSource
    Active = True
    GroupField = 'REGION'
    LabelField = 'ESTATUS'
    Series = Series1
    ValueField = 'CANTIDAD'
    DataSet = FDQuery1
    Left = 50
    Top = 250
  end
end
