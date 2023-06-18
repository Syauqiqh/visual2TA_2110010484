unit laporanGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, StdCtrls;

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
