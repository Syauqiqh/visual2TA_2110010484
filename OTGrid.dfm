object orang_tua: Torang_tua
  Left = 413
  Top = 141
  Width = 928
  Height = 264
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
  object dbgrdOT: TDBGrid
    Left = 0
    Top = 64
    Width = 897
    Height = 145
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object TOT: TButton
    Left = 760
    Top = 16
    Width = 113
    Height = 33
    Caption = 'Tambah Orang tua'
    TabOrder = 1
  end
  object HOT: TButton
    Left = 624
    Top = 16
    Width = 113
    Height = 33
    Caption = 'Hapus Orabng Tua'
    TabOrder = 2
  end
  object dsOT: TDataSource
    Left = 24
    Top = 8
  end
  object conOT: TADOConnection
    Left = 88
    Top = 24
  end
  object qryOT: TADOQuery
    Parameters = <>
    Left = 160
    Top = 24
  end
end
