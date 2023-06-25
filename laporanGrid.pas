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
    btnLDLaporan: TButton;
    procedure btnLDLaporanClick(Sender: TObject);
    procedure VprestasiClick(Sender: TObject);
    procedure VPelanggaranClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  laporan: Tlaporan;

implementation

uses pelanggaranGrid,prestasiGridpas;

{$R *.dfm}

procedure Tlaporan.btnLDLaporanClick(Sender: TObject);
begin
  qryLaporan.SQL.Clear;
  qryLaporan.SQL.Add('select * from laporan');
  qryLaporan.Open;

  dbgridlaporan.Columns[0].Width:=65;
  dbgridlaporan.Columns[1].Width:=45;
  dbgridlaporan.Columns[2].Width:=45;
  dbgridlaporan.Columns[3].Width:=50;
  dbgridlaporan.Columns[4].Width:=50;
  dbgridlaporan.Columns[5].Width:=65;
  dbgridlaporan.Columns[6].Width:=60;
  dbgridlaporan.Columns[7].Width:=70;
  dbgridlaporan.Columns[8].Width:=150;
  dbgridlaporan.Columns[9].Width:=65;
end;

procedure Tlaporan.VprestasiClick(Sender: TObject);
begin
prestasi.Show;
end;

procedure Tlaporan.VPelanggaranClick(Sender: TObject);
begin
pelanggaran.Show;
end;

end.
