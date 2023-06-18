unit UTSiswas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFTSiswa = class(TForm)
    Enis: TEdit;
    Enisn: TEdit;
    ENS: TEdit;
    Enik: TEdit;
    ETL: TEdit;
    dtSiswa: TDateTimePicker;
    cbbJKSiwa: TComboBox;
    cbbJurusan: TComboBox;
    EWK: TEdit;
    Ealamat: TEdit;
    EHP: TEdit;
    EsiswaOT: TEdit;
    EsiswaLaporan: TEdit;
    edtEsiswaStatus: TEdit;
    FTSiswaBtn: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTSiswa: TFTSiswa;

implementation

{$R *.dfm}

end.
