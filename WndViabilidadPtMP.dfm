object FrmViabilidadPtMP: TFrmViabilidadPtMP
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Viabilidad de radioenlaces'
  ClientHeight = 732
  ClientWidth = 1215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 106
  TextHeight = 17
  object Splitter1: TSplitter
    Left = 522
    Top = 0
    Width = 4
    Height = 732
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    MinSize = 34
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 732
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    ShowCaption = False
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 1
      Top = 329
      Width = 520
      Height = 3
      Cursor = crVSplit
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      MinSize = 34
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 520
      Height = 328
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 0
      object SkPaintBox1: TSkPaintBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 510
        Height = 289
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        OnDraw = SkPaintBox1Draw
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 512
        ExplicitHeight = 290
      end
      object TrackBar1: TTrackBar
        Left = 1
        Top = 298
        Width = 518
        Height = 29
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Max = 99
        TabOrder = 0
        ThumbLength = 22
        TickStyle = tsNone
        OnChange = TrackBar1Change
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 332
      Width = 520
      Height = 399
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 518
        Height = 397
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = TabSheet1
        Align = alClient
        Images = ImageList1
        TabOrder = 0
        object TabSheet1: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Enlace PtMP '
          ImageIndex = 1
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 510
            Height = 365
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            VertScrollBar.Smooth = True
            Align = alClient
            TabOrder = 0
            UseWheelForScrolling = True
            object Label9: TLabel
              Left = 24
              Top = 155
              Width = 79
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Altura cr'#237'tica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 305
              Top = 33
              Width = 49
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Punto B'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 153
              Top = 33
              Width = 50
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Punto A'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 181
              Top = 187
              Width = 27
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'MHz'
            end
            object Label7: TLabel
              Left = 33
              Top = 187
              Width = 65
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Frecuencia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 181
              Top = 155
              Width = 41
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'metros'
            end
            object LabelPath: TLabel
              Left = 430
              Top = 62
              Width = 56
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'LabelPath'
              Visible = False
            end
            object Label26: TLabel
              Left = 18
              Top = 60
              Width = 80
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Alignment = taRightJustify
              Caption = 'Coordenadas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 49
              Top = 92
              Width = 49
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Alignment = taRightJustify
              Caption = 'a.s.n.m.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 4
              Top = 4
              Width = 88
              Height = 24
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Abrir'
              ImageIndex = 13
              Images = ImageList1
              OnClick = SpeedButton2Click
            end
            object Label4: TLabel
              Left = 181
              Top = 124
              Width = 41
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'metros'
            end
            object Label8: TLabel
              Left = 331
              Top = 92
              Width = 41
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'metros'
            end
            object SpeedButton3: TSpeedButton
              Left = 99
              Top = 4
              Width = 88
              Height = 24
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Actualiza'
              ImageIndex = 12
              Images = ImageList1
              Enabled = False
              OnClick = SpeedButton3Click
            end
            object Label10: TLabel
              Left = 13
              Top = 124
              Width = 84
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Altura antena'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 181
              Top = 92
              Width = 41
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'metros'
            end
            object Label17: TLabel
              Left = 331
              Top = 124
              Width = 41
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'metros'
            end
            object EditAlturaCritica: TEdit
              Left = 110
              Top = 153
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 0
              Text = '0'
            end
            object EditFreq: TEdit
              Left = 110
              Top = 185
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 1
              Text = '5125'
            end
            object EditLonA: TEdit
              Left = 181
              Top = 57
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 2
            end
            object EditLatA: TEdit
              Left = 110
              Top = 57
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 3
            end
            object EditLonB: TEdit
              Left = 331
              Top = 57
              Width = 68
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 4
            end
            object EditLatB: TEdit
              Left = 262
              Top = 57
              Width = 68
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 5
            end
            object EditasnmA: TEdit
              Left = 110
              Top = 89
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 6
            end
            object EditasnmB: TEdit
              Left = 262
              Top = 89
              Width = 68
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 7
            end
            object EditAlturaA: TEdit
              Left = 110
              Top = 121
              Width = 70
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 8
              Text = '0'
            end
            object EditAlturaB: TEdit
              Left = 262
              Top = 121
              Width = 68
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabOrder = 9
              Text = '0'
            end
          end
        end
        object TabSheet3: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tabla '
          ImageIndex = 6
          object StringGrid1: TStringGrid
            Left = 0
            Top = 0
            Width = 511
            Height = 367
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            ColCount = 1
            DefaultColWidth = 71
            DefaultRowHeight = 27
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goRowSelect, goFixedRowDefAlign]
            TabOrder = 0
            OnDrawCell = StringGrid1DrawCell
            OnSelectCell = StringGrid1SelectCell
          end
        end
        object TabSheet2: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Mapa '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 511
            Height = 367
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            object LabelFOV: TLabel
              Left = 169
              Top = 49
              Width = 4
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
            end
            object Label11: TLabel
              Left = 125
              Top = 46
              Width = 9
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'D'
            end
            object Label20: TLabel
              Left = 33
              Top = 46
              Width = 22
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'FoV'
            end
            object Label21: TLabel
              Left = 79
              Top = 46
              Width = 14
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Az'
            end
            object Label14: TLabel
              Left = 342
              Top = 66
              Width = 127
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Alignment = taCenter
              AutoSize = False
              Caption = 'Label14'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSteelblue
              Font.Height = -18
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelAzi: TLabel
              Left = 169
              Top = 73
              Width = 4
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
            end
            object Label1: TLabel
              Left = 342
              Top = 44
              Width = 127
              Height = 18
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nivel de zoom'
            end
            object Label2: TLabel
              Left = 171
              Top = 180
              Width = 44
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Azimut'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 281
              Top = 212
              Width = 42
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'grados'
            end
            object Label3: TLabel
              Left = 194
              Top = 212
              Width = 21
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Tilt'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 281
              Top = 180
              Width = 42
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'grados'
            end
            object Label22: TLabel
              Left = 398
              Top = 180
              Width = 42
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'grados'
            end
            object Label23: TLabel
              Left = 398
              Top = 212
              Width = 42
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'grados'
            end
            object Label15: TLabel
              Left = 342
              Top = 150
              Width = 49
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Punto B'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 223
              Top = 150
              Width = 50
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Punto A'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SBAntenaB: TSpeedButton
              Left = 398
              Top = 148
              Width = 27
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              ImageIndex = 8
              Images = ImageList1
              Enabled = False
              OnClick = SBAntenaBClick
            end
            object SBAntena: TSpeedButton
              Left = 281
              Top = 149
              Width = 26
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              ImageIndex = 10
              Images = ImageList1
              Enabled = False
              OnClick = SBAntenaClick
            end
            object Label25: TLabel
              Left = 398
              Top = 244
              Width = 42
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'grados'
            end
            object Label28: TLabel
              Left = 193
              Top = 244
              Width = 24
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'FoV'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object TBZoom: TTrackBar
              Left = 342
              Top = 96
              Width = 127
              Height = 32
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              Max = 19
              Min = 9
              Position = 14
              TabOrder = 0
              ThumbLength = 22
              OnChange = TBZoomChange
            end
            object TBAngle: TTrackBar
              Left = 26
              Top = 64
              Width = 34
              Height = 211
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              Max = 360
              Orientation = trVertical
              Frequency = 15
              Position = 60
              TabOrder = 1
              ThumbLength = 27
              TickStyle = tsNone
              OnChange = TBAngleChange
            end
            object TBAzimut: TTrackBar
              Left = 69
              Top = 64
              Width = 34
              Height = 211
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              Max = 359
              Orientation = trVertical
              Position = 157
              TabOrder = 2
              ThumbLength = 27
              TickStyle = tsNone
              OnChange = TBAzimutChange
            end
            object TBFoV: TTrackBar
              Left = 112
              Top = 64
              Width = 35
              Height = 211
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              Max = 1000
              Orientation = trVertical
              Position = 180
              TabOrder = 3
              ThumbLength = 27
              TickStyle = tsNone
              OnChange = TBFoVChange
            end
            object EditAzimutA: TEdit
              Left = 225
              Top = 178
              Width = 49
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              TabOrder = 4
              Text = '0'
            end
            object EditTiltA: TEdit
              Left = 225
              Top = 209
              Width = 49
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              TabOrder = 5
              Text = '0'
            end
            object EditAzimutB: TEdit
              Left = 342
              Top = 178
              Width = 49
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              TabOrder = 6
              Text = '0'
            end
            object EditTiltB: TEdit
              Left = 342
              Top = 209
              Width = 49
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              TabOrder = 7
              Text = '0'
            end
            object EditFoV: TEdit
              Left = 342
              Top = 241
              Width = 49
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Enabled = False
              TabOrder = 8
              Text = '0'
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 526
    Top = 0
    Width = 689
    Height = 732
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Mapa: TECNativeMap
      Left = 1
      Top = 1
      Width = 687
      Height = 730
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      HideShapesWhenZoom = False
      HideShapesWhenWaitingTile = False
      DblClickZoom = True
      MouseWheelZoom = True
      latitude = 43.232951000000000000
      longitude = 0.078081999999994910
      Reticle = False
      ReticleColor = clBlack
      ZoomScaleFactor = 0
      NumericalZoom = 14.000000000000000000
      DragRect = drNone
      Draggable = True
      OnlyOneOpenInfoWindow = False
      WaitingForDestruction = False
      Active = True
      NbrThreadTile = ttFour
      OnChangeMapZoom = MapaChangeMapZoom
      Align = alClient
      TabOrder = 0
    end
  end
  object ImageList1: TImageList
    Left = 646
    Top = 331
    Bitmap = {
      494C01010F001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F9F61281CDA8A94EB884EE56BB89E494D3B591FCFDFD040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FE0148B580F642B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF5BBD
      8DDC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFD0342B3
      7CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B3
      7CFF42B37CFF00000000000000000000000054BFFFAB00A0FFFF0078BEFF00A0
      FFFF00649EFF00A0FFFF008CDFFF0078BEFF00A0FFFF00649EFF00A0FFFF008C
      DFFF0078BEFF00A0FFFF00A0FFFF000000000000000033B3FFCC12B3FFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042B37CFF42B3
      7CFF42B37CFF42B37CFF7BCBA5FFBAE7D2FFB5E5CEFF66C295FF42B37CFF42B3
      7CFF42B37CFF58BB8BE1000000000000000054BFFFAB00A0FFFF0085D4FF00A0
      FFFF00649EFF00A0FFFF0093EAFF0078BEFF00A0FFFF0078BEFF00A0FFFF008C
      DFFF0085D4FF00A0FFFF00A0FFFF000000000000000000A0FFFF04A4FFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFFCEF2FF3A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7E8D84A42B37CFF42B3
      7CFF42B37CFFC6ECDBFFADE2C9FF4DB884FF55BB8AFFBFE9D5FFB6E5CFFF42B3
      7CFF42B37CFF42B37CFFFBFDFC060000000054BFFFAB00A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF00A0FFFF000000000000000000A0FFFF00A0FFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF82E0FF94000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050B886EB42B37CFF42B3
      7CFF97D8B9FF99D8B9FF42B37CFF42B37CFF42B37CFF42B37CFFBDE8D5FF66C3
      96FF42B37CFF42B37CFF8FD2B196000000008DD4FF7200A0FFFF00A0FFFF00A0
      FFFF54BFFFAB54BFFFAB54BFFFAB54BFFFAB54BFFFAB54BFFFAB54BFFFAB4CBD
      FFB300A0FFFF00A0FFFF3DB6FFC2000000000000000000A0FFFF00A0FFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF34CDFFEF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B37CFF42B37CFF42B3
      7CFFC8EDDCFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF5ABD8DFFB6E5
      D0FF42B37CFF42B37CFF59BD8BDF000000000000000000A0FFFF00A0FFFF00A0
      FFFF00000000000000000000000000000000000000000000000000000000E0F2
      FF1F00A0FFFF00A0FFFFC9EBFF36000000000000000000A0FFFF00A0FFFF27CA
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B37CFF42B37CFF42B3
      7CFFC8EDDCFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF50B986FFBBE8
      D3FF42B37CFF42B37CFF51B986EA000000000000000017A8FFE800A0FFFF00A0
      FFFF000000000000000000000000000000000000000000000000000000004FBC
      FFB000A0FFFF00A0FFFFFDFEFF02000000000000000000A0FFFF00A0FFFF1ABB
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000046B47FF942B37CFF42B3
      7CFFA8DFC5FF81CEAAFF6FC69CFF42B37CFF42B37CFF42B37CFFACE1C8FF77CA
      A2FF42B37CFF42B37CFF80CBA7AC0000000000000000BCE6FF4300A0FFFF00A0
      FFFF25ADFFDA0000000000000000000000000000000000000000EAF7FF1500A0
      FFFF00A0FFFF00A0FFFF00000000000000000000000000A0FFFF00A0FFFF06A7
      FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
      FFFF28CAFFFF28CAFFFF28CAFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1E0C96942B37CFF42B3
      7CFF49B681FFC8EDDCFF6FC69CFF42B37CFF42B37CFF42B37CFF74C9A0FF42B3
      7CFF42B37CFF42B37CFFF0F9F51400000000000000000000000002A0FFFD00A0
      FFFF00A0FFFF0CA4FFF3E3F5FF1C00000000000000007CCEFF8300A0FFFF00A0
      FFFF00A0FFFFCCECFF3300000000000000000000000000A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042B37CFF42B3
      7CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B3
      7CFF42B37CFF45B47EFA00000000000000000000000000000000FEFFFF0100A0
      FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0
      FFFF5FC2FFA00000000000000000000000000000000000A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0
      FFFF00A0FFFF55C0FFAA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6F5EE2242B3
      7CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B3
      7CFF42B37CFFFEFEFE0200000000000000000000000000000000000000000000
      000020ABFFDF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFF00A0FFFFB2E2
      FF4D000000000000000000000000000000000000000000A0FFFF00A0FFFF00A0
      FFFF00A0FFFF00A0FFFF0AA3FFF5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2F3
      EB2642B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B37CFF42B3
      7CFFFBFEFC050000000000000000000000000000000000000000000000000000
      000000000000000000008ED4FF715BC1FFA471CAFF8ED3EEFF2C000000000000
      00000000000000000000000000000000000000000000F2FAFF0D4BBBFFB444B9
      FFBB44B9FFBB44B9FFBB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E1CC6348B580F642B37CFF42B37CFF55BA89E5CDEBDC440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5D4D23F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1DDD98EF1DD
      D98EF1DDD98EF1DDD98EF1DDD98EF1DDD98EF1DDD98EF1DDD98EF1DDD98EF1DD
      D98EF1DDD98EF1DDD98E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F8B85A74F4737FFDAD9D937000000000000000000000000000000000000
      000000000000F4F1D728EDE9BB44FEFDFA05000000000000000000000000F2ED
      C93600000000000000000000000000000000000000000000000000000000837B
      6ACC00000000000000000000000000000000000000000000000000000000E0DE
      DA33F1F1F0150000000000000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFF6EAE8FFF6EA
      E8FFF6EAE8FFDAA89FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A97
      90984F4737FF8F8C86AA0000000000000000000000000000000000000000F9F6
      E619C1AC00FFC7B51CE3DFD5817EC1AC00FFCAB723DC00000000EDE9BA45C1AC
      00FFC1AC02FD000000000000000000000000000000000000000000000000C8C4
      BB66F6F5F420000000000000000000000000000000000000000000000000B0AA
      9CD9000000000000000000000000000000000000000000000000EDD4D0FFE0B7
      B0FFE0B7B0FFE0B7B0FFE0B7B0FFE0B7B0FFEFD9D6FFEDD4D0FFCCADEBFF5B06
      F5FFF6EAE8FFDAA89FFF00000000000000000000000000000000000000000000
      0000D6D6D6427F7F7FCE626262FD898989BDE8E8E82400000000BBB8B66B4F47
      37FF928F89A6000000000000000000000000000000000000000000000000C1AC
      00FFC1AD04FB000000000000000000000000C1AC00FFD3C44EB1C5B112EDFBFA
      F10EDFD37C83F8F7E8170000000000000000000000000000000000000000EBE9
      E456C8C1B4F00000000000000000000000000000000000000000FBFAFA0EC5BE
      B0FF000000000000000000000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFC6A2ECFFEFE1
      E9FFB58AEDFFDAA89FFF00000000000000000000000000000000000000006464
      64FA6F6961FFD7A363FFF5B564FFC99C63FF636261FF6E6E6EE7616161FFB2B2
      B177000000000000000000000000000000000000000000000000DED57D82C1AC
      00FFE4DB926D000000000000000000000000D3C54DB2C1AC00FFD0C13FC00000
      000000000000F3F0D12E0000000000000000000000000000000000000000FAFA
      F813C5BEB0FFFEFEFD0500000000000000000000000000000000CBC5B8E2C7C0
      B3F5000000000000000000000000000000000000000000000000E7C5C0FFEDD4
      D0FFEDD4D0FFEDD4D0FFEDD4D0FFEDD4D0FFEDD4D0FFE7C5C0FFEDD4D0FFEDD4
      D0FFEDD4D0FFDAA89FFF00000000000000000000000000000000616161FFC599
      63FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FF977F62FF6C6C6CED0000
      0000000000000000000000000000000000000000000000000000C2AD06F9C1AC
      00FFF9F6E619000000000000000000000000F7F5E31CC1AC00FFE2D88B740000
      00000000000000000000000000000000000000000000000000006726E7F6CBC8
      C155C5BDAFFCC7C0B2E2CBC8C1559C9078FFBBB4A88ECBC8C056C5BEB0FFCAC6
      BE6AA891CE8CA074F29C00000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFF6EAE8FFEAD8
      EAFFF6EAE8FFDAA89FFF000000000000000000000000B5B5B5787F7261FFF6B5
      64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FF636261FFE9E9
      E923000000000000000000000000000000000000000000000000C1AC00FFC1AC
      00FF0000000000000000000000000000000000000000C1AC00FFC2AD06F90000
      00000000000000000000000000000000000000000000000000009D74F09E0000
      0000F4F3F031C5BEB0FF000000009C9078FFDEDAD255D3CEC4C0C5BEB0FF0000
      0000EADFFB23CDB7F85100000000000000000000000000000000EDD4D0FFB551
      3FFFB5513FFFB5513FFFB5513FFFB5513FFFE0B7B0FFEDD4D0FF772FF2FF5F0C
      F5FFF2E4E9FFDAA89FFF000000000000000000000000616161FEF2B364FFF6B5
      64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFC89B63FF8888
      88BF000000000000000000000000000000000000000000000000C1AC00FFC1AC
      00FF0000000000000000000000000000000000000000C1AC00FFC1AC00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5BEB0FFD7D3C9AC0000000000000000C5BEB0FFF0EDE9430000
      0000000000000000000000000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFF6EAE8FFF6EA
      E8FFF0E2E9FFDAA89FFF000000000000000000000000616161FFF6B564FFF6B5
      64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF1B264FF6565
      65F7000000000000000000000000000000000000000000000000C1AC00FFC1AC
      00FFFEFDFA0500000000000000000000000000000000C1AC00FFC1AC00FFFEFD
      FA05000000000000000000000000000000000000000000000000000000000000
      000000000000EBE9E456C5BEB0FFE6E2DD41D9D4CC9CC5BEB0FF000000000000
      0000000000000000000000000000000000000000000000000000E0B7B0FFE3BE
      B7FFE3BEB7FFE3BEB7FFE3BEB7FFE3BEB7FFE3BEB7FFE0B7B0FFE3BEB7FFE3BE
      B7FFE3BEB7FFDAA89FFF000000000000000000000000616161FFF6B564FFF6B5
      64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFD5A364FF7F7F
      7FCE000000000000000000000000000000000000000000000000CAB929D6C1AC
      00FFEFEBC13E000000000000000000000000F6F2DA25D3C34BB4C1AC00FFE4DA
      8F70000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9078FFB0A694CB9C9078FFD0CBC08E000000000000
      0000000000000000000000000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFF5E9E8FF8644
      F1FFF6EAE8FFDAA89FFF000000000000000000000000A0A0A0999C8262FFF6B5
      64FFFBDEB9FFF7B86BFFF6B564FFF7BE78FFFBD9AFFFF6B564FF6F6961FFD6D6
      D641000000000000000000000000000000000000000000000000F5F4DC23C1AC
      00FFD1C042BD000000000000000000000000C4B00DF2FFFFFE01C1AC00FFC7B4
      1BE4000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9078FF00000000F9F8F70F9F937CF7000000000000
      0000000000000000000000000000000000000000000000000000EDD4D0FFCA83
      76FFCA8376FFCA8376FFCA8376FFCA8376FFE8C9C3FFEDD4D0FF6413F4FFAE80
      EDFFB489EEFFDAA89FFF00000000000000000000000000000000616161FFE7AD
      64FFF6B564FFF8C381FFF9D09DFFF7BF78FFF6B564FFC49963FF626262FC0000
      000000000000000000000000000000000000000000000000000000000000CBBA
      2CD3C1AC00FFFBFAF10E00000000DCD0738CDED1768900000000C1AC00FFC1AC
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9078FFD3CFC36FA59A85E6CDC9BC7D000000000000
      0000000000000000000000000000000000000000000000000000EDD4D0FFF6EA
      E8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFF6EAE8FFEDD4D0FFF6EAE8FFF6EA
      E8FFF6EAE8FFDAA89FFF00000000000000000000000000000000F1F1F1176161
      61FF9B8162FFF6B564FFF6B564FFF2B364FF7F7261FF616161FEFEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0D6807FC1AC00FFC1AC00FFDCD2758A0000000000000000D2C244BBD2C2
      44BB000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE01867C65FFBAB5A89000000000000000000000
      0000000000000000000000000000000000000000000000000000DAA89FFFDAA8
      9FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA8
      9FFFDAA89FFFDAA89FFF00000000000000000000000000000000000000000000
      0000A0A0A097616161FF616161FF616161FEB6B6B67500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000645A45FFCBC8C15500000000000000000000
      0000000000000000000000000000000000000000000000000000DAA89FFFDAA8
      9FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA89FFFDAA8
      9FFFDAA89FFFDAA89FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008AA5FF750000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2C4FF4D003DFFFF013DFFFE00000000000000000000
      0000000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4EAFF1B003DFFFF003DFFFF003DFFFF1950FFE6000000000000
      0000000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000FBDBB4A9F9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CC94F5FFFAF61500000000000000000000000000000000000000000000
      0000FEFDFD03C16D5ED5B5513FFFB5513FFFB5513FFFB5513FFFE2BCB5610000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF6086FF9F0000
      0000000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFEDBB85FFEDBB85FFEDBB85FFEDBB85FFEDBB85FFEDBB85FFFBDEBBFFF6D3
      A9FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FFFBD8
      AEBBFBD8AEBBFBD8AEBBFBD8AEBBF9CA90FFFAD3A4D2FBD8AEBBFBD8AEBBFBD8
      AEBBFACE9AE8F9CC95F20000000000000000000000000000000000000000E8CC
      C74BB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB95B
      4AF0000000000000000000000000000000000000000000000000000000000000
      0000174DFFE8003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFFE5EB
      FF1A000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF00000000000000000000000000000000EED9D536B551
      3FFFB5513FFFB5513FFFB5513FFFB85746FFB5513FFFB5513FFFB5513FFFB551
      3FFFB75745F600000000000000000000000000000000000000000000000098B1
      FF67003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003D
      FFFF000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFE0984FFFE0984FFFE0984FFFF2C797FFFBDEBBFFFBDEBBFFFBDEBBFFF2C7
      97FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF00000000000000000000000000000000B5513FFFB551
      3FFFB5513FFFB5513FFFB5513FFFFFFFFFFFD49B90FFB5513FFFB5513FFFB551
      3FFFB5513FFFE6C6C0540000000000000000000000000000000000000000003D
      FFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003D
      FFFF7999FF860000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFD27619FFD27619FFD27619FFD27619FFD27619FFFBDEBBFFFBDEBBFFEDBB
      85FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF000000000000000000000000F6EDEA1BB5513FFFB551
      3FFFB5513FFFB5513FFFF9F1EFFFFFFFFFFFFFFFFFFFBE6556FFB5513FFFB551
      3FFFB5513FFFB5513FFE00000000000000000000000000000000678AFF98003D
      FFFF003DFFFF003DFFFF003DFFFF4470FFBB1950FFE6003DFFFF003DFFFF003D
      FFFF003DFFFF0000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFEDBB85FFEDBB85FFEDBB85FFF6D3A9FFFBDEBBFFFBDEBBFFFBDEBBFFF6D3
      A9FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FFFDED
      DA55FDEDDA55FDEDDA55FDEDDA55F9CA90FFFBE0C18EFDEDDA55FDEDDA55FDED
      DA55FAD5A8C6F9CA90FF000000000000000000000000D9A49C84B5513FFFB551
      3FFFB5513FFFE5C3BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB55240FFB551
      3FFFB5513FFFB5513FFF00000000000000000000000000000000003DFFFF003D
      FFFF003DFFFF1950FFE6000000000000000000000000E1E8FF1E003DFFFF003D
      FFFF003DFFFFA3B9FF5C00000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FF000000000000000000000000D193889EB5513FFFB551
      3FFFB5513FFFB5513FFFB5513FFFFFFFFFFFCE8B7FFFB5513FFFB5513FFFB551
      3FFFB5513FFFB5513FFF00000000000000000000000000000000003DFFFF003D
      FFFF003DFFFFFEFEFF0100000000000000000000000000000000174DFFE8003D
      FFFF003DFFFF2559FFDA00000000000000000000000000000000FBDEBBFFFBDE
      BBFFE0984FFFE0984FFFE0984FFFE0984FFFE0984FFFE0984FFFFBDEBBFFF2C7
      97FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF000000000000000000000000E1B9B167B5513FFFB551
      3FFFB5513FFFB5513FFFB5513FFFFFFFFFFFCE8B7FFFB5513FFFB5513FFFB551
      3FFFB5513FFFB5513FFF00000000000000000000000000000000003DFFFF003D
      FFFF003DFFFF00000000000000000000000000000000000000004873FFB7003D
      FFFF003DFFFF0F48FFF000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF00000000000000000000000000000000B5513FFFB551
      3FFFB5513FFFB5513FFFB5513FFFFFFFFFFFCE8B7FFFB5513FFFB5513FFFB551
      3FFFB5513FFFC27163CF00000000000000000000000000000000003DFFFF003D
      FFFF003DFFFFB1C3FF4E00000000000000000000000000000000003DFFFF003D
      FFFF003DFFFF557EFFAA00000000000000000000000000000000FBDEBBFFFBDE
      BBFFE4A461FFE4A461FFE4A461FFE4A461FFE4A461FFE4A461FFE4A461FFF2C9
      99FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF00000000000000000000000000000000C06B5CD8B551
      3FFFB5513FFFB5513FFFB5513FFFFFFFFFFFCE8B7FFFB5513FFFB5513FFFB551
      3FFFB5513FFFFDFCFC0400000000000000000000000000000000154CFFEA003D
      FFFF003DFFFF003DFFFFAFC2FF5000000000FDFDFF021A50FFE5003DFFFF003D
      FFFF003DFFFFF8FAFF0700000000000000000000000000000000FBDEBBFFFBDE
      BBFFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFE4A4
      61FFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FF0000
      0000000000000000000000000000F9CA90FFFDEDDA5500000000000000000000
      0000FBDBB4A9F9CA90FF0000000000000000000000000000000000000000B551
      3FFEB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB551
      3FFFE6C3BD570000000000000000000000000000000000000000FEFEFF01003D
      FFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003D
      FFFF4D78FFB20000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000F9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFFBDCB5AA00000000000000000000000000000000000000000000
      0000C27061D1B5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFF0DD
      D93100000000000000000000000000000000000000000000000000000000EFF3
      FF10003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF003DFFFF547C
      FFAB000000000000000000000000000000000000000000000000FBDEBBFFFBDE
      BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
      BBFFFBDEBBFFFEF4E85500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0B4AE6CCE8F84A4D7A0958BF4E6E523000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095ADFF6A0742FFF8003DFFFF003DFFFF4470FFBBF7F9FF080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE9E429A49A84C6CCC6
      B96E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7B96BAA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B7D60FF9C9078D88D80
      63F9B9B2A0980000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E79434E5F6DB
      BD4A00000000EFBC808FEBA353C200000000FCF2E71AE68D27F4000000000000
      0000E79434E5F6DBBD4A00000000000000000000000000000000ECD4D03FF0DC
      D933B5523FFDB5513FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7B96BAAF39621FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B7D60FF00000000EFEF
      EB208B7D60FFDFDCD34500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5881EFFE895
      39E000000000E5881EFFE5881EFF00000000F1BC828EE5881EFFF9E6CE360000
      0000E5881EFFE89539E0000000000000000000000000D1958A9CB5513FFFB551
      3FFFB5513FFEB5513FFFC06C5DD7000000000000000000000000ECD4D03F0000
      00000000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
      21FFF39621FFFAD09D700000000000000000000000009E937CD28B7D60FF8B7D
      60FF8B7D60FF8B7D60FFF1F0EC1E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAA3
      739700000000C5722AE8000000000000000000000000DEB28A80FEFDFC030000
      0000CA7E3CD500000000000000000000000000000000FDFCFC04D093879F0000
      000000000000FBF7F70BB5513FFFB5513EFEC27163CFB5513FFFB5513FFFC16F
      60D30000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000BDB5A3928B7D
      60FF8B7D60FF8B7D60FF8B7D60FFF9F9F80B0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C065
      15FE00000000CD8648C700000000000000000000000000000000D69D68A3EACE
      B74FF6ECE2200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5513FFFB4503FFEDDADA578CB8478B3B551
      3FFFB5513FFFB5513FFF000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
      21FFF39621FFF39621FF0000000000000000000000000000000000000000D6D2
      C8588B7D60FF8B7D60FF8B7D60FF8B7D60FFFEFEFE0200000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5C1
      A067E7B3818AF8F1E91700000000000000000000000000000000C26919FBC66D
      1DF7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BE6454E3B75544F8000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFFFFFFFFFF7B96BFFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      0000EEEBE7258B7D60FF8B7D60FF8B7D60FF8B7D60FF8D8063F98B7D60FF8B7D
      60FF93866BED000000000000000000000000000000000000000000000000E588
      1EFEE5881EFFE99E49CE00000000000000000000000000000000E5881EFFE588
      1EFFFAEEDE250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFFFFFFFFFF7B96BFFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      000000000000F2EFED1D8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
      60FF8B7D60FF8C7E61FC0000000000000000000000000000000000000000E68F
      2CEFE5881EFFEEAE67AC00000000000000000000000000000000E5881EFFE588
      1EFFFDF7F0110000000000000000000000000000000000000000F3EDC03FF4ED
      BB44D4BC02FDD4BC00FF00000000000000000000000000000000F3EDC03F0000
      00000000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFFFFFFFFFF7B96BFFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      00000000000000000000E3DFDA3C8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
      60FF8B7D60FF8B7D60FFE3DED83E000000000000000000000000000000000000
      000000000000C06617FC000000000000000000000000F0DDCA39E7C3A5620000
      00000000000000000000000000000000000000000000E5D6639CD4BB00FFD4BC
      00FFD5BC01FED4BC00FFD9C420DF0000000000000000D5BF0FF0D4BC00FFF4EC
      B9460000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFFBDCB6FFF6AD52FFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      00000000000000000000CCC4B8718B7D60FF8B7D60FF8B7D60FFF7F6F3120000
      0000CBC3B6738B7D60FF9D917AD6000000000000000000000000000000000000
      000000000000F8EDE31EDCA97E8D0000000000000000C36D21F1000000000000
      00000000000000000000000000000000000000000000FDFDFB04E4D5609F0000
      000000000000FCFAEC13D4BC00FFD5BC01FED4BC00FFD4BC00FFD5BD07F8D6BF
      0CF30000000000000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFF5A949FFF39621FFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      00000000000000000000AAA08BB98B7D60FF8B7D60FFDFDCD345000000000000
      000000000000CCC6B96E8B7D60FF000000000000000000000000000000000000
      00000000000000000000D18C51BCF7E3CC3ACA7C37D9FFFEFE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFB04D4BC00FFD5BD0BF400000000FFFFFE01D4BC
      00FFEDE49C6300000000000000000000000000000000F7B96BAAF39621FFF396
      21FFF39621FFF39621FFF39621FFFFFFFEFFF5A949FFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      00000000000000000000BEB7A78D8B7D60FF8B7D60FFE3DFD83D000000000000
      00000000000000000000DEDAD049000000000000000000000000000000000000
      00000000000000000000F1C5927CE5881EFFE5881EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEE5
      9B64D4BC00FFF9F7E21D000000000000000000000000F8BD749EF39621FFF396
      21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
      21FFF39621FFF39621FF00000000000000000000000000000000000000000000
      00000000000000000000000000008B7D60FF8B7D60FF8B7D60FFE8E7E1300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6D5B158E5881EFFE5881EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4BC00FFD4BC00FF000000000000000000000000FFFFFE01F39621FFF396
      21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
      21FFF39621FFF7B563B300000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFD038F8266F58B7D60FF8B7D60FFE7E3
      DD35000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4EDBE41EDE1926D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EEEA22EFED
      E824000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000F81FFFFFFFFF0000
      E00FFFFFFFFF0000C007000180030000C0030001800100008001000180010000
      800100018001000080018FE18001000080018FE180010000800187C380010000
      8001C18380030000C003C00780030000C003F00F81FF0000E007FC3F83FF0000
      F81FFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFBFFFFFFFFC003
      FFF1F8EFEFE7C003FFE3E047E7EFC003F047E703E7CFC003E00FC71BE3CFC003
      C01FC71FC003C003800FCF9FD213C003800FCF9FF99FC003800FC78FF83FC003
      800FC70FFC3FC003800FC70FFD3FC003C01FE24FFC3FC003C01FF0CFFC7FC003
      F07FFFFFFE7FC003FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC7FC003FFFFFFFF
      F83FC003C003F01FF81FC003C003E00FF00FC003DE73C007E00FC003DE73C003
      E007C003DE738003C007C003C0038003C383C003C0038003C3C3C003DE738003
      C7C3C003DE73C003C3C3C003DE73C003C103C003DE73E007C007C003C003F00F
      E00FC003FFFFFC3FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFBFFF
      87FFC933C3FF9FFFA3FFC91381DF800381FFEB97980F8003C0FFEBC7FE038003
      E07FE3CFFFF38003F007E3C7FFFF8003F803E3C7C3DF8003FC01FB9F818F8003
      FC11F9BF980F8003FC39FC3FFC478003FC3DFC7FFFE38003FE1FFC7FFFF38003
      FE0FFFFFFFF3FFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Filter = 'Modelo Digital de Elevaci'#243'n|*.i2V'
    Options = [ofHideReadOnly, ofShowHelp, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 656
    Top = 578
  end
end
