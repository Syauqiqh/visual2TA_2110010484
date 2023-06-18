object laporan: Tlaporan
  Left = 350
  Top = 128
  Width = 973
  Height = 279
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
  object dbgridlaporan: TDBGrid
    Left = 16
    Top = 64
    Width = 929
    Height = 153
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 760
    Top = 16
    Width = 81
    Height = 33
    Caption = 'View prestasi'
    TabOrder = 2
  end
  object VPelanggaran: TButton
    Left = 656
    Top = 16
    Width = 97
    Height = 33
    Caption = 'View Pelanggaran'
    TabOrder = 3
  end
  object TLaporan: TButton
    Left = 552
    Top = 16
    Width = 97
    Height = 33
    Caption = 'Tambah Laporan'
    TabOrder = 4
  end
  object HLaporan: TButton
    Left = 456
    Top = 16
    Width = 89
    Height = 33
    Caption = 'Hapus Laporan'
    TabOrder = 5
  end
  object dsLaporan: TDataSource
    Left = 32
    Top = 16
  end
  object conLapporan: TADOConnection
    Left = 80
    Top = 16
  end
  object qryLaporan: TADOQuery
    Parameters = <>
    Left = 136
    Top = 16
  end
end
