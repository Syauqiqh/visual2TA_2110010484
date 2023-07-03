unit laporanGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, StdCtrls, ComCtrls, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  Tlaporan = class(TForm)
    dbgridlaporan: TDBGrid;
    dsLaporan: TDataSource;
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
    zqrylaporan: TZQuery;
    Zconlaporan: TZConnection;
    editLaporan: TButton;
    frxdblaporan: TfrxDBDataset;
    frxlaporan: TfrxReport;
    barulaporan: TButton;
    procedure btnLDLaporanClick(Sender: TObject);
    procedure VprestasiClick(Sender: TObject);
    procedure VPelanggaranClick(Sender: TObject);
    procedure TLaporanClick(Sender: TObject);
    procedure bersihLaporan;
    procedure posisiawalLaporan;
    procedure laporanonclick(Column: TColumn);
    procedure HLaporanClick(Sender: TObject);
    procedure editLaporanClick(Sender: TObject);
    procedure VRLaporanClick(Sender: TObject);
    procedure barulaporanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  laporan: Tlaporan;
  id : string;

implementation

uses pelanggaranGrid,prestasiGridpas;

{$R *.dfm}

procedure Tlaporan.btnLDLaporanClick(Sender: TObject);
begin
  zqrylaporan.SQL.Clear;
  zqrylaporan.SQL.Add('select * from laporan');
  zqrylaporan.Open;

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
procedure Tlaporan.bersihLaporan;
begin
cbbSemester.Clear;
edtSiswaId.Clear;
edtWK.Clear;
edtOT.Clear;
edtPrestasi.Clear;
edtPelanggaran.Clear;
edtKeterangan.Clear;
edtStatus.Clear;
end;

procedure Tlaporan.posisiawalLaporan;
begin
bersihLaporan;
dtpLaporan.Enabled:= False;
cbbSemester.Enabled:= False;
edtSiswaId.Enabled:= False;
edtWK.Enabled:= False;
edtOT.Enabled:= False;
edtPrestasi.Enabled:= False;
edtPelanggaran.Enabled:= False;
edtKeterangan.Enabled:= False;
edtStatus.Enabled:= False;
TLaporan.Enabled:= False;
HLaporan.Enabled:= False;
btnLDLaporan.Enabled:= True;
barulaporan.Enabled:= True;
end;

procedure Tlaporan.VprestasiClick(Sender: TObject);
begin
Fprestasi.show;
end;

procedure Tlaporan.VPelanggaranClick(Sender: TObject);
begin
pelanggaran.Show;
end;

procedure Tlaporan.TLaporanClick(Sender: TObject);
begin
if cbbSemester.Text ='' then
begin
ShowMessage('SEMESTER TIDAK BOLEH KOSONG!');
end else
if edtSiswaId.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edtWK.Text ='' then
begin
ShowMessage('ID WALI KELAS TIDAK BOLEH KOSONG!');
end else
if edtOT.Text ='' then
begin
ShowMessage('ID ORANG TIDAK BOLEH KOSONG!');
end else
if edtPrestasi.Text ='' then
begin
ShowMessage('ID PRESTASI TIDAK BOLEH KOSONG!');
end else
if edtPelanggaran.Text ='' then
begin
ShowMessage('ID PELANGGARAN TIDAK BOLEH KOSONG!');
end else
if edtKeterangan.Text ='' then
begin
ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
end else
if edtStatus.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
 zqrylaporan.SQL.Clear;
 zqrylaporan.SQL.Add('insert into laporan values(null,"'+formatdatetime('yyyy-mm-dd',dtpLaporan.date)+'","'+cbbSemester.Text+'","'+edtSiswaId.Text+'","'+edtWK.Text+'","'+edtOT.Text+'","'+edtPrestasi.Text+'","'+edtPelanggaran.Text+'","'+edtKeterangan.Text+'","'+edtStatus.Text+'")');
 zqrylaporan.ExecSQL;

 zqrylaporan.SQL.Clear;
 zqrylaporan.SQL.Add('select * from laporan');
 zqrylaporan.Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
 bersihLaporan;
end;

end;

procedure Tlaporan.laporanonclick(Column: TColumn);
begin
id:= zqrylaporan.Fields[0].AsString;
cbbSemester.Text:= zqrylaporan.Fields[2].AsString;
edtSiswaId.Text:= zqrylaporan.Fields[3].AsString;
edtWK.Text:= zqrylaporan.Fields[4].AsString;
edtOT.Text:= zqrylaporan.Fields[5].AsString;
edtPrestasi.Text:= zqrylaporan.Fields[6].AsString;
edtPelanggaran.Text:= zqrylaporan.Fields[7].AsString;
edtKeterangan.Text:= zqrylaporan.Fields[8].AsString;
edtStatus.Text:= zqrylaporan.Fields[9].AsString;
end;

procedure Tlaporan.HLaporanClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqrylaporan.SQL.Clear;
zqrylaporan.SQL.Add(' delete from laporan where id="'+id+'"');
zqrylaporan.ExecSQL;
zqrylaporan.SQL.Clear;
zqrylaporan.SQL.Add('select * from laporan');
zqrylaporan.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalLaporan;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalLaporan;
end;
end;

procedure Tlaporan.editLaporanClick(Sender: TObject);
begin
if  (cbbSemester.Text ='')or(edtSiswaId.Text= '')or (edtWK.Text ='')or (edtOT.Text ='')or (edtPrestasi.Text ='')or (edtPelanggaran.Text ='')or (edtKeterangan.Text ='')or (edtstatus.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if  (cbbSemester.Text =zqrylaporan.Fields[2].AsString)or(edtSiswaId.Text= zqrylaporan.Fields[3].AsString)or (edtWK.Text =zqrylaporan.Fields[4].AsString)or (edtOT.Text =zqrylaporan.Fields[5].AsString)or (edtPrestasi.Text =zqrylaporan.Fields[6].AsString)or (edtPelanggaran.Text =zqrylaporan.Fields[7].AsString)or (edtKeterangan.Text =zqrylaporan.Fields[8].AsString)or (edtstatus.Text =zqrylaporan.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalLaporan;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqrylaporan.SQL.Add('Update laporan set tanggal="'+formatdatetime('yyyy-mm-dd',dtpLaporan.Date)+'" ,semester="'+cbbSemester.Text+'",siswa_id="'+edtSiswaId.Text+'",wali_id="'+edtWK.Text+'",orang_tua_id="'+edtOT.Text+'",prestasi_id="'+edtPrestasi.Text+'",pelanggaran_id= "'+edtPelanggaran.Text+'",keterangan="'+edtKeterangan.Text+'",status="'+edtStatus.Text+'"where id="'+id+'"');
zqrylaporan.ExecSQL;
zqrylaporan.SQL.Clear;
zqrylaporan.SQL.Add('select * from laporan');
zqrylaporan.Open;
posisiawalLaporan;
end;
end;

procedure Tlaporan.VRLaporanClick(Sender: TObject);
begin
frxlaporan.ShowReport();
end;

procedure Tlaporan.barulaporanClick(Sender: TObject);
begin
bersihLaporan;
dtpLaporan.Enabled:= True;
cbbSemester.Enabled:= True;
edtSiswaId.Enabled:= True;
edtWK.Enabled:= True;
edtOT.Enabled:= True;
edtPrestasi.Enabled:= True;
edtPelanggaran.Enabled:= True;
edtKeterangan.Enabled:= True;
edtStatus.Enabled:= True;
TLaporan.Enabled:= True;
HLaporan.Enabled:= True;
btnLDLaporan.Enabled:= True;
barulaporan.Enabled:= False;
end;

procedure Tlaporan.FormCreate(Sender: TObject);
begin
posisiawalLaporan;
end;

end.
