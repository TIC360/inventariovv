object DMArcos: TDMArcos
  Height = 331
  Width = 507
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\Users\ceo\Software\i2V\Win64\Debug\I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 24
  end
  object ArcosTable: TFDQuery
    Active = True
    BeforeDelete = ArcosTableBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.id,'
      '  a.domicilio,'
      '  a.longitud,'
      '  a.latitud,'
      '  a.municipio_id,'
      '  a.localidad_id,'
      '  b.nombre as municipio,'
      '  a.region_id,'
      '  c.nombre as region,'
      '  d.nombre as localidad'
      'FROM'
      '  arco a'
      '  JOIN municipios b ON a.municipio_id = b.id'
      '  JOIN regiones c ON a.region_id = c.id'
      '  LEFT JOIN localidades d ON a.localidad_id = d.id;')
    Left = 64
    Top = 120
  end
  object DSArcos: TDataSource
    DataSet = ArcosTable
    Left = 64
    Top = 192
  end
end
