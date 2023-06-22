unit laporanGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, StdCtrls, ComCtrls;

type
  Tlaporan = class(TForm)
    dbgridlaporan: TDBGrid;
    dsLaporan: TDataSource;
    conLapporan: TADOConnection;
    qryLaporan: TADOQuery;
    VRLaporan: TButton;
    Vprestasi: TButton;
    VPelanggaran: TButton;
    TLaporan: TButton;
    HLaporan: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl8: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl9: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dtpLaporan: TDateTimePicker;
    cbbSemester: TComboBox;
    edtSiswaId: TEdit;
    edtWK: TEdit;
    edtOT: TEdit;
    edtPrestasi: TEdit;
    edtPelanggaran: TEdit;
    edtKeterangan: TEdit;
    edtStatus: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  laporan: Tlaporan;

implementation

{$R *.dfm}

end.
