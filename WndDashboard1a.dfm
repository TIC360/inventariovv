object FrmDashboard1a: TFrmDashboard1a
  Left = 0
  Top = 0
  Width = 808
  Height = 419
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  TabOrder = 0
  PixelsPerInch = 120
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 808
    Height = 419
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Title.Text.Strings = (
      'Disponibilidad del Sistema de Videovigilancia')
    View3D = False
    View3DOptions.FontZoom = 125
    Align = alClient
    TabOrder = 0
    ExplicitTop = 51
    ExplicitWidth = 711
    ExplicitHeight = 368
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      13
      15
      13)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      HoverElement = []
      ColorEachPoint = True
      DataSource = FDQuery1
      XLabelsSource = 'ESTATUS'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'CANTIDAD'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=$(DBPATH)\I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    Connected = True
    LoginPrompt = False
    Left = 98
    Top = 240
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 98
    Top = 180
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  ce.nombre AS estatus,'
      '  COUNT(ec.id) AS cantidad'
      'FROM'
      '  estatus_camara ec'
      'LEFT JOIN'
      '  camara_estatus ce ON ec.estatus = ce.id'
      'WHERE'
      '  fecha = CURRENT_DATE'
      'GROUP BY'
      '  estatus'
      '')
    Left = 238
    Top = 190
  end
end
