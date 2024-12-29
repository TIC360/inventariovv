object FrmDashBoard1: TFrmDashBoard1
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dashboard'
  ClientHeight = 480
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 750
    Height = 480
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Title.Text.Strings = (
      'Disponibilidad del Sistema de Videovigilancia')
    View3D = False
    Align = alClient
    TabOrder = 0
    OnClick = DBChart1Click
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
      'Database=$(DBPATH)/I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 98
    Top = 240
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 98
    Top = 180
  end
  object FDQuery1: TFDQuery
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
