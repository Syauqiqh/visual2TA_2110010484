object laporan: Tlaporan
  Left = 399
  Top = 148
  Width = 973
  Height = 415
  Caption = 'Tambah Laporan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Semeseter'
  end
  object lbl3: TLabel
    Left = 48
    Top = 72
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object lbl8: TLabel
    Left = 48
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Id Wali kelas'
  end
  object lbl4: TLabel
    Left = 48
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object lbl5: TLabel
    Left = 400
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Id Prestasi'
  end
  object lbl9: TLabel
    Left = 400
    Top = 40
    Width = 81
    Height = 13
    Caption = 'id Pelanggararan'
  end
  object lbl6: TLabel
    Left = 400
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Keterang'
  end
  object lbl7: TLabel
    Left = 400
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object dbgridlaporan: TDBGrid
    Left = 8
    Top = 200
    Width = 929
    Height = 153
    DataSource = dsLaporan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = laporanonclick
  end
  object VRLaporan: TButton
    Left = 848
    Top = 16
    Width = 89
    Height = 33
    Caption = 'View Report'
    TabOrder = 1
    OnClick = VRLaporanClick
  end
  object Vprestasi: TButton
    Left = 744
    Top = 16
    Width = 97
    Height = 33
    Caption = 'View prestasi'
    TabOrder = 2
    OnClick = VprestasiClick
  end
  object VPelanggaran: TButton
    Left = 744
    Top = 112
    Width = 97
    Height = 33
    Caption = 'View Pelanggaran'
    TabOrder = 3
    OnClick = VPelanggaranClick
  end
  object TLaporan: TButton
    Left = 744
    Top = 64
    Width = 97
    Height = 33
    Caption = 'Tambah Laporan'
    TabOrder = 4
    OnClick = TLaporanClick
  end
  object HLaporan: TButton
    Left = 848
    Top = 64
    Width = 89
    Height = 33
    Caption = 'Hapus Laporan'
    TabOrder = 5
    OnClick = HLaporanClick
  end
  object dtpLaporan: TDateTimePicker
    Left = 128
    Top = 8
    Width = 241
    Height = 21
    Date = 45102.481726238420000000
    Time = 45102.481726238420000000
    TabOrder = 6
  end
  object cbbSemester: TComboBox
    Left = 128
    Top = 40
    Width = 241
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object edtSiswaId: TEdit
    Left = 128
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 8
  end
  object edtWK: TEdit
    Left = 128
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 9
  end
  object edtOT: TEdit
    Left = 128
    Top = 136
    Width = 241
    Height = 21
    TabOrder = 10
  end
  object edtPrestasi: TEdit
    Left = 488
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 11
  end
  object edtPelanggaran: TEdit
    Left = 488
    Top = 40
    Width = 241
    Height = 21
    TabOrder = 12
  end
  object edtKeterangan: TEdit
    Left = 488
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 13
  end
  object edtStatus: TEdit
    Left = 488
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 14
  end
  object btnLDLaporan: TButton
    Left = 848
    Top = 112
    Width = 89
    Height = 33
    Caption = 'Load Data'
    TabOrder = 15
    OnClick = btnLDLaporanClick
  end
  object editLaporan: TButton
    Left = 744
    Top = 160
    Width = 97
    Height = 33
    Caption = 'Edit'
    TabOrder = 16
    OnClick = editLaporanClick
  end
  object barulaporan: TButton
    Left = 848
    Top = 160
    Width = 89
    Height = 33
    Caption = 'Baru'
    TabOrder = 17
    OnClick = barulaporanClick
  end
  object dsLaporan: TDataSource
    DataSet = zqrylaporan
    Left = 600
    Top = 136
  end
  object zqrylaporan: TZQuery
    Connection = Zconlaporan
    Active = True
    SQL.Strings = (
      'select * from laporan')
    Params = <>
    Left = 408
    Top = 152
  end
  object Zconlaporan: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tuakhir'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 472
    Top = 152
  end
  object frxdblaporan: TfrxDBDataset
    UserName = 'frxdblaporan'
    CloseDataSource = False
    DataSource = dsLaporan
    Left = 536
    Top = 152
  end
  object frxlaporan: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.430959317100000000
    ReportOptions.LastChange = 45110.506035138890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 656
    Top = 144
    Datasets = <
      item
        DataSet = frxdblaporan
        DataSetName = 'frxdblaporan'
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
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 336.378170000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN SISWA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        DataSet = frxdblaporan
        DataSetName = 'frxdblaporan'
        RowCount = 0
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxdblaporan
          DataSetName = 'frxdblaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."id"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."tanggal"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."semester"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."siswa_id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."wali_id"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."orang_tua_id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."prestasi_id"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."pelanggaran_id"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."keterangan"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdblaporan."status"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'id')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'tanggal')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'semester')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'siswa id')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'wali kelas id')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 257.008040000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'orang tua id')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'prestasi id')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'pelanggaran id')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'status')
          ParentFont = False
        end
      end
    end
  end
end
