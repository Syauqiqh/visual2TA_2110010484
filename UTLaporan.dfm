object FTLaporan: TFTLaporan
  Left = 192
  Top = 125
  Width = 805
  Height = 229
  Caption = 'FTLaporan'
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
    Left = 48
    Top = 8
    Width = 49
    Height = 17
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Semeseter'
  end
  object lbl3: TLabel
    Left = 48
    Top = 72
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object Label1: TLabel
    Left = 48
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Id Wali kelas'
  end
  object lbl4: TLabel
    Left = 48
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object lbl5: TLabel
    Left = 400
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Id Prestasi'
  end
  object Label2: TLabel
    Left = 400
    Top = 40
    Width = 81
    Height = 13
    Caption = 'id Pelanggararan'
  end
  object lbl6: TLabel
    Left = 400
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Keterang'
  end
  object lbl7: TLabel
    Left = 400
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object dtpLaporan: TDateTimePicker
    Left = 128
    Top = 8
    Width = 241
    Height = 21
    Date = 45095.481726238420000000
    Time = 45095.481726238420000000
    TabOrder = 0
  end
  object cbbSemester: TComboBox
    Left = 128
    Top = 40
    Width = 241
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Semester'
  end
  object edtSiswaId: TEdit
    Left = 128
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object edtWK: TEdit
    Left = 128
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object edtOT: TEdit
    Left = 128
    Top = 136
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object edtPrestasi: TEdit
    Left = 488
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 5
  end
  object edtPelanggaran: TEdit
    Left = 488
    Top = 40
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object edtKeterangan: TEdit
    Left = 488
    Top = 72
    Width = 241
    Height = 17
    TabOrder = 7
  end
  object edtStatus: TEdit
    Left = 488
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 8
  end
  object TDLaporan: TButton
    Left = 496
    Top = 136
    Width = 113
    Height = 17
    Caption = 'Tambah Laporan'
    TabOrder = 9
  end
end
