unit SiswaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ComCtrls;

type
  TFSiswa = class(TForm)
    dsSiswa: TDataSource;
    dbgridSiswa: TDBGrid;
    conSiswa: TADOConnection;
    tambahSiswa: TButton;
    LDSiswa: TButton;
    VRSiswa: TButton;
    VOT: TButton;
    VWK: TButton;
    qrySiswa: TADOQuery;
    HSiswa: TButton;
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
    edtEnis: TEdit;
    edtEnisn: TEdit;
    edtENS: TEdit;
    edtEnik: TEdit;
    edtETL: TEdit;
    dtpSiswa: TDateTimePicker;
    cbbJKSiwa: TComboBox;
    cbbJurusan: TComboBox;
    edtEWK: TEdit;
    edtEalamat: TEdit;
    edtEHP: TEdit;
    edtEsiswaOT: TEdit;
    edtEsiswaLaporan: TEdit;
    edtEsiswaStatus: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;

implementation

{$R *.dfm}

end.
