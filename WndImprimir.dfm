object FrmImprimir: TFrmImprimir
  Left = 0
  Top = 0
  Caption = 'C'#233'dula del PMI'
  ClientHeight = 612
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  RoundedCorners = rcOn
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 41
    Width = 866
    Height = 571
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 15
      Width = 72
      Height = 15
      Caption = 'Clave del PMI'
      Visible = False
    end
    object btnImprimir: TButton
      Left = 250
      Top = 10
      Width = 82
      Height = 24
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = btnImprimirClick
    end
    object btnExportarJPG: TButton
      Left = 338
      Top = 10
      Width = 83
      Height = 24
      Caption = 'Exportar JPG'
      TabOrder = 1
      OnClick = btnExportarJPGClick
    end
    object SearchBox1: TSearchBox
      Left = 96
      Top = 12
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 2
      OnInvokeSearch = SearchBox1InvokeSearch
    end
  end
  object frxReport1: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45480.392585844900000000
    ReportOptions.LastChange = 45518.776861921290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 300
    Top = 20
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxPMI'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxPMI_SWITCH'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxSWITCH'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxCAMARA'
      end
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxPMI_CAMARA'
      end
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxPMI_RADIO'
      end
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxRADIO'
      end
      item
        DataSet = frxDBDataset8
        DataSetName = 'frxPMI_GABINETE'
      end
      item
        DataSet = frxDBDataset9
        DataSetName = 'frxGABINETE'
      end
      item
        DataSet = frxDBDataset10
        DataSetName = 'frxMUNICIPIOS'
      end
      item
        DataSet = frxDBDataset12
        DataSetName = 'frxPMI_POSTE'
      end
      item
        DataSet = frxDBDataset13
        DataSetName = 'frxPOSTE'
      end
      item
        DataSet = frxDBDataset14
        DataSetName = 'frxPMI_MISCELANEO'
      end
      item
        DataSet = frxDBDataset15
        DataSetName = 'frxMISCELANEO'
      end
      item
        DataSet = frxDBDataset11
        DataSetName = 'frxLOCALIDAD'
      end
      item
        DataSet = frxDBDataset16
        DataSetName = 'frxSWITCH_MODELO'
      end
      item
        DataSet = frxDBDataset17
        DataSetName = 'frxSWITCH_MARCA'
      end
      item
        DataSet = frxDBDataset19
        DataSetName = 'frxCAMARA_MODELO'
      end
      item
        DataSet = frxDBDataset20
        DataSetName = 'frxRADIO_MODELO'
      end
      item
        DataSet = frxDBDataset21
        DataSetName = 'frxGABINETE_MODELO'
      end
      item
        DataSet = frxDBDataset22
        DataSetName = 'frxPOSTE_MODELO'
      end
      item
        DataSet = frxDBDataset23
        DataSetName = 'frxMISCELANEO_MODELO'
      end
      item
        DataSet = frxDBDataset24
        DataSetName = 'frxCAMARA_MARCA'
      end
      item
        DataSet = frxDBDataset25
        DataSetName = 'frxRADIO_MARCA'
      end
      item
        DataSet = frxDBDataset26
        DataSetName = 'frxGABINETE_MARCA'
      end
      item
        DataSet = frxDBDataset27
        DataSetName = 'frxPOSTE_MARCA'
      end
      item
        DataSet = frxDBDataset28
        DataSetName = 'frxMISCELANEO_MARCA'
      end
      item
        DataSet = frxDBDataset18
        DataSetName = 'frxSWITCH_TIPO'
      end
      item
        DataSet = frxDBDataset29
        DataSetName = 'frxCAMARA_TIPO'
      end
      item
        DataSet = frxDBDataset30
        DataSetName = 'frxRADIO_TIPO'
      end
      item
        DataSet = frxDBDataset31
        DataSetName = 'frxGABINETE_TIPO'
      end
      item
        DataSet = frxDBDataset32
        DataSetName = 'frxPOSTE_TIPO'
      end
      item
        DataSet = frxDBDataset33
        DataSetName = 'frxMISCELANEO_TIPO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 259.400000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.TopLine.Color = clSilver
        Height = 22.677180000000000000
        Top = 1062.047930000000000000
        Width = 740.409927000000000000
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362398770000000000
          Top = -0.000008750000000002
          Width = 113.385900730000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g. [Page] de [TotalPages#]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530050000000000
          Top = -0.000008750000000002
          Width = 185.196966440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RTSoftware i2V release 2024')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 374.173478150000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxPMI'
        RowCount = 0
        object frxPMILONGITUD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.168590000000000000
          Top = 56.692950000000000000
          Width = 109.608200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'LONGITUD'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."LONGITUD"]')
          ParentFont = False
        end
        object frxPMILATITUD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 268.348460000000000000
          Top = 56.692950000000000000
          Width = 112.604700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'LATITUD'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."LATITUD"]')
          ParentFont = False
        end
        object frxPMIDOMICILIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.780000000000000000
          Top = 98.266580000000000000
          Width = 445.984540000000000000
          Height = 56.690810000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DOMICILIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPMI."DOMICILIO"]')
          ParentFont = False
        end
        object frxPMIAC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.924700000000000000
          Top = 158.740260000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          AllowHTMLTags = True
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."AC"] VAC')
          ParentFont = False
        end
        object frxPMIFAC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.520100000000000000
          Top = 158.740260000000000000
          Width = 98.269900000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FAC'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."FAC"]')
          ParentFont = False
        end
        object frxPMITFSE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.929500000000000000
          Top = 78.385900000000000000
          Width = 71.814260000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."TFSE"] Ohm')
          ParentFont = False
        end
        object frxPMIFTFSE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.521200000000000000
          Top = 78.385900000000000000
          Width = 98.270000000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FTFSE'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."FTFSE"]')
          ParentFont = False
        end
        object frxPMIFTFPR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.523290000000000000
          Top = 98.267780000000000000
          Width = 98.269430000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FTFPR'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."FTFPR"]')
          ParentFont = False
        end
        object frxPMITFPR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.930600000000000000
          Top = 98.267780000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPMI."TFPR"] Ohm')
          ParentFont = False
        end
        object frxMUNICIPIOSNOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 18.897650000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset10
          DataSetName = 'frxMUNICIPIOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMUNICIPIOS."NOMBRE"]')
          ParentFont = False
        end
        object frxLOCALIDADNOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 18.897650000000000000
          Width = 328.821230000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset11
          DataSetName = 'frxLOCALIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxLOCALIDAD."NOMBRE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 154.958607690000000000
          Top = 0.829190000000000000
          Width = 252.451262310000000000
          Height = 16.895301210000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Municipio')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 410.189400000000000000
          Top = 1.002350000000000000
          Width = 328.820760000000000000
          Height = 16.895301210000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Localidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 268.348460000000000000
          Top = 41.562350000000000000
          Width = 112.604700000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Latitud')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 154.168590000000000000
          Top = 41.562350000000000000
          Width = 109.608200000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Longitud')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 454.983190000000000000
          Top = 120.936110000000000000
          Width = 284.247440000000000000
          Height = 15.130470000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Energ'#237'a')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 648.520260000000000000
          Top = 60.475769610000000000
          Width = 90.710370000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Medido el')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 455.764230000000000000
          Top = 41.574830000000000000
          Width = 283.466400000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Tierras f'#237'sicas')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 0.780000000000000000
          Top = 79.368930000000000000
          Width = 445.984558520000000000
          Height = 15.116580000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Domicilio')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 0.780000000000000000
          Top = 158.960730000000000000
          Width = 445.984558520000000000
          Height = 15.115380000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.323130000000000000
          Top = 78.385900000000000000
          Width = 91.491410000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sistema el'#233'ctrico')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 467.323130000000000000
          Top = 98.267780000000000000
          Width = 91.491410000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pararrayos')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 570.929500000000000000
          Top = 60.472480000000000000
          Width = 75.592250000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor medido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 648.520260000000000000
          Top = 139.845899610000000000
          Width = 90.710370000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Medido el')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 570.929500000000000000
          Top = 139.842610000000000000
          Width = 75.592250000000000000
          Height = 15.118120390000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor medido')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 455.543600000000000000
          Top = 158.740260000000000000
          Width = 102.830000000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Voltaje de entrada')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 450.543600100000000000
          Top = 185.196974810000000000
          Width = 143.622139780000000000
          Height = 185.196964040000000000
          DataField = 'FOTO4'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Frame.Color = clSilver
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 601.724772250000000000
          Top = 185.196974810000000000
          Width = 136.062862760000000000
          Height = 185.196964040000000000
          DataField = 'FOTO1'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Frame.Color = clSilver
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 3.779530100000000000
          Top = 177.637908850000000000
          Width = 442.205009780000000000
          Height = 192.756039300000000000
          DataField = 'COMENTARIO1'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67333038327B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205365676F652055493B7D7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E32323632317D
            5C766965776B696E64345C756331200D0A5C706172645C66305C667331385C70
            61720D0A7D0D0A00}
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 17.456709670000000000
          Top = 15.118119920000000000
          Width = 92.000000000000000000
          Height = 49.133891670000000000
          BarType = bcCodeEAN128
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxPMI'
          Expression = '<frxPMI."ID">'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxPMI_CAMARA'
        RowCount = 0
        object frxCAMARASERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.000470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset4
          DataSetName = 'frxCAMARA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCAMARA."SERIE"]')
          ParentFont = False
        end
        object frxCAMARAFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset4
          DataSetName = 'frxCAMARA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCAMARA."FOLIO"]')
          ParentFont = False
        end
        object frxCAMARA_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.551330000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset19
          DataSetName = 'frxCAMARA_MODELO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCAMARA_MODELO."NOMBRE"]')
        end
        object frxCAMARA_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 397.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset24
          DataSetName = 'frxCAMARA_MARCA'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCAMARA_MARCA."NOMBRE"]')
        end
        object frxCAMARA_TIPONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.323130000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset29
          DataSetName = 'frxCAMARA_TIPO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCAMARA_TIPO."NOMBRE"]')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 578.268090000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxPMI_SWITCH'
        RowCount = 0
        object frxSWITCHSERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.000470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset3
          DataSetName = 'frxSWITCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSWITCH."SERIE"]')
          ParentFont = False
        end
        object frxSWITCHFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxSWITCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSWITCH."FOLIO"]')
          ParentFont = False
        end
        object frxSWITCH_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.551330000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset16
          DataSetName = 'frxSWITCH_MODELO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSWITCH_MODELO."NOMBRE"]')
          ParentFont = False
        end
        object frxSWITCH_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 397.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset17
          DataSetName = 'frxSWITCH_MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSWITCH_MARCA."NOMBRE"]')
          ParentFont = False
        end
        object frxSWITCH_TIPONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.323130000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset18
          DataSetName = 'frxSWITCH_TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSWITCH_TIPO."NOMBRE"]')
          ParentFont = False
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 680.315400000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxPMI_RADIO'
        RowCount = 0
        object frxRADIOFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset7
          DataSetName = 'frxRADIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRADIO."FOLIO"]')
          ParentFont = False
        end
        object frxRADIOSERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.000470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxRADIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRADIO."SERIE"]')
          ParentFont = False
        end
        object frxRADIO_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.551330000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset20
          DataSetName = 'frxRADIO_MODELO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRADIO_MODELO."NOMBRE"]')
        end
        object frxRADIO_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 397.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset25
          DataSetName = 'frxRADIO_MARCA'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRADIO_MARCA."NOMBRE"]')
        end
        object frxRADIO_TIPONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.323130000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset30
          DataSetName = 'frxRADIO_TIPO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRADIO_TIPO."NOMBRE"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = [ftBottom]
        Height = 37.795285220000000000
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188985575312500000
          Top = 7.559057140000000000
          Width = 740.787883260000000000
          Height = 15.118133540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'C '#193' M A R A S')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 117.164960660000000000
          Top = 22.677180000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 246.550860000000000000
          Top = 22.677700000000000000
          Width = 147.400339340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 397.936760000000000000
          Top = 22.677700000000000000
          Width = 222.990939340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 624.322660000000000000
          Top = 22.677700000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.ShadowColor = clSilver
        Frame.Typ = [ftBottom]
        Height = 37.794754540000000000
        Top = 517.795610000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188980070312500000
          Top = 7.559046860000000000
          Width = 740.787872250000000000
          Height = 15.117613140000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'S W I T C H E S')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000470000000000000
          Top = 22.676660000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430660000000000
          Top = 22.676660000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 246.551330000000000000
          Top = 22.677180000000000000
          Width = 147.400339340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 397.937230000000000000
          Top = 22.677180000000000000
          Width = 222.990939340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 624.323130000000000000
          Top = 22.677180000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = [ftBottom]
        Height = 37.795278130000000000
        Top = 619.842920000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188980070312500000
          Top = 7.559060000000000000
          Width = 740.787872250000000000
          Height = 15.118103030000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'R A D I O S')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 117.164960660000000000
          Top = 22.677180000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 246.550860000000000000
          Top = 22.677700000000000000
          Width = 147.400339340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 397.936760000000000000
          Top = 22.677700000000000000
          Width = 222.990939340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 624.322660000000000000
          Top = 22.677700000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.ShadowColor = clSilver
        Frame.Typ = [ftBottom]
        Height = 37.795278130000000000
        Top = 721.890230000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188980070312500000
          Top = 7.559060000000000000
          Width = 740.787872250000000000
          Height = 15.118103030000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'G A B I N E T E S')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 117.164960660000000000
          Top = 22.677180000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 246.550860000000000000
          Top = 22.677700000000000000
          Width = 147.400339340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 397.936760000000000000
          Top = 22.677700000000000000
          Width = 222.990939340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 624.322660000000000000
          Top = 22.677700000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object DetailData4: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 782.362710000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxPMI_GABINETE'
        RowCount = 0
        object frxGABINETESERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.000470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset9
          DataSetName = 'frxGABINETE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxGABINETE."SERIE"]')
          ParentFont = False
        end
        object frxGABINETEFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxGABINETE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxGABINETE."FOLIO"]')
          ParentFont = False
        end
        object frxGABINETE_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.551330000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset21
          DataSetName = 'frxGABINETE_MODELO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxGABINETE_MODELO."NOMBRE"]')
        end
        object frxGABINETE_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 397.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset26
          DataSetName = 'frxGABINETE_MARCA'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxGABINETE_MARCA."NOMBRE"]')
        end
        object frxGABINETE_TIPONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.323130000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset31
          DataSetName = 'frxGABINETE_TIPO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxGABINETE_TIPO."NOMBRE"]')
        end
      end
      object Header5: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = [ftBottom]
        Height = 37.795278130000000000
        Top = 823.937540000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188980070312500000
          Top = 7.559060000000000000
          Width = 740.787872250000000000
          Height = 15.118103030000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'P O S T E S')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 117.164960660000000000
          Top = 22.677180000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 230.550860000000000000
          Top = 22.677700000000000000
          Width = 162.518459340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850180000000000000
          Top = 22.677700000000000000
          Width = 177.636579340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 624.385740000000000000
          Top = 22.677700000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object DetailData5: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 884.410020000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset12
        DataSetName = 'frxPMI_POSTE'
        RowCount = 0
        object frxPOSTESERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 0.000470000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset13
          DataSetName = 'frxPOSTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPOSTE."SERIE"]')
          ParentFont = False
        end
        object frxPOSTEFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset13
          DataSetName = 'frxPOSTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPOSTE."FOLIO"]')
          ParentFont = False
        end
        object frxPOSTE_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset22
          DataSetName = 'frxPOSTE_MODELO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPOSTE_MODELO."NOMBRE"]')
        end
        object frxPOSTE_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset27
          DataSetName = 'frxPOSTE_MARCA'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPOSTE_MARCA."NOMBRE"]')
        end
        object frxPOSTE_IDNOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.386210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset32
          DataSetName = 'frxPOSTE_TIPO'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPOSTE_TIPO."NOMBRE"]')
        end
      end
      object Header6: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Typ = [ftBottom]
        Height = 34.016264540000000000
        Top = 925.984850000000000000
        Width = 740.409927000000000000
        object Memo60: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -0.188980070312500000
          Top = 3.779530000000000000
          Width = 740.787872250000000000
          Height = 15.118103030000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'M I S C E L A N E O S')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 113.385897190000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERIE')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 117.164960660000000000
          Top = 18.897650000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 230.550860000000000000
          Top = 18.898170000000000000
          Width = 162.518459340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850180000000000000
          Top = 18.898170000000000000
          Width = 185.195639340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 624.385740000000000000
          Top = 18.898170000000000000
          Width = 109.605039340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 34.014439340000000000
          Height = 15.118094540000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT')
          ParentFont = False
        end
      end
      object DetailData6: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 982.677800000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset14
        DataSetName = 'frxPMI_MISCELANEO'
        RowCount = 0
        object frxMISCELANEO_TIPONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset33
          DataSetName = 'frxMISCELANEO_TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMISCELANEO_TIPO."NOMBRE"]')
          ParentFont = False
        end
        object frxMISCELANEO_MARCANOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset28
          DataSetName = 'frxMISCELANEO_MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMISCELANEO_MARCA."NOMBRE"]')
          ParentFont = False
        end
        object frxMISCELANEO_MODELONOMBRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOMBRE'
          DataSet = frxDBDataset23
          DataSetName = 'frxMISCELANEO_MODELO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMISCELANEO_MODELO."NOMBRE"]')
          ParentFont = False
        end
        object frxMISCELANEOFOLIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'FOLIO'
          DataSet = frxDBDataset15
          DataSetName = 'frxMISCELANEO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMISCELANEO."FOLIO"]')
          ParentFont = False
        end
        object frxMISCELANEOSERIE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'SERIE'
          DataSet = frxDBDataset15
          DataSetName = 'frxMISCELANEO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMISCELANEO."SERIE"]')
          ParentFont = False
        end
        object frxPMI_MISCELANEOCANTIDAD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 591.307461050000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CANTIDAD'
          DataSet = frxDBDataset14
          DataSetName = 'frxPMI_MISCELANEO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPMI_MISCELANEO."CANTIDAD"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxPMI'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 299
    Top = 103
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxPMI_SWITCH'
    CloseDataSource = False
    DataSource = DataSource2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 299
    Top = 171
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxSWITCH'
    CloseDataSource = False
    DataSource = DataSource4
    BCDToCurrency = False
    DataSetOptions = []
    Left = 681
    Top = 171
  end
  object FDTablePMI: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI'
    Left = 70
    Top = 103
    object FDTablePMIDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Required = True
      Size = 255
    end
    object FDTablePMILONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 10
    end
    object FDTablePMILATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 10
    end
    object FDTablePMIFOTO1: TBlobField
      FieldName = 'FOTO1'
      Origin = 'FOTO1'
    end
    object FDTablePMIFOTO2: TBlobField
      FieldName = 'FOTO2'
      Origin = 'FOTO2'
    end
    object FDTablePMIFOTO3: TBlobField
      FieldName = 'FOTO3'
      Origin = 'FOTO3'
    end
    object FDTablePMIFOTO4: TBlobField
      FieldName = 'FOTO4'
      Origin = 'FOTO4'
    end
    object FDTablePMICOMENTARIO1: TBlobField
      FieldName = 'COMENTARIO1'
      Origin = 'COMENTARIO1'
    end
    object FDTablePMIMUNICIPIO_ID: TStringField
      FieldName = 'MUNICIPIO_ID'
      Origin = 'MUNICIPIO_ID'
      Required = True
      FixedChar = True
      Size = 5
    end
    object FDTablePMILOCALIDAD_ID: TStringField
      FieldName = 'LOCALIDAD_ID'
      Origin = 'LOCALIDAD_ID'
      FixedChar = True
      Size = 9
    end
    object FDTablePMIID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTablePMIAC: TCurrencyField
      FieldName = 'AC'
      Origin = 'AC'
      Required = True
    end
    object FDTablePMITFSE: TCurrencyField
      FieldName = 'TFSE'
      Origin = 'TFSE'
      Required = True
    end
    object FDTablePMITFPR: TCurrencyField
      FieldName = 'TFPR'
      Origin = 'TFPR'
      Required = True
    end
    object FDTablePMIFAC: TDateField
      FieldName = 'FAC'
      Origin = 'FAC'
    end
    object FDTablePMIFTFSE: TDateField
      FieldName = 'FTFSE'
      Origin = 'FTFSE'
    end
    object FDTablePMIFTFPR: TDateField
      FieldName = 'FTFPR'
      Origin = 'FTFPR'
    end
    object FDTablePMICOMENTARIO2: TBlobField
      FieldName = 'COMENTARIO2'
      Origin = 'COMENTARIO2'
    end
    object FDTablePMICOMENTARIO3: TBlobField
      FieldName = 'COMENTARIO3'
      Origin = 'COMENTARIO3'
    end
    object FDTablePMICOMENTARIO4: TBlobField
      FieldName = 'COMENTARIO4'
      Origin = 'COMENTARIO4'
    end
  end
  object FDTablePMI_SWITCH: TFDTable
    IndexName = 'PMI_SWITCH_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_SWITCH'
    Left = 70
    Top = 171
    object FDTablePMI_SWITCHPMI: TStringField
      FieldName = 'PMI'
      Origin = 'SWITCH'
      Required = True
    end
    object FDTablePMI_SWITCHSWITCH: TStringField
      FieldName = 'SWITCH'
      Origin = 'SWITCH'
      Required = True
      Size = 30
    end
  end
  object FDTableSWITCH: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource2
    MasterFields = 'SWITCH'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'SWITCH'
    Left = 465
    Top = 171
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 72
    Top = 16
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=$(DBPATH)/I2V.FDB')
    LoginPrompt = False
    Left = 208
    Top = 16
  end
  object FDTableCAMARA: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource3
    MasterFields = 'CAMARA'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CAMARA'
    Left = 465
    Top = 242
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxCAMARA'
    CloseDataSource = False
    DataSource = DataSource5
    BCDToCurrency = False
    DataSetOptions = []
    Left = 681
    Top = 242
  end
  object FDTablePMI_CAMARA: TFDTable
    IndexName = 'PMI_CAMARA_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_CAMARA'
    Left = 70
    Top = 242
    object FDTablePMI_CAMARAPMI: TStringField
      FieldName = 'PMI'
      Origin = 'PMI'
      Required = True
    end
    object FDTablePMI_CAMARACAMARA: TStringField
      FieldName = 'CAMARA'
      Origin = 'CAMARA'
      Required = True
      Size = 30
    end
    object FDTablePMI_CAMARANOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxPMI_CAMARA'
    CloseDataSource = False
    DataSource = DataSource3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 299
    Top = 242
  end
  object DataSource1: TDataSource
    DataSet = FDTablePMI
    Left = 192
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = FDTablePMI_SWITCH
    Left = 192
    Top = 171
  end
  object DataSource3: TDataSource
    DataSet = FDTablePMI_CAMARA
    Left = 192
    Top = 242
  end
  object DataSource4: TDataSource
    DataSet = FDTableSWITCH
    Left = 576
    Top = 171
  end
  object DataSource5: TDataSource
    DataSet = FDTableCAMARA
    Left = 576
    Top = 242
  end
  object FDTablePMI_RADIO: TFDTable
    IndexName = 'PMI_RADIO_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_RADIO'
    Left = 72
    Top = 314
    object FDTablePMI_RADIOPMI: TStringField
      FieldName = 'PMI'
      Origin = 'PMI'
      Required = True
    end
    object FDTablePMI_RADIORADIO: TStringField
      FieldName = 'RADIO'
      Origin = 'RADIO'
      Required = True
      Size = 30
    end
  end
  object FDTableRADIO: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource6
    MasterFields = 'RADIO'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'RADIO'
    Left = 464
    Top = 314
  end
  object DataSource6: TDataSource
    DataSet = FDTablePMI_RADIO
    Left = 192
    Top = 314
  end
  object DataSource7: TDataSource
    DataSet = FDTableRADIO
    Left = 576
    Top = 314
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxPMI_RADIO'
    CloseDataSource = False
    DataSet = FDTablePMI_RADIO
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 314
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxRADIO'
    CloseDataSource = False
    DataSource = DataSource7
    BCDToCurrency = False
    DataSetOptions = []
    Left = 681
    Top = 314
  end
  object FDTablePMI_GABINETE: TFDTable
    IndexName = 'PMI_GABINETE_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_GABINETE'
    Left = 72
    Top = 386
    object FDTablePMI_GABINETEPMI: TStringField
      FieldName = 'PMI'
      Origin = 'PMI'
      Required = True
    end
    object FDTablePMI_GABINETEGABINETE: TStringField
      FieldName = 'GABINETE'
      Origin = 'GABINETE'
      Required = True
      Size = 30
    end
  end
  object FDTableGABINETE: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource8
    MasterFields = 'GABINETE'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'GABINETE'
    Left = 464
    Top = 386
  end
  object DataSource8: TDataSource
    DataSet = FDTablePMI_GABINETE
    Left = 192
    Top = 386
  end
  object DataSource9: TDataSource
    DataSet = FDTableGABINETE
    Left = 576
    Top = 386
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxPMI_GABINETE'
    CloseDataSource = False
    DataSource = DataSource8
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 386
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxGABINETE'
    CloseDataSource = False
    DataSource = DataSource9
    BCDToCurrency = False
    DataSetOptions = []
    Left = 681
    Top = 386
  end
  object FDTableMUNICIPIOS: TFDTable
    IndexFieldNames = 'ID'
    MasterSource = DataSource1
    MasterFields = 'MUNICIPIO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MUNICIPIOS'
    Left = 614
    Top = 34
  end
  object DataSource10: TDataSource
    DataSet = FDTableMUNICIPIOS
    Left = 576
    Top = 104
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxMUNICIPIOS'
    CloseDataSource = False
    DataSource = DataSource10
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 104
  end
  object FDTablePMI_POSTE: TFDTable
    IndexName = 'PMI_POSTE_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_POSTE'
    Left = 72
    Top = 466
    object FDTablePMI_POSTEPMI: TStringField
      FieldName = 'PMI'
      Origin = 'PMI'
      Required = True
    end
    object FDTablePMI_POSTEPOSTE: TStringField
      FieldName = 'POSTE'
      Origin = 'POSTE'
      Required = True
      Size = 30
    end
  end
  object FDTablePOSTE: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource12
    MasterFields = 'POSTE'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'POSTE'
    Left = 464
    Top = 466
  end
  object DataSource12: TDataSource
    DataSet = FDTablePMI_POSTE
    Left = 192
    Top = 466
  end
  object DataSource13: TDataSource
    DataSet = FDTablePOSTE
    Left = 576
    Top = 466
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxPMI_POSTE'
    CloseDataSource = False
    DataSource = DataSource12
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 466
  end
  object frxDBDataset13: TfrxDBDataset
    UserName = 'frxPOSTE'
    CloseDataSource = False
    DataSource = DataSource13
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 466
  end
  object FDTablePMI_MISCELANEO: TFDTable
    IndexName = 'PMI_MISCELANEO_PMI_FK'
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'PMI'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PMI_MISCELANEO'
    Left = 90
    Top = 670
    object FDTablePMI_MISCELANEOPMI: TStringField
      FieldName = 'PMI'
      Origin = 'PMI'
      Required = True
    end
    object FDTablePMI_MISCELANEOMISCELANEO: TIntegerField
      FieldName = 'MISCELANEO'
      Origin = 'MISCELANEO'
      Required = True
    end
    object FDTablePMI_MISCELANEOCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
  end
  object DataSource14: TDataSource
    DataSet = FDTablePMI_MISCELANEO
    Left = 240
    Top = 668
  end
  object frxDBDataset14: TfrxDBDataset
    UserName = 'frxPMI_MISCELANEO'
    CloseDataSource = False
    DataSource = DataSource14
    BCDToCurrency = False
    DataSetOptions = []
    Left = 380
    Top = 668
  end
  object FDTableMISCELANEO: TFDTable
    IndexFieldNames = 'SERIE'
    MasterSource = DataSource14
    MasterFields = 'MISCELANEO'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MISCELANEO'
    Left = 504
    Top = 668
  end
  object DataSource15: TDataSource
    DataSet = FDTableMISCELANEO
    Left = 606
    Top = 658
  end
  object frxDBDataset15: TfrxDBDataset
    UserName = 'frxMISCELANEO'
    CloseDataSource = False
    DataSource = DataSource15
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 518
  end
  object FDTableLOCALIDADES: TFDTable
    IndexName = 'LOCALIDADES_PK'
    MasterSource = DataSource1
    MasterFields = 'LOCALIDAD_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'LOCALIDADES'
    Left = 787
    Top = 34
  end
  object DataSource11: TDataSource
    DataSet = FDTableLOCALIDADES
    Left = 747
    Top = 114
  end
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxLOCALIDAD'
    CloseDataSource = False
    DataSource = DataSource11
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 124
  end
  object DataSource16: TDataSource
    DataSet = FDTableSWITCH_MODELO
    Left = 747
    Top = 171
  end
  object frxDBDataset16: TfrxDBDataset
    UserName = 'frxSWITCH_MODELO'
    CloseDataSource = False
    DataSource = DataSource16
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 181
  end
  object FDTableSWITCH_MARCA: TFDTable
    IndexName = 'SWITCH_MARCA_PK'
    MasterSource = DataSource16
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'SWITCH_MARCA'
    Left = 747
    Top = 191
  end
  object DataSource17: TDataSource
    DataSet = FDTableSWITCH_MARCA
    Left = 747
    Top = 201
  end
  object FDTableSWITCH_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'SWITCH_MODELO'
    Left = 747
    Top = 211
  end
  object frxDBDataset17: TfrxDBDataset
    UserName = 'frxSWITCH_MARCA'
    CloseDataSource = False
    DataSource = DataSource17
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 221
  end
  object FDTableCAMARA_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CAMARA_MODELO'
    Left = 747
    Top = 242
  end
  object FDTableRADIO_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'RADIO_MODELO'
    Left = 747
    Top = 314
  end
  object FDTableGABINETE_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'GABINETE_MODELO'
    Left = 747
    Top = 386
  end
  object FDTablePOSTE_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'POSTE_MODELO'
    Left = 747
    Top = 466
  end
  object FDTableMISCELANEO_MODELO: TFDTable
    IndexFieldNames = 'ID'
    MasterFields = 'MODELO_ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MISCELANEO_MODELO'
    Left = 747
    Top = 518
  end
  object DataSource19: TDataSource
    DataSet = FDTableCAMARA_MODELO
    Left = 747
    Top = 252
  end
  object DataSource20: TDataSource
    DataSet = FDTableRADIO_MODELO
    Left = 747
    Top = 324
  end
  object DataSource21: TDataSource
    DataSet = FDTableGABINETE_MODELO
    Left = 747
    Top = 396
  end
  object DataSource22: TDataSource
    DataSet = FDTablePOSTE_MODELO
    Left = 747
    Top = 476
  end
  object DataSource23: TDataSource
    DataSet = FDTableMISCELANEO_MODELO
    Left = 747
    Top = 518
  end
  object frxDBDataset19: TfrxDBDataset
    UserName = 'frxCAMARA_MODELO'
    CloseDataSource = False
    DataSource = DataSource19
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 262
  end
  object frxDBDataset20: TfrxDBDataset
    UserName = 'frxRADIO_MODELO'
    CloseDataSource = False
    DataSource = DataSource20
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 334
  end
  object frxDBDataset21: TfrxDBDataset
    UserName = 'frxGABINETE_MODELO'
    CloseDataSource = False
    DataSource = DataSource21
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 406
  end
  object frxDBDataset22: TfrxDBDataset
    UserName = 'frxPOSTE_MODELO'
    CloseDataSource = False
    DataSource = DataSource22
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 486
  end
  object frxDBDataset23: TfrxDBDataset
    UserName = 'frxMISCELANEO_MODELO'
    CloseDataSource = False
    DataSource = DataSource23
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 518
  end
  object FDTableCAMARA_MARCA: TFDTable
    IndexName = 'CAMARA_MARCA_PK'
    MasterSource = DataSource19
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CAMARA_MARCA'
    Left = 747
    Top = 272
  end
  object FDTableRADIO_MARCA: TFDTable
    IndexName = 'RADIO_MARCA_PK'
    MasterSource = DataSource20
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'RADIO_MARCA'
    Left = 747
    Top = 344
  end
  object FDTableGABINETE_MARCA: TFDTable
    IndexName = 'GABINETE_MARCA_PK'
    MasterSource = DataSource21
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'GABINETE_MARCA'
    Left = 747
    Top = 416
  end
  object FDTablePOSTE_MARCA: TFDTable
    IndexName = 'POSTE_MARCA_PK'
    MasterSource = DataSource22
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'POSTE_MARCA'
    Left = 747
    Top = 496
  end
  object FDTableMISCELANEO_MARCA: TFDTable
    IndexName = 'MISCELANEO_MARCA_PK'
    MasterSource = DataSource23
    MasterFields = 'MARCA_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MISCELANEO_MARCA'
    Left = 747
    Top = 518
  end
  object DataSource24: TDataSource
    DataSet = FDTableCAMARA_MARCA
    Left = 747
    Top = 282
  end
  object DataSource25: TDataSource
    DataSet = FDTableRADIO_MARCA
    Left = 747
    Top = 354
  end
  object DataSource26: TDataSource
    DataSet = FDTableGABINETE_MARCA
    Left = 747
    Top = 426
  end
  object DataSource27: TDataSource
    DataSet = FDTablePOSTE_MARCA
    Left = 747
    Top = 506
  end
  object DataSource28: TDataSource
    DataSet = FDTableMISCELANEO_MARCA
    Left = 747
    Top = 518
  end
  object frxDBDataset24: TfrxDBDataset
    UserName = 'frxCAMARA_MARCA'
    CloseDataSource = False
    DataSource = DataSource24
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 292
  end
  object frxDBDataset25: TfrxDBDataset
    UserName = 'frxRADIO_MARCA'
    CloseDataSource = False
    DataSource = DataSource25
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 364
  end
  object frxDBDataset26: TfrxDBDataset
    UserName = 'frxGABINETE_MARCA'
    CloseDataSource = False
    DataSource = DataSource26
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 436
  end
  object frxDBDataset27: TfrxDBDataset
    UserName = 'frxPOSTE_MARCA'
    CloseDataSource = False
    DataSource = DataSource27
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 516
  end
  object frxDBDataset28: TfrxDBDataset
    UserName = 'frxMISCELANEO_MARCA'
    CloseDataSource = False
    DataSource = DataSource28
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 518
  end
  object FDTableSWITCH_TIPO: TFDTable
    IndexName = 'SWITCH_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    Exclusive = True
    TableName = 'SWITCH_TIPO'
    Left = 747
    Top = 231
  end
  object DataSource18: TDataSource
    DataSet = FDTableSWITCH_TIPO
    Left = 747
    Top = 241
  end
  object frxDBDataset18: TfrxDBDataset
    UserName = 'frxSWITCH_TIPO'
    CloseDataSource = False
    DataSource = DataSource18
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 251
  end
  object FDTableCAMARA_TIPO: TFDTable
    IndexName = 'CAMARA_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CAMARA_TIPO'
    Left = 747
    Top = 302
  end
  object FDTableRADIO_TIPO: TFDTable
    IndexName = 'RADIO_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'RADIO_TIPO'
    Left = 747
    Top = 374
  end
  object FDTableGABINETE_TIPO: TFDTable
    IndexName = 'GABINETE_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'GABINETE_TIPO'
    Left = 747
    Top = 446
  end
  object FDTablePOSTE_TIPO: TFDTable
    IndexName = 'POSTE_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'POSTE_TIPO'
    Left = 747
    Top = 518
  end
  object FDTableMISCELANEO_TIPO: TFDTable
    IndexName = 'MISCELANEO_TIPO_PK'
    MasterFields = 'TIPO_ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'MISCELANEO_TIPO'
    Left = 747
    Top = 518
  end
  object DataSource29: TDataSource
    DataSet = FDTableCAMARA_TIPO
    Left = 747
    Top = 312
  end
  object DataSource30: TDataSource
    DataSet = FDTableRADIO_TIPO
    Left = 747
    Top = 384
  end
  object DataSource31: TDataSource
    DataSet = FDTableGABINETE_TIPO
    Left = 747
    Top = 456
  end
  object DataSource32: TDataSource
    DataSet = FDTablePOSTE_TIPO
    Left = 747
    Top = 518
  end
  object DataSource33: TDataSource
    DataSet = FDTableMISCELANEO_TIPO
    Left = 747
    Top = 518
  end
  object frxDBDataset29: TfrxDBDataset
    UserName = 'frxCAMARA_TIPO'
    CloseDataSource = False
    DataSource = DataSource29
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 322
  end
  object frxDBDataset30: TfrxDBDataset
    UserName = 'frxRADIO_TIPO'
    CloseDataSource = False
    DataSource = DataSource30
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 394
  end
  object frxDBDataset31: TfrxDBDataset
    UserName = 'frxGABINETE_TIPO'
    CloseDataSource = False
    DataSource = DataSource31
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 518
  end
  object frxDBDataset32: TfrxDBDataset
    UserName = 'frxPOSTE_TIPO'
    CloseDataSource = False
    DataSource = DataSource32
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 518
  end
  object frxDBDataset33: TfrxDBDataset
    UserName = 'frxMISCELANEO_TIPO'
    CloseDataSource = False
    DataSource = DataSource33
    BCDToCurrency = False
    DataSetOptions = []
    Left = 747
    Top = 518
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 400
    Top = 20
  end
end
