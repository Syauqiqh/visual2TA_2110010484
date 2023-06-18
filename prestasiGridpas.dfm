object prestasi: Tprestasi
  Left = 192
  Top = 125
  Width = 928
  Height = 311
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
  object dbgrdPrestasi: TDBGrid
    Left = 16
    Top = 80
    Width = 897
    Height = 161
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TPrestasi: TButton
    Left = 792
    Top = 16
    Width = 97
    Height = 33
    Caption = 'Tambah Prestasi'
    TabOrder = 1
  end
  object HPrestasi: TButton
    Left = 680
    Top = 16
    Width = 97
    Height = 33
    Caption = 'Hapus Prestasi'
    TabOrder = 2
  end
  object conPrestasi: TADOConnection
    Left = 48
    Top = 16
  end
  object qryPrestasi: TADOQuery
    Parameters = <>
    Left = 120
    Top = 24
  end
end
