object DMSwitches: TDMSwitches
  OnCreate = DataModuleCreate
  Height = 322
  Width = 935
  PixelsPerInch = 120
  object DSSwitchTipo: TDataSource
    DataSet = SwitchTipoTable
    Left = 427
    Top = 176
  end
  object SwitchTipoTable: TFDQuery
    BeforeDelete = SwitchTipoTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM switch_tipo')
    Left = 482
    Top = 72
  end
  object SwitchMarcaTable: TFDQuery
    BeforeDelete = SwitchMarcaTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM switch_marca')
    Left = 360
    Top = 72
  end
  object DSSwitchMarca: TDataSource
    DataSet = SwitchMarcaTable
    Left = 320
    Top = 176
  end
  object SwitchModeloTable: TFDQuery
    BeforeDelete = SwitchModeloTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT '
      
        '  a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.url, b' +
        '.nombre as marca, '
      '  c.nombre || '#39' ('#39' || c.descripcion || '#39')'#39' as tipo '
      'FROM '
      '  switch_modelo a, switch_marca b, switch_tipo c'
      'WHERE '
      '  a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 225
    Top = 72
  end
  object DSSwitchModelo: TDataSource
    DataSet = SwitchModeloTable
    Left = 203
    Top = 176
  end
  object SwitchTable: TFDQuery
    BeforeDelete = SwitchTableBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.ipv4, a.mac, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      
        #9'switch a, switch_modelo b, switch_marca c, switch_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 110
    Top = 72
  end
  object DSSwitch: TDataSource
    DataSet = SwitchTable
    Left = 106
    Top = 176
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\Users\ceo\Software\i2V\Win64\Debug\I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 816
    Top = 48
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 688
    Top = 48
  end
end
