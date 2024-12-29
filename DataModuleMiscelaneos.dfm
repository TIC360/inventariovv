object DMMiscelaneos: TDMMiscelaneos
  OnCreate = DataModuleCreate
  Height = 381
  Width = 811
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 240
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 96
    Top = 40
  end
  object DSMiscelaneoTipo: TDataSource
    DataSet = MiscelaneoTipoTable
    Left = 576
    Top = 215
  end
  object MiscelaneoTipoTable: TFDQuery
    BeforeDelete = MiscelaneoTipoTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM miscelaneo_tipo')
    Left = 576
    Top = 135
  end
  object MiscelaneoMarcaTable: TFDQuery
    BeforeDelete = MiscelaneoMarcaTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM miscelaneo_marca')
    Left = 416
    Top = 135
  end
  object DSMiscelaneoMarca: TDataSource
    DataSet = MiscelaneoMarcaTable
    Left = 416
    Top = 215
  end
  object MiscelaneoModeloTable: TFDQuery
    BeforeDelete = MiscelaneoModeloTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'SELECT a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.u' +
        'rl, b.nombre as marca, c.nombre as tipo FROM miscelaneo_modelo a' +
        ', miscelaneo_marca b, miscelaneo_tipo c'
      'WHERE a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 240
    Top = 135
  end
  object DSMiscelaneoModelo: TDataSource
    DataSet = MiscelaneoModeloTable
    Left = 240
    Top = 215
  end
  object MiscelaneoTable: TFDQuery
    BeforeDelete = MiscelaneoTableBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'a.serie, a.folio, a.articulo, a.modelo_id, '
      '        a.color_id, a.proveedor_id,    '
      #9'b.nombre as modelo, b.descripcion, '
      #9'c.nombre as marca, '
      #9'd.nombre as tipo,'
      '        e.nombre as color,'
      '        f.nombre as proveedor,'
      '        b.marca_id'
      'FROM '
      #9'miscelaneo a, miscelaneo_modelo b, miscelaneo_marca c, '
      '        miscelaneo_tipo d, colores e, proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 90
    Top = 135
  end
  object DSMiscelaneo: TDataSource
    DataSet = MiscelaneoTable
    Left = 90
    Top = 215
  end
end
