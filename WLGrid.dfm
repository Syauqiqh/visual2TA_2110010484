object wali_kelas: Twali_kelas
  Left = 353
  Top = 178
  Width = 928
  Height = 332
  Caption = 'wali_kelas'
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
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 48
    Top = 72
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl4: TLabel
    Left = 392
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl5: TLabel
    Left = 392
    Top = 40
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl7: TLabel
    Left = 48
    Top = 104
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl6: TLabel
    Left = 392
    Top = 72
    Width = 61
    Height = 13
    Caption = 'Tanggal lahir'
  end
  object lbl8: TLabel
    Left = 392
    Top = 104
    Width = 89
    Height = 13
    Caption = 'Tingkat Pendidikan'
  end
  object dbgrdWK: TDBGrid
    Left = 8
    Top = 136
    Width = 881
    Height = 137
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TWK: TButton
    Left = 800
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Tambah Wali Kelas'
    TabOrder = 1
  end
  object HWK: TButton
    Left = 808
    Top = 64
    Width = 97
    Height = 33
    Caption = 'Hapus Wali Kelas'
    TabOrder = 2
  end
  object edtNama: TEdit
    Left = 120
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object edtNIk: TEdit
    Left = 120
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object edtTelp: TEdit
    Left = 120
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 5
  end
  object edtAlamat: TEdit
    Left = 488
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object edtTL: TEdit
    Left = 488
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object cbbJK: TComboBox
    Left = 120
    Top = 104
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'pilih jenis kelamin'
    Items.Strings = (
      'Laki-laki'
      'perempuan')
  end
  object dtpSiswa: TDateTimePicker
    Left = 488
    Top = 72
    Width = 257
    Height = 21
    Date = 45095.438990266200000000
    Time = 45095.438990266200000000
    TabOrder = 9
  end
  object edtTP: TEdit
    Left = 488
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object conWK: TADOConnection
    Left = 768
    Top = 8
  end
  object qryWK: TADOQuery
    Parameters = <>
    Left = 768
    Top = 64
  end
end
