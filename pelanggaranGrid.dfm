object pelanggaran: Tpelanggaran
  Left = 192
  Top = 125
  Width = 928
  Height = 319
  Caption = 'pelanggaran'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdPelanggaran: TDBGrid
    Left = 8
    Top = 88
    Width = 889
    Height = 177
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TPelanggaran: TButton
    Left = 784
    Top = 16
    Width = 113
    Height = 33
    Caption = 'Tambah Pelanggaran'
    TabOrder = 1
  end
  object HPelanggaran: TButton
    Left = 672
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Hapus Pelanggaran'
    TabOrder = 2
  end
  object conPelanggaran: TADOConnection
    Left = 32
    Top = 8
  end
  object qryPelanggaran: TADOQuery
    Parameters = <>
    Left = 96
    Top = 8
  end
end
