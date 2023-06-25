object wali_kelas: Twali_kelas
  Left = 353
  Top = 178
  Width = 962
  Height = 344
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
    Left = 16
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl4: TLabel
    Left = 360
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl5: TLabel
    Left = 360
    Top = 48
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl7: TLabel
    Left = 16
    Top = 112
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl6: TLabel
    Left = 360
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Tanggal lahir'
  end
  object lbl8: TLabel
    Left = 360
    Top = 112
    Width = 89
    Height = 13
    Caption = 'Tingkat Pendidikan'
  end
  object dbgrdWK: TDBGrid
    Left = 8
    Top = 152
    Width = 881
    Height = 137
    DataSource = dsWK
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TWK: TButton
    Left = 744
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Tambah Wali Kelas'
    TabOrder = 1
  end
  object HWK: TButton
    Left = 752
    Top = 64
    Width = 97
    Height = 33
    Caption = 'Hapus Wali Kelas'
    TabOrder = 2
  end
  object edtNama: TEdit
    Left = 88
    Top = 16
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object edtNIk: TEdit
    Left = 88
    Top = 48
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object edtTelp: TEdit
    Left = 88
    Top = 80
    Width = 257
    Height = 21
    TabOrder = 5
  end
  object edtAlamat: TEdit
    Left = 456
    Top = 16
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object edtTL: TEdit
    Left = 456
    Top = 48
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object cbbJK: TComboBox
    Left = 88
    Top = 112
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
    Left = 456
    Top = 80
    Width = 257
    Height = 21
    Date = 45095.438990266200000000
    Time = 45095.438990266200000000
    TabOrder = 9
  end
  object edtTP: TEdit
    Left = 456
    Top = 112
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object btnLDWK: TButton
    Left = 751
    Top = 112
    Width = 98
    Height = 33
    Caption = 'Load Data'
    TabOrder = 11
    OnClick = btnLDWKClick
  end
  object conWK: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=siswadb.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 856
    Top = 24
  end
  object qryWK: TADOQuery
    Active = True
    Connection = conWK
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from wali_kelas')
    Left = 904
    Top = 24
  end
  object dsWK: TDataSource
    DataSet = qryWK
    Left = 904
    Top = 72
  end
end
