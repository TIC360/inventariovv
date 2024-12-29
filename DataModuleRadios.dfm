object DMRadios: TDMRadios
  OnCreate = DataModuleCreate
  Height = 364
  Width = 843
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\Users\ceo\Software\i2V\Win64\Debug\I2V.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 184
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 56
    Top = 24
  end
  object DSRadioTipo: TDataSource
    DataSet = RadioTipoTable
    Left = 720
    Top = 116
  end
  object RadioTipoTable: TFDQuery
    BeforeDelete = RadioTipoTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM radio_tipo')
    Left = 722
    Top = 28
  end
  object RadioMarcaTable: TFDQuery
    BeforeDelete = RadioMarcaTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM radio_marca')
    Left = 576
    Top = 28
  end
  object DSRadioMarca: TDataSource
    DataSet = RadioMarcaTable
    Left = 592
    Top = 116
  end
  object RadioModeloTable: TFDQuery
    BeforeDelete = RadioModeloTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'SELECT a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.u' +
        'rl, b.nombre as marca, c.nombre as tipo FROM radio_modelo a, rad' +
        'io_marca b, radio_tipo c'
      'WHERE a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 432
    Top = 28
  end
  object DSRadioModelo: TDataSource
    DataSet = RadioModeloTable
    Left = 432
    Top = 116
  end
  object RadioTable: TFDQuery
    BeforeDelete = RadioTableBeforeDelete
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
      
        #9'radio a, radio_modelo b, radio_marca c, radio_tipo d, colores e' +
        ', '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 314
    Top = 28
  end
  object DSRadio: TDataSource
    DataSet = RadioTable
    Left = 306
    Top = 116
  end
end
