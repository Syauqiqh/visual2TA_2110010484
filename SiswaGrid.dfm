object FSiswa: TFSiswa
  Left = 348
  Top = 148
  Width = 997
  Height = 246
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
  object dbgridSiswa: TDBGrid
    Left = -16
    Top = 48
    Width = 961
    Height = 137
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object tambahSiswa: TButton
    Left = 424
    Top = 8
    Width = 105
    Height = 33
    Caption = 'Tambah data siswa'
    TabOrder = 1
  end
  object LDSiswa: TButton
    Left = 544
    Top = 8
    Width = 89
    Height = 33
    Caption = 'Load Data'
    TabOrder = 2
  end
  object VRSiswa: TButton
    Left = 648
    Top = 8
    Width = 81
    Height = 33
    Caption = 'View Report'
    TabOrder = 3
  end
  object VGSiswa: TButton
    Left = 744
    Top = 8
    Width = 89
    Height = 33
    Caption = 'View Grafik'
    TabOrder = 4
  end
  object VOT: TButton
    Left = 848
    Top = 8
    Width = 89
    Height = 33
    Caption = 'View Orang Tua'
    TabOrder = 5
  end
  object VWK: TButton
    Left = 312
    Top = 8
    Width = 97
    Height = 33
    Caption = 'View wakil Kelas'
    TabOrder = 6
  end
  object HSiswa: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Hapus Data'
    TabOrder = 7
  end
  object dsSiswa: TDataSource
    Left = 48
  end
  object conSiswa: TADOConnection
    Left = 96
    Top = 8
  end
  object qrySiswa: TADOQuery
    Parameters = <>
    Left = 152
    Top = 8
  end
end
