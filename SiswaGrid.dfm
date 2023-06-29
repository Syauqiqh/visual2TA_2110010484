object FSiswa: TFSiswa
  Left = 299
  Top = 151
  Width = 997
  Height = 453
  Caption = 'siswagrid'
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
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl3: TLabel
    Left = 48
    Top = 72
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object lbl4: TLabel
    Left = 48
    Top = 104
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 48
    Top = 136
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl6: TLabel
    Left = 48
    Top = 168
    Width = 61
    Height = 13
    Caption = 'Tanggal lahir'
  end
  object lbl7: TLabel
    Left = 48
    Top = 200
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl8: TLabel
    Left = 472
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object lbl9: TLabel
    Left = 472
    Top = 40
    Width = 67
    Height = 13
    Caption = 'ID Wakil Kelas'
  end
  object lbl10: TLabel
    Left = 472
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl11: TLabel
    Left = 472
    Top = 104
    Width = 47
    Height = 13
    Caption = 'Nomor HP'
  end
  object lbl12: TLabel
    Left = 472
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object lbl13: TLabel
    Left = 472
    Top = 168
    Width = 52
    Height = 13
    Caption = 'Id Laporan'
  end
  object lbl14: TLabel
    Left = 464
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object dbgridSiswa: TDBGrid
    Left = 8
    Top = 272
    Width = 961
    Height = 137
    DataSource = dsSiswa
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object tambahSiswa: TButton
    Left = 176
    Top = 232
    Width = 105
    Height = 33
    Caption = 'Tambah data siswa'
    TabOrder = 1
    OnClick = tambahSiswaClick
  end
  object LDSiswa: TButton
    Left = 504
    Top = 232
    Width = 89
    Height = 33
    Caption = 'Load Data'
    TabOrder = 2
    OnClick = LDSiswaClick
  end
  object VRSiswa: TButton
    Left = 48
    Top = 232
    Width = 81
    Height = 33
    Caption = 'View Report'
    TabOrder = 3
  end
  object VOT: TButton
    Left = 656
    Top = 232
    Width = 89
    Height = 33
    Caption = 'View Orang Tua'
    TabOrder = 4
    OnClick = VOTClick
  end
  object VWK: TButton
    Left = 336
    Top = 232
    Width = 97
    Height = 33
    Caption = 'View wakil Kelas'
    TabOrder = 5
    OnClick = VWKClick
  end
  object HSiswa: TButton
    Left = 816
    Top = 232
    Width = 105
    Height = 33
    Caption = 'Hapus Data'
    TabOrder = 6
  end
  object edtEnis: TEdit
    Left = 120
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object edtEnisn: TEdit
    Left = 120
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object edtENS: TEdit
    Left = 120
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object edtEnik: TEdit
    Left = 120
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object edtETL: TEdit
    Left = 120
    Top = 136
    Width = 257
    Height = 21
    TabOrder = 11
  end
  object dtpSiswa: TDateTimePicker
    Left = 120
    Top = 168
    Width = 257
    Height = 21
    Date = 45095.438990266200000000
    Time = 45095.438990266200000000
    TabOrder = 12
  end
  object cbbJKSiwa: TComboBox
    Left = 120
    Top = 200
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = 'pilih jenis kelamin'
  end
  object cbbJurusan: TComboBox
    Left = 544
    Top = 8
    Width = 249
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'pilih jurusan'
  end
  object edtEWK: TEdit
    Left = 544
    Top = 40
    Width = 249
    Height = 21
    TabOrder = 15
  end
  object edtEalamat: TEdit
    Left = 544
    Top = 72
    Width = 249
    Height = 21
    TabOrder = 16
  end
  object edtEHP: TEdit
    Left = 544
    Top = 104
    Width = 249
    Height = 21
    TabOrder = 17
  end
  object edtEsiswaOT: TEdit
    Left = 544
    Top = 136
    Width = 249
    Height = 21
    TabOrder = 18
  end
  object edtEsiswaLaporan: TEdit
    Left = 544
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 19
  end
  object edtEsiswaStatus: TEdit
    Left = 544
    Top = 200
    Width = 249
    Height = 21
    TabOrder = 20
  end
  object dsSiswa: TDataSource
    DataSet = zqrysiswa
    Left = 408
    Top = 8
  end
  object zqrysiswa: TZQuery
    Connection = Zconsiswa
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 840
    Top = 96
  end
  object Zconsiswa: TZConnection
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
    Left = 872
    Top = 32
  end
end
