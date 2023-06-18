object Fmenus: TFmenus
  Left = 299
  Top = 186
  Width = 928
  Height = 480
  Caption = 'Fmenus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 72
    Top = 16
    object datasiswa1: TMenuItem
      Caption = 'data siswa'
      object siswa1: TMenuItem
        Caption = 'siswa'
        OnClick = siswa1Click
      end
      object orangtua1: TMenuItem
        Caption = 'orang tua'
        OnClick = orangtua1Click
      end
    end
    object datasekolah1: TMenuItem
      Caption = 'data sekolah'
      object walikelas1: TMenuItem
        Caption = 'wali kelas'
        OnClick = walikelas1Click
      end
      object laporan1: TMenuItem
        Caption = 'laporan'
        OnClick = laporan1Click
      end
    end
  end
end
