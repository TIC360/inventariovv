object DMPmi: TDMPmi
  OnCreate = DataModuleCreate
  Height = 376
  Width = 607
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'CharacterSet=UTF8'
      'Database=$(DBPATH)\I2V.FDB'
      'Password=masterkey')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 24
  end
  object PmiTable: TFDQuery
    Active = True
    BeforeDelete = PmiTableBeforeDelete
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
      '  d.nombre as localidad'
      'FROM'
      '  pmi a'
      '  JOIN municipios b ON a.municipio_id = b.id'
      '  LEFT JOIN localidades d ON a.localidad_id = d.id;')
    Left = 64
    Top = 120
  end
  object DSPmi: TDataSource
    DataSet = PmiTable
    Left = 64
    Top = 192
  end
end
