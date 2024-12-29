object DMPostes: TDMPostes
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 200
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 24
  end
  object PosteTable: TFDQuery
    BeforeDelete = PosteTableBeforeDelete
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
      
        #9'poste a, poste_modelo b, poste_marca c, poste_tipo d, colores e' +
        ', '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 60
    Top = 126
  end
  object DSPoste: TDataSource
    DataSet = PosteTable
    Left = 60
    Top = 204
  end
  object PosteTipoTable: TFDQuery
    BeforeDelete = PosteTipoTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM poste_tipo')
    Left = 430
    Top = 126
  end
  object DSPosteTipo: TDataSource
    DataSet = PosteTipoTable
    Left = 430
    Top = 204
  end
  object PosteModeloTable: TFDQuery
    BeforeDelete = PosteModeloTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT '
      
        '  a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.url, b' +
        '.nombre as marca, '
      '  c.nombre || '#39' ('#39' || c.descripcion || '#39')'#39' as tipo '
      'FROM '
      '  poste_modelo a, poste_marca b, poste_tipo c'
      'WHERE '
      '  a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 176
    Top = 126
  end
  object DSPosteModelo: TDataSource
    DataSet = PosteModeloTable
    Left = 176
    Top = 204
  end
  object PosteMarcaTable: TFDQuery
    BeforeDelete = PosteMarcaTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM poste_marca')
    Left = 310
    Top = 126
  end
  object DSPosteMarca: TDataSource
    DataSet = PosteMarcaTable
    Left = 310
    Top = 204
  end
end
