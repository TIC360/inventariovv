object FrmValidarCamaras: TFrmValidarCamaras
  Left = 0
  Top = 0
  Caption = 'Validaci'#243'n manual del Sistema de Videovigilancia'
  ClientHeight = 381
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 381
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      225
      381)
    object Label1: TLabel
      Left = 6
      Top = 16
      Width = 37
      Height = 15
      Caption = 'Regi'#243'n'
    end
    object Splitter1: TSplitter
      Left = 222
      Top = 0
      Height = 381
      Align = alRight
    end
    object Label2: TLabel
      Left = 6
      Top = 67
      Width = 59
      Height = 15
      Caption = 'Municipios'
    end
    object DBLookupListBox1: TDBLookupListBox
      Left = 6
      Top = 90
      Width = 206
      Height = 274
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSMunicipios
      TabOrder = 0
      OnClick = DBLookupListBox1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 6
      Top = 38
      Width = 206
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSRegiones
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
  end
  object Panel2: TPanel
    Left = 225
    Top = 0
    Width = 458
    Height = 381
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 114
      Width = 456
      Height = 266
      Align = alClient
      DataSource = DSCamaras
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PMI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMARA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGION'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MUNICIPIO'
          Visible = False
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 456
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 1
      DesignSize = (
        456
        113)
      object SkSvg1: TSkSvg
        Left = 256
        Top = 9
        Width = 50
        Height = 50
        Hint = 'La c'#225'mara se visualiza y graba correctamente'
        ParentShowHint = False
        ShowHint = True
        OnClick = SkSvg1Click
        Svg.Source = 
          '<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.or' +
          'g/Graphics/SVG/1.1/DTD/svg11.dtd">'#13#10#13#10'<!-- Uploaded to: SVG Repo' +
          ', www.svgrepo.com, Transformed by: SVG Repo Mixer Tools -->'#13#10'<sv' +
          'g height="800px" width="800px" version="1.1" id="Layer_1" xmlns=' +
          '"http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999' +
          '/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000' +
          '">'#13#10#13#10'<g id="SVGRepo_bgCarrier" stroke-width="0"/>'#13#10#13#10'<g id="SVG' +
          'Repo_tracerCarrier" stroke-linecap="round" stroke-linejoin="roun' +
          'd"/>'#13#10#13#10'<g id="SVGRepo_iconCarrier"> <path style="fill:#d9ffd6;"' +
          ' d="M37.926,208.592v28.444c0,120.439,97.634,218.074,218.074,218.' +
          '074s218.074-97.636,218.074-218.074 v-28.444H37.926z"/> <circle s' +
          'tyle="fill:#56955d;" cx="256" cy="341.333" r="66.37"/> <circle s' +
          'tyle="fill:#d9ffd6;" cx="256" cy="341.333" r="37.926"/> <circle ' +
          'style="fill:#56955d;" cx="256" cy="341.333" r="18.963"/> <g> <ci' +
          'rcle style="fill:#FFFFFF;" cx="277.333" cy="320" r="16.593"/> <c' +
          'ircle style="fill:#FFFFFF;" cx="230.151" cy="367.182" r="9.481"/' +
          '> </g> <path style="fill:#56955d;" d="M37.926,208.592v28.444c0,1' +
          '21.476,99.323,219.753,221.191,218.053 c0.226-2.068-0.123,1.121,0' +
          '.104-0.948c-55.054-9.329-99.155-87.945-106.407-188.032c-0.396-5.' +
          '46,4.03-10.11,9.504-10.11h310.884 c0.539-6.254,0.872-12.568,0.87' +
          '2-18.963v-28.444L37.926,208.592L37.926,208.592z"/> <path style="' +
          'fill:#a7c5a5;" d="M493.037,56.889H18.963C8.491,56.889,0,65.378,0' +
          ',75.852v105.922c0,5.029,1.998,9.852,5.555,13.408 l32.371,32.373h' +
          '436.148l32.371-32.372c3.557-3.556,5.555-8.379,5.555-13.408V75.85' +
          '2C512,65.378,503.509,56.889,493.037,56.889z"/> <g> <path style="' +
          'fill:#95b79a;" d="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.' +
          '408l32.371,32.372h436.148l32.371-32.372 c3.557-3.556,5.555-8.379' +
          ',5.555-13.408v-1.627H0z"/> <path style="fill:#95b79a;" d="M132.7' +
          '41,181.774V75.852c0-10.473,4.088-18.963,9.131-18.963H18.963C8.49' +
          '1,56.889,0,65.378,0,75.852 v105.922c0,5.029,1.998,9.852,5.555,13' +
          '.408l32.371,32.373h113.075l-15.586-32.372C133.702,191.626,132.74' +
          '1,186.803,132.741,181.774 z"/> </g> <path style="fill:#759580;" ' +
          'd="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.408l32.371,32.3' +
          '72h113.075l-15.586-32.372 c-1.713-3.556-2.674-8.379-2.674-13.408' +
          'v-1.627H0z"/> </g>'#13#10#13#10'</svg>'
      end
      object SkSvg2: TSkSvg
        Left = 320
        Top = 9
        Width = 50
        Height = 50
        Hint = 'La c'#225'mara se visualiza y/o graba con intermitencia'
        ParentShowHint = False
        ShowHint = True
        OnClick = SkSvg2Click
        Svg.Source = 
          '<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.or' +
          'g/Graphics/SVG/1.1/DTD/svg11.dtd">'#13#10#13#10'<!-- Uploaded to: SVG Repo' +
          ', www.svgrepo.com, Transformed by: SVG Repo Mixer Tools -->'#13#10'<sv' +
          'g height="800px" width="800px" version="1.1" id="Layer_1" xmlns=' +
          '"http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999' +
          '/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000' +
          '">'#13#10#13#10'<g id="SVGRepo_bgCarrier" stroke-width="0"/>'#13#10#13#10'<g id="SVG' +
          'Repo_tracerCarrier" stroke-linecap="round" stroke-linejoin="roun' +
          'd"/>'#13#10#13#10'<g id="SVGRepo_iconCarrier"> <path style="fill:#fff1ad;"' +
          ' d="M37.926,208.592v28.444c0,120.439,97.634,218.074,218.074,218.' +
          '074s218.074-97.636,218.074-218.074 v-28.444H37.926z"/> <circle s' +
          'tyle="fill:#dac03e;" cx="256" cy="341.333" r="66.37"/> <circle s' +
          'tyle="fill:#fff1ad;" cx="256" cy="341.333" r="37.926"/> <circle ' +
          'style="fill:#dac03e;" cx="256" cy="341.333" r="18.963"/> <g> <ci' +
          'rcle style="fill:#FFFFFF;" cx="277.333" cy="320" r="16.593"/> <c' +
          'ircle style="fill:#FFFFFF;" cx="230.151" cy="367.182" r="9.481"/' +
          '> </g> <path style="fill:#dac03e;" d="M37.926,208.592v28.444c0,1' +
          '21.476,99.323,219.753,221.191,218.053 c0.226-2.068-0.123,1.121,0' +
          '.104-0.948c-55.054-9.329-99.155-87.945-106.407-188.032c-0.396-5.' +
          '46,4.03-10.11,9.504-10.11h310.884 c0.539-6.254,0.872-12.568,0.87' +
          '2-18.963v-28.444L37.926,208.592L37.926,208.592z"/> <path style="' +
          'fill:#ede9d4;" d="M493.037,56.889H18.963C8.491,56.889,0,65.378,0' +
          ',75.852v105.922c0,5.029,1.998,9.852,5.555,13.408 l32.371,32.373h' +
          '436.148l32.371-32.372c3.557-3.556,5.555-8.379,5.555-13.408V75.85' +
          '2C512,65.378,503.509,56.889,493.037,56.889z"/> <g> <path style="' +
          'fill:#e2dec6;" d="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.' +
          '408l32.371,32.372h436.148l32.371-32.372 c3.557-3.556,5.555-8.379' +
          ',5.555-13.408v-1.627H0z"/> <path style="fill:#e2dec6;" d="M132.7' +
          '41,181.774V75.852c0-10.473,4.088-18.963,9.131-18.963H18.963C8.49' +
          '1,56.889,0,65.378,0,75.852 v105.922c0,5.029,1.998,9.852,5.555,13' +
          '.408l32.371,32.373h113.075l-15.586-32.372C133.702,191.626,132.74' +
          '1,186.803,132.741,181.774 z"/> </g> <path style="fill:#d1cbad;" ' +
          'd="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.408l32.371,32.3' +
          '72h113.075l-15.586-32.372 c-1.713-3.556-2.674-8.379-2.674-13.408' +
          'v-1.627H0z"/> </g>'#13#10#13#10'</svg>'
      end
      object SkSvg3: TSkSvg
        Left = 384
        Top = 9
        Width = 50
        Height = 50
        Hint = 'La c'#225'mara no se visualiza y/o no graba '
        ParentShowHint = False
        ShowHint = True
        OnClick = SkSvg3Click
        Svg.Source = 
          '<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.or' +
          'g/Graphics/SVG/1.1/DTD/svg11.dtd">'#13#10#13#10'<!-- Uploaded to: SVG Repo' +
          ', www.svgrepo.com, Transformed by: SVG Repo Mixer Tools -->'#13#10'<sv' +
          'g height="800px" width="800px" version="1.1" id="Layer_1" xmlns=' +
          '"http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999' +
          '/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000' +
          '">'#13#10#13#10'<g id="SVGRepo_bgCarrier" stroke-width="0"/>'#13#10#13#10'<g id="SVG' +
          'Repo_tracerCarrier" stroke-linecap="round" stroke-linejoin="roun' +
          'd"/>'#13#10#13#10'<g id="SVGRepo_iconCarrier"> <path style="fill:#272420;"' +
          ' d="M37.926,208.592v28.444c0,120.439,97.634,218.074,218.074,218.' +
          '074s218.074-97.636,218.074-218.074 v-28.444H37.926z"/> <circle s' +
          'tyle="fill:#000000;" cx="256" cy="341.333" r="66.37"/> <circle s' +
          'tyle="fill:#272420;" cx="256" cy="341.333" r="37.926"/> <circle ' +
          'style="fill:#000000;" cx="256" cy="341.333" r="18.963"/> <g> <ci' +
          'rcle style="fill:#FFFFFF;" cx="277.333" cy="320" r="16.593"/> <c' +
          'ircle style="fill:#FFFFFF;" cx="230.151" cy="367.182" r="9.481"/' +
          '> </g> <path style="fill:#000000;" d="M37.926,208.592v28.444c0,1' +
          '21.476,99.323,219.753,221.191,218.053 c0.226-2.068-0.123,1.121,0' +
          '.104-0.948c-55.054-9.329-99.155-87.945-106.407-188.032c-0.396-5.' +
          '46,4.03-10.11,9.504-10.11h310.884 c0.539-6.254,0.872-12.568,0.87' +
          '2-18.963v-28.444L37.926,208.592L37.926,208.592z"/> <path style="' +
          'fill:#6b6b6b;" d="M493.037,56.889H18.963C8.491,56.889,0,65.378,0' +
          ',75.852v105.922c0,5.029,1.998,9.852,5.555,13.408 l32.371,32.373h' +
          '436.148l32.371-32.372c3.557-3.556,5.555-8.379,5.555-13.408V75.85' +
          '2C512,65.378,503.509,56.889,493.037,56.889z"/> <g> <path style="' +
          'fill:#545454;" d="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.' +
          '408l32.371,32.372h436.148l32.371-32.372 c3.557-3.556,5.555-8.379' +
          ',5.555-13.408v-1.627H0z"/> <path style="fill:#545454;" d="M132.7' +
          '41,181.774V75.852c0-10.473,4.088-18.963,9.131-18.963H18.963C8.49' +
          '1,56.889,0,65.378,0,75.852 v105.922c0,5.029,1.998,9.852,5.555,13' +
          '.408l32.371,32.373h113.075l-15.586-32.372C133.702,191.626,132.74' +
          '1,186.803,132.741,181.774 z"/> </g> <path style="fill:#4c473d;" ' +
          'd="M0,180.148v1.627c0,5.029,1.998,9.852,5.555,13.408l32.371,32.3' +
          '72h113.075l-15.586-32.372 c-1.713-3.556-2.674-8.379-2.674-13.408' +
          'v-1.627H0z"/> </g>'#13#10#13#10'</svg>'
      end
      object DBText1: TDBText
        Left = 16
        Top = 14
        Width = 209
        Height = 32
        DataField = 'CAM'
        DataSource = DSCamaras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDarkred
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqProof
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 16
        Top = 64
        Width = 426
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DOMICILIO'
        DataSource = DSCamaras
        WordWrap = True
        ExplicitWidth = 428
      end
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 500
    Top = 116
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 636
    Top = 116
  end
  object FDQueryCamaras: TFDQuery
    Filtered = True
    Filter = 'pmi='#39'000'#39
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.pmi,'
      '  a.nombre AS camara,'
      '  d.nombre AS region,'
      '  c.nombre AS municipio,'
      '  e.nombre AS localidad,'
      '  a.pmi || '#39' '#39' || a.nombre AS cam,'
      '  a.camara AS serie,'
      '  b.domicilio,'
      '  ec.estatus,'
      '  c.id     AS municipio_id'
      'FROM'
      '  pmi_camara a'
      '  JOIN pmi b ON a.pmi = b.id'
      '  LEFT JOIN municipios c ON b.municipio_id = c.id'
      '  LEFT JOIN regiones d ON c.region_id = d.id'
      '  LEFT JOIN localidades e ON b.localidad_id = e.id'
      
        '  LEFT JOIN estatus_camara ec ON a.camara = ec.camara AND ec.fec' +
        'ha = CURRENT_DATE'
      'WHERE'
      '  c.id = :MUNICIPIO_ID'
      'ORDER BY'
      '  a.pmi, a.nombre;')
    Left = 610
    Top = 200
    ParamData = <
      item
        Name = 'MUNICIPIO_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '30092'
      end>
  end
  object FDQueryRegiones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  regiones'
      'ORDER BY'
      '  nombre')
    Left = 320
    Top = 200
  end
  object DSRegiones: TDataSource
    DataSet = FDQueryRegiones
    Left = 320
    Top = 280
  end
  object FDQueryMunicipios: TFDQuery
    Filtered = True
    Filter = 'REGION_ID = 0'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  municipios'
      'ORDER BY'
      '  nombre')
    Left = 450
    Top = 200
  end
  object DSMunicipios: TDataSource
    DataSet = FDQueryMunicipios
    Left = 450
    Top = 280
  end
  object DSCamaras: TDataSource
    DataSet = FDQueryCamaras
    Left = 611
    Top = 280
  end
  object FDQuerySave: TFDQuery
    Connection = FDConnection1
    Left = 614
    Top = 388
  end
  object DSSave: TDataSource
    DataSet = FDQuerySave
    Left = 711
    Top = 390
  end
end
