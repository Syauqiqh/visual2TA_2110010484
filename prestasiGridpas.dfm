object Fprestasi: TFprestasi
  Left = 192
  Top = 125
  Width = 496
  Height = 343
  Caption = 'Fprestasi'
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
    OnCellClick = prestasionclick
  end
  object btnTPrestasi: TButton
    Left = 232
    Top = 56
    Width = 97
    Height = 33
    Caption = 'Tambah Prestasi'
    TabOrder = 1
    OnClick = btnTPrestasiClick
  end
  object HPrestasi: TButton
    Left = 232
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Hapus Prestasi'
    TabOrder = 2
    OnClick = HPrestasiClick
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
    Items.Strings = (
      'Berat'
      'Sedang'
      'Ringan')
  end
  object dtpPrestasi: TDateTimePicker
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
  object editprestasi: TButton
    Left = 352
    Top = 56
    Width = 89
    Height = 33
    Caption = 'Edit'
    TabOrder = 7
    OnClick = editprestasiClick
  end
  object dsPrestasi: TDataSource
    DataSet = zqryprestasi
    Left = 336
    Top = 88
  end
  object Zconprestasi: TZConnection
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
    Left = 232
    Top = 88
  end
  object zqryprestasi: TZQuery
    Connection = Zconprestasi
    Active = True
    SQL.Strings = (
      'select * from prestasi')
    Params = <>
    Left = 288
    Top = 88
  end
end
