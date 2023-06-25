object orang_tua: Torang_tua
  Left = 432
  Top = 239
  Width = 928
  Height = 376
  Caption = 'orang_tua'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 40
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl8: TLabel
    Left = 40
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl4: TLabel
    Left = 40
    Top = 72
    Width = 89
    Height = 13
    Caption = 'Tingkat Pendidikan'
  end
  object lbl6: TLabel
    Left = 40
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object lbl7: TLabel
    Left = 40
    Top = 136
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object lbl9: TLabel
    Left = 384
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl10: TLabel
    Left = 384
    Top = 40
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl11: TLabel
    Left = 384
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl1: TLabel
    Left = 384
    Top = 104
    Width = 96
    Height = 13
    Caption = 'Status hungan anak'
  end
  object dbgrdOT: TDBGrid
    Left = 0
    Top = 176
    Width = 897
    Height = 145
    DataSource = dsOT
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TOT: TButton
    Left = 768
    Top = 16
    Width = 113
    Height = 33
    Caption = 'Tambah Orang tua'
    TabOrder = 1
  end
  object HOT: TButton
    Left = 768
    Top = 64
    Width = 113
    Height = 33
    Caption = 'Hapus Orabng Tua'
    TabOrder = 2
  end
  object edtNamaOT: TEdit
    Left = 136
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object edtNIKOT: TEdit
    Left = 136
    Top = 40
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object edtTPOT: TEdit
    Left = 136
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 5
  end
  object edtpekerjaan: TEdit
    Left = 136
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object edtTelp: TEdit
    Left = 136
    Top = 136
    Width = 241
    Height = 21
    TabOrder = 7
  end
  object edtAlamat: TEdit
    Left = 496
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object cbbJKOT: TComboBox
    Left = 496
    Top = 40
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'pilih jenis kelamin'
    Items.Strings = (
      'Laki_laki'
      'Perempuan')
  end
  object edtStatus: TEdit
    Left = 496
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object edtStatusHUB: TEdit
    Left = 496
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 11
  end
  object btnLDOT: TButton
    Left = 767
    Top = 112
    Width = 114
    Height = 33
    Caption = 'Load Data'
    TabOrder = 12
    OnClick = btnLDOTClick
  end
  object dsOT: TDataSource
    DataSet = qryOT
    Left = 8
    Top = 8
  end
  object conOT: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=siswadb.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 7
    Top = 128
  end
  object qryOT: TADOQuery
    Active = True
    Connection = conOT
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from orang_tua')
    Left = 8
    Top = 72
  end
end
