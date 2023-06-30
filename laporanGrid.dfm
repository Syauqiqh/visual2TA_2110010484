object laporan: Tlaporan
  Left = 197
  Top = 136
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
end
