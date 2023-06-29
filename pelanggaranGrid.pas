unit pelanggaranGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  Tpelanggaran = class(TForm)
    dbgrdPelanggaran: TDBGrid;
    TPelanggaran: TButton;
    HPelanggaran: TButton;
    edtpoin: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cbbJenis: TComboBox;
    lbl3: TLabel;
    dtpPelanggaran: TDateTimePicker;
    dsPelanggaran: TDataSource;
    btnLDLaporan: TButton;
    Zconpelanggaran: TZConnection;
    zqrypelanggaran: TZQuery;
    procedure btnLDLaporanClick(Sender: TObject);
    procedure TPelanggaranClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pelanggaran: Tpelanggaran;

implementation

{$R *.dfm}

procedure Tpelanggaran.btnLDLaporanClick(Sender: TObject);
begin
  zqrypelanggaran.SQL.Clear;
  zqrypelanggaran.SQL.Add('select * from pelanggaran');
  zqrypelanggaran.Open;

  dbgrdPelanggaran.Columns[0].Width:=20;
  dbgrdPelanggaran.Columns[1].Width:=60;
  dbgrdPelanggaran.Columns[2].Width:=60;
end;

procedure Tpelanggaran.TPelanggaranClick(Sender: TObject);


begin

with pelanggaran.zqrypelanggaran do
begin
 zqrypelanggaran.SQL.Clear;
 zqrypelanggaran.SQL.Add('insert into pelanggaran values(null,"'+edtpoin.Text+'","'+cbbJenis.Text+'","'+formatdatetime('yyyy-mm-dd',dtpPelanggaran.Date)+'")');
 zqrypelanggaran.ExecSQL;

 zqrypelanggaran.SQL.Clear;
 zqrypelanggaran.SQL.Add('select * from pelanggaran');
 Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');

end;

end.
