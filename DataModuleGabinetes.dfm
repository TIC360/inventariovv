object DMGabinetes: TDMGabinetes
  OnCreate = DataModuleCreate
  Height = 368
  Width = 685
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
  object DSGabineteTipo: TDataSource
    DataSet = GabineteTipoTable
    Left = 496
    Top = 218
  end
  object GabineteTipoTable: TFDQuery
    BeforeDelete = GabineteTipoTableBeforeDelete
    Filtered = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM gabinete_tipo')
    Left = 498
    Top = 130
  end
  object GabineteMarcaTable: TFDQuery
    BeforeDelete = GabineteMarcaTableBeforeDelete
    Filtered = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM gabinete_marca')
    Left = 352
    Top = 130
  end
  object DSGabineteMarca: TDataSource
    DataSet = GabineteMarcaTable
    Left = 352
    Top = 218
  end
  object GabineteModeloTable: TFDQuery
    BeforeDelete = GabineteModeloTableBeforeDelete
    Filtered = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT '
      
        '  a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.url, b' +
        '.nombre as marca, '
      '  c.nombre || '#39' ('#39' || c.descripcion || '#39')'#39' as tipo '
      'FROM '
      '  gabinete_modelo a, gabinete_marca b, gabinete_tipo c'
      'WHERE '
      '  a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 192
    Top = 130
  end
  object DSGabineteModelo: TDataSource
    DataSet = GabineteModeloTable
    Left = 192
    Top = 218
  end
  object GabineteTable: TFDQuery
    BeforeDelete = GabineteTableBeforeDelete
    Filtered = True
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
      
        #9'gabinete a, gabinete_modelo b, gabinete_marca c, gabinete_tipo ' +
        'd, colores e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 58
    Top = 130
  end
  object DSGabinete: TDataSource
    DataSet = GabineteTable
    Left = 58
    Top = 218
  end
end
