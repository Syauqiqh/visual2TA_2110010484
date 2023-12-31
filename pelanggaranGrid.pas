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
    editpelanggaran: TButton;
    barupelanggaran: TButton;
    procedure btnLDLaporanClick(Sender: TObject);
    procedure btnTPelanggaranClick(Sender: TObject);
    procedure bersihpelanggaran;
    procedure posisiawalpelanggaran;
    procedure pealnggaranonCllick(Column: TColumn);
    procedure HPelanggaranClick(Sender: TObject);
    procedure editpelanggaranClick(Sender: TObject);
    procedure barupelanggaranClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pelanggaran: Tpelanggaran;
  id : string;

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

end;

procedure Tpelanggaran.posisiawalpelanggaran;
begin
bersihpelanggaran;
edtpoin.Enabled:= False;
cbbJenis.Enabled:= False;
dtpPelanggaran.Enabled:= False;
HPelanggaran.Enabled:= False;
btnTPelanggaran.Enabled:= False;
barupelanggaran.Enabled:= True;
end;

procedure Tpelanggaran.btnTPelanggaranClick(Sender: TObject);
begin
if edtpoin.Text ='' then
begin
ShowMessage('POIN TIDAK BOLEH KOSONG!');
end else
if cbbJenis.Text ='' then
begin
ShowMessage('JENIS PRESTASI TIDAK BOLEH KOSONG!');
end else
begin
 zqrypelanggaran.SQL.Clear;
 zqrypelanggaran.SQL.Add('insert into pelanggaran values(null,"'+edtpoin.Text+'","'+cbbJenis.Text+'","'+formatdatetime('yyyy-mm-dd',dtpPelanggaran.Date)+'")');
 zqrypelanggaran.ExecSQL;

 zqrypelanggaran.SQL.Clear;
 zqrypelanggaran.SQL.Add('select * from pelanggaran');
 zqrypelanggaran.Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');

end;

end;

procedure Tpelanggaran.pealnggaranonCllick(Column: TColumn);
begin
id:= zqrypelanggaran.Fields[0].AsString;
edtpoin.Text:= zqrypelanggaran.Fields[1].AsString;
cbbJenis.Text:= zqrypelanggaran.Fields[2].AsString;
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

procedure Tpelanggaran.editpelanggaranClick(Sender: TObject);
begin
if (edtpoin.Text= '')or (cbbJenis.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edtpoin.Text = zqrypelanggaran.Fields[1].AsString)or(cbbJenis.Text =zqrypelanggaran.Fields[2].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalpelanggaran;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqrypelanggaran.SQL.Add('Update pelanggaran set poin= "'+edtpoin.Text+'",jenis="'+cbbJenis.Text+'",tanggal="'+formatdatetime('yyyy-mm-dd',dtpPelanggaran.Date)+'"');
zqrypelanggaran.ExecSQL;
zqrypelanggaran.SQL.Clear;
zqrypelanggaran.SQL.Add('select * from pelanggaran');
zqrypelanggaran.Open;
posisiawalpelanggaran;
end;
end;

procedure Tpelanggaran.barupelanggaranClick(Sender: TObject);
begin
bersihpelanggaran;
edtpoin.Enabled:= True;
cbbJenis.Enabled:= True;
dtpPelanggaran.Enabled:= True;
HPelanggaran.Enabled:= True;
btnTPelanggaran.Enabled:= True;
barupelanggaran.Enabled:= False;
end;

procedure Tpelanggaran.FormCreate(Sender: TObject);
begin
posisiawalpelanggaran;
end;

end.
