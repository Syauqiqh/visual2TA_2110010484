object prestasi: Tprestasi
  Left = 192
  Top = 125
  Width = 496
  Height = 343
  Caption = 'prestasi'
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
    Width = 20
    Height = 13
    Caption = 'Poin'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object dbgrdPrestasi: TDBGrid
    Left = 16
    Top = 120
    Width = 441
    Height = 161
    DataSource = dsPrestasi
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TPrestasi: TButton
    Left = 232
    Top = 56
    Width = 97
    Height = 33
    Caption = 'Tambah Prestasi'
    TabOrder = 1
  end
  object HPrestasi: TButton
    Left = 232
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Hapus Prestasi'
    TabOrder = 2
  end
  object edtpoin: TEdit
    Left = 64
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object cbbJenis: TComboBox
    Left = 64
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'pilih jenis'
    Items.Strings = (
      'Berat'
      'Sedang'
      'Ringan')
  end
  object dtpLaporan: TDateTimePicker
    Left = 64
    Top = 80
    Width = 145
    Height = 17
    Date = 45095.481726238420000000
    Time = 45095.481726238420000000
    TabOrder = 5
  end
  object btnLDPrestasi: TButton
    Left = 351
    Top = 8
    Width = 89
    Height = 33
    Caption = 'Load Data'
    TabOrder = 6
    OnClick = btnLDPrestasiClick
  end
  object conPrestasi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=siswadb.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 392
    Top = 64
  end
  object qryPrestasi: TADOQuery
    Active = True
    Connection = conPrestasi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from prestasi')
    Left = 344
    Top = 64
  end
  object dsPrestasi: TDataSource
    DataSet = qryPrestasi
    Left = 448
    Top = 64
  end
end
