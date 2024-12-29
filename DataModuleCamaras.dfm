object DMCamaras: TDMCamaras
  OnCreate = DataModuleCreate
  Height = 325
  Width = 648
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 216
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 80
    Top = 32
  end
  object DSCamaraTipo: TDataSource
    DataSet = CamaraTipoTable
    Left = 498
    Top = 200
  end
  object CamaraTipoTable: TFDQuery
    BeforeDelete = CamaraTipoTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM camara_tipo')
    Left = 498
    Top = 112
  end
  object CamaraMarcaTable: TFDQuery
    BeforeDelete = CamaraMarcaTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM camara_marca')
    Left = 360
    Top = 112
  end
  object DSCamaraMarca: TDataSource
    DataSet = CamaraMarcaTable
    Left = 360
    Top = 200
  end
  object CamaraModeloTable: TFDQuery
    BeforeDelete = CamaraModeloTableBeforeDelete
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'SELECT a.id, a.nombre, a.marca_id, a.tipo_id, a.descripcion, a.u' +
        'rl, b.nombre as marca, c.nombre as tipo FROM camara_modelo a, ca' +
        'mara_marca b, camara_tipo c'
      'WHERE a.marca_id = b.id AND a.tipo_id = c.id')
    Left = 208
    Top = 112
  end
  object DSCamaraModelo: TDataSource
    DataSet = CamaraModeloTable
    Left = 208
    Top = 200
  end
  object CamaraTable: TFDQuery
    BeforeDelete = CamaraTableBeforeDelete
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
      
        #9'camara a, camara_modelo b, camara_marca c, camara_tipo d, color' +
        'es e, '
      '        proveedores f '
      'WHERE'
      
        #9'a.modelo_id = b.id AND a.color_id = e.id AND a.proveedor_id = f' +
        '.id AND '
      '        b.marca_id = c.id AND b.tipo_id = d.id')
    Left = 82
    Top = 112
  end
  object DSCamara: TDataSource
    DataSet = CamaraTable
    Left = 82
    Top = 200
  end
end
