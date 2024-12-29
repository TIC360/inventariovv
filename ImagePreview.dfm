object FrmImagePreview: TFrmImagePreview
  Left = 0
  Top = 0
  Caption = 'Fotos y notas del PMI'
  ClientHeight = 442
  ClientWidth = 478
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
  object Splitter1: TSplitter
    Left = 0
    Top = 121
    Width = 478
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBImage1: TDBImage
    Left = 0
    Top = 124
    Width = 478
    Height = 318
    Align = alClient
    DataField = 'foto1'
    DataSource = DSFoto
    Stretch = True
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 121
    Align = alTop
    TabOrder = 1
    object Panel2: TPanel
      Left = 336
      Top = 1
      Width = 141
      Height = 119
      Align = alRight
      TabOrder = 0
      object Label5: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 133
        Height = 25
        Align = alTop
        Alignment = taCenter
        Caption = 'PMI'
        Color = clMediumslateblue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMediumpurple
        Font.Height = 25
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
        StyleName = 'Windows'
        ExplicitWidth = 40
      end
      object Label1: TLabel
        Left = 1
        Top = 32
        Width = 139
        Height = 15
        Margins.Top = 0
        Align = alTop
        Alignment = taCenter
        Caption = 'Label1'
        WordWrap = True
        ExplicitWidth = 34
      end
      object BtnGuardarComentario: TButton
        Left = 38
        Top = 89
        Width = 75
        Height = 25
        Caption = 'Guardar'
        TabOrder = 0
        OnClick = BtnGuardarComentarioClick
      end
      object Button3: TButton
        Left = 8
        Top = 56
        Width = 25
        Height = 25
        Caption = 'N'
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 32
        Top = 56
        Width = 25
        Height = 25
        Caption = 'I'
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 56
        Top = 56
        Width = 25
        Height = 25
        Caption = 'S'
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 80
        Top = 56
        Width = 25
        Height = 25
        Caption = '+'
        TabOrder = 4
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 104
        Top = 56
        Width = 25
        Height = 25
        Caption = '-'
        TabOrder = 5
        OnClick = Button7Click
      end
    end
    object DBRichEdit1: TDBRichEdit
      Left = 1
      Top = 1
      Width = 335
      Height = 119
      Align = alClient
      DataField = 'COMENTARIO1'
      DataSource = DSComentario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 1
    end
  end
  object DSFoto: TDataSource
    DataSet = FDQueryFoto1
    Left = 134
    Top = 244
  end
  object FDQueryFoto1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT foto1, foto2, foto3, foto4 FROM pmi WHERE id = :ID')
    Left = 40
    Top = 234
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = 'CO0011'
      end>
  end
  object FDQueryComentario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT comentario1, comentario2, comentario3, comentario4 FROM p' +
        'mi WHERE id = :PMI')
    Left = 260
    Top = 245
    ParamData = <
      item
        Name = 'PMI'
        DataType = ftString
        ParamType = ptInput
        Value = 'CO0011'
      end>
  end
  object DSComentario: TDataSource
    DataSet = FDQueryComentario
    Left = 150
    Top = 340
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 384
    Top = 266
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 379
    Top = 336
  end
end
