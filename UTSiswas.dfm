object FTSiswa: TFTSiswa
  Left = 192
  Top = 125
  Width = 912
  Height = 334
  Caption = 'FTSiswa'
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
  object Enis: TEdit
    Left = 120
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Enisn: TEdit
    Left = 120
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object ENS: TEdit
    Left = 120
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object Enik: TEdit
    Left = 120
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object ETL: TEdit
    Left = 120
    Top = 136
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object dtSiswa: TDateTimePicker
    Left = 120
    Top = 168
    Width = 257
    Height = 21
    Date = 45095.438990266200000000
    Time = 45095.438990266200000000
    TabOrder = 5
  end
  object cbbJKSiwa: TComboBox
    Left = 120
    Top = 200
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'pilih jenis kelamin'
  end
  object cbbJurusan: TComboBox
    Left = 544
    Top = 8
    Width = 249
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'pilih jurusan'
  end
  object EWK: TEdit
    Left = 544
    Top = 40
    Width = 249
    Height = 21
    TabOrder = 8
  end
  object Ealamat: TEdit
    Left = 544
    Top = 72
    Width = 249
    Height = 21
    TabOrder = 9
  end
  object EHP: TEdit
    Left = 544
    Top = 104
    Width = 249
    Height = 21
    TabOrder = 10
  end
  object EsiswaOT: TEdit
    Left = 544
    Top = 136
    Width = 249
    Height = 21
    TabOrder = 11
  end
  object EsiswaLaporan: TEdit
    Left = 544
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 12
  end
  object edtEsiswaStatus: TEdit
    Left = 544
    Top = 200
    Width = 249
    Height = 21
    TabOrder = 13
  end
  object FTSiswaBtn: TButton
    Left = 336
    Top = 232
    Width = 121
    Height = 33
    Caption = 'Tambah Data Siswa'
    TabOrder = 14
  end
end
