object wali_kelas: Twali_kelas
  Left = 353
  Top = 178
  Width = 928
  Height = 283
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
  object dbgrdWK: TDBGrid
    Left = 16
    Top = 88
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
    Left = 728
    Top = 32
    Width = 105
    Height = 33
    Caption = 'Tambah Wali Kelas'
    TabOrder = 1
  end
  object HWK: TButton
    Left = 624
    Top = 32
    Width = 97
    Height = 33
    Caption = 'Hapus Wali Kelas'
    TabOrder = 2
  end
  object conWK: TADOConnection
    Left = 24
    Top = 8
  end
  object qryWK: TADOQuery
    Parameters = <>
    Left = 96
    Top = 24
  end
end
