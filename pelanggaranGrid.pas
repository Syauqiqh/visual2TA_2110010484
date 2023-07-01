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
    btnTPelanggaran: TButton;
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
    procedure btnTPelanggaranClick(Sender: TObject);
    procedure bersihpelanggaran;
    procedure posisiawalpelanggaran;
    procedure pealnggaranonCllick(Column: TColumn);
    procedure HPelanggaranClick(Sender: TObject);
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


procedure Tpelanggaran.bersihpelanggaran;
begin
edtpoin.Clear;
cbbJenis.Clear;
dtpPelanggaran.Clear;
end;

procedure Tpelanggaran.posisiawalpelanggaran;
begin
bersihpelanggaran;
edtpoin.Enabled:= True;
cbbJenis.Enabled:= True;
dtpPelanggaran.Enabled:= True;
HPelanggaran.Enabled:= False;
btnTPelanggaran.Enabled:= True;
end;

procedure Tpelanggaran.btnTPelanggaranClick(Sender: TObject);
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

end;

procedure Tpelanggaran.pealnggaranonCllick(Column: TColumn);
begin
id:= zqrypelanggaran.Fields[0].AsString;
edtpoin.Text:= zqrypelanggaran.Fields[1].AsString;
cbbJenis.Text:= zqrypelanggaran.Fields[2].AsString;
dtpPelanggaran.Text:= zqrypelanggaran.Fields[3].AsString;
end;

procedure Tpelanggaran.HPelanggaranClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqrypelanggaran.SQL.Clear;
zqrypelanggaran.SQL.Add(' delete from pelanggaran where id="'+id+'"');
zqrypelanggaran.ExecSQL;
zqrypelanggaran.SQL.Clear;
zqrypelanggaran.SQL.Add('select * from pelanggaran');
zqrypelanggaran.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalpelanggaran;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalpelanggaran;
end;
end;

end.
