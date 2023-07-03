unit SiswaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ComCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TFSiswa = class(TForm)
    dsSiswa: TDataSource;
    dbgridSiswa: TDBGrid;
    tambahSiswa: TButton;
    LDSiswa: TButton;
    VOT: TButton;
    VWK: TButton;
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
    zqrysiswa: TZQuery;
    Zconsiswa: TZConnection;
    editSiswa: TButton;
    barusiswa: TButton;
    procedure LDSiswaClick(Sender: TObject);
    procedure tambahSiswaClick(Sender: TObject);
    procedure gridsiswacellclick(Column: TColumn);
    procedure bersihSiswa;
    procedure posisiawalSiswa;
    procedure HSiswaClick(Sender: TObject);
    procedure editSiswaClick(Sender: TObject);
    procedure barusiswaClick(Sender: TObject);
    procedure VWKClick(Sender: TObject);
    procedure VOTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;
  id : string;
implementation
 uses WLGrid,OTGrid;

{$R *.dfm}

procedure TFSiswa.LDSiswaClick(Sender: TObject);
begin
  zqrysiswa.SQL.Clear;
  zqrysiswa.SQL.Add('select * from siswa');
  zqrysiswa.Open;

  dbgridSiswa.Columns[0].Width:=20;
  dbgridSiswa.Columns[1].Width:=60;
  dbgridSiswa.Columns[2].Width:=60;
  dbgridSiswa.Columns[3].Width:=110;
  dbgridSiswa.Columns[4].Width:=60;
  dbgridSiswa.Columns[5].Width:=110;
  dbgridSiswa.Columns[6].Width:=80;
  dbgridSiswa.Columns[7].Width:=65;
  dbgridSiswa.Columns[8].Width:=65;
  dbgridSiswa.Columns[9].Width:=65;
  dbgridSiswa.Columns[10].Width:=100;
  dbgridSiswa.Columns[11].Width:=80;
  dbgridSiswa.Columns[12].Width:=70;
  dbgridSiswa.Columns[13].Width:=60;
  dbgridSiswa.Columns[14].Width:=45;

end;

procedure TFSiswa.bersihSiswa;
begin
edtEnis.Clear;
edtEnisn.Clear;
edtENS.Clear;
edtEnik.Clear;
edtETL.Clear;
cbbJKSiwa.Clear;
cbbJurusan.Clear;
edtEWK.Clear;
edtEalamat.Clear;
edtEHP.Clear;
edtEsiswaOT.Clear;
edtEsiswaLaporan.Clear;
edtEsiswaStatus.Clear;
end;

procedure TFSiswa.posisiawalSiswa;
begin
bersihSiswa;
tambahSiswa.Enabled:= False;
VWK.Enabled:= True;
LDSiswa.Enabled:= True;
VOT.Enabled:= True;
HSiswa.Enabled:= False;
edtEnis.Enabled:= False;
edtEnisn.Enabled:= False;
edtENS.Enabled:= False;
edtEnik.Enabled:= False;
edtETL.Enabled:= False;
dtpSiswa.Enabled:= False;
cbbJKSiwa.Enabled:= False;
cbbJurusan.Enabled:= False;
edtEWK.Enabled:= False;
edtEalamat.Enabled:= False;
edtEHP.Enabled:= False;
edtEsiswaOT.Enabled:= False;
edtEsiswaLaporan.Enabled:= False;
edtEsiswaStatus.Enabled:= False;
barusiswa.Enabled:= true;
end;


procedure TFSiswa.tambahSiswaClick(Sender: TObject);

begin
if edtEnis.Text ='' then
begin
ShowMessage('NIS TIDAK BOLEH KOSONG!');
end else
if edtEnisn.Text ='' then
begin
ShowMessage('NISN TIDAK BOLEH KOSONG!');
end else
if edtENS.Text ='' then
begin
ShowMessage('NAMA SISWA TIDAK BOLEH KOSONG!');
end else
if edtEnik.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edtETL.Text ='' then
begin
ShowMessage('TEMPAT LAHIR TIDAK BOLEH KOSONG!');
end else
if cbbJKSiwa.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if cbbJurusan.Text ='' then
begin
ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
end else
if edtEWK.Text ='' then
begin
ShowMessage('ID WAKIL KELAS TIDAK BOLEH KOSONG!');
end else
if edtEalamat.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edtEHP.Text ='' then
begin
ShowMessage('NOMOR HP TIDAK BOLEH KOSONG!');
end else
if edtEsiswaOT.Text ='' then
begin
ShowMessage('ID ORANG TUA TIDAK BOLEH KOSONG!');
end else
if edtEsiswaLaporan.Text ='' then
begin
ShowMessage('ID LAPORAN TIDAK BOLEH KOSONG!');
end else
if edtEsiswaStatus.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end
else
begin
 zqrysiswa.SQL.Clear;
 zqrysiswa.SQL.Add('insert into siswa values(null,"'+edtEnis.Text+'","'+edtEnisn.Text+'","'+edtENS.Text+'","'+edtEnik.Text+'","'+edtETL.Text+'","'+formatdatetime('yyyy-mm-dd',dtpSiswa.Date)+'","'+cbbJKSiwa.Text+'","'+cbbJurusan.Text+'","'+edtEWK.Text+'","'+edtEalamat.Text+'","'+edtEHP.Text+'","'+edtEsiswaOT.Text+'","'+edtEsiswaLaporan.Text+'","'+edtEsiswaStatus.Text+'")');
 zqrysiswa.ExecSQL;

 zqrysiswa.SQL.Clear;
 zqrysiswa.SQL.Add('select * from siswa');
 zqrysiswa.Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
 bersihSiswa;
end;

end;

procedure TFSiswa.gridsiswacellclick(Column: TColumn);
begin
id:= zqrysiswa.Fields[0].AsString;
edtEnis.Text:= zqrysiswa.Fields[1].AsString;
edtEnisn.Text:= zqrysiswa.Fields[2].AsString;
edtENS.Text:= zqrysiswa.Fields[3].AsString;
edtEnik.Text:= zqrysiswa.Fields[4].AsString;
edtETL.Text:= zqrysiswa.Fields[5].AsString;
cbbJKSiwa.Text:= zqrysiswa.Fields[7].AsString;
cbbJurusan.Text:= zqrysiswa.Fields[8].AsString;
edtEWK.Text:= zqrysiswa.Fields[9].AsString;
edtEalamat.Text:= zqrysiswa.Fields[10].AsString;
edtEHP.Text:= zqrysiswa.Fields[11].AsString;
edtEsiswaOT.Text:= zqrysiswa.Fields[12].AsString;
edtEsiswaLaporan.Text:= zqrysiswa.Fields[13].AsString;
edtEsiswaStatus.Text:= zqrysiswa.Fields[14].AsString;
end;

procedure TFSiswa.HSiswaClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqrysiswa.SQL.Clear;
zqrysiswa.SQL.Add(' delete from siswa where id="'+id+'"');
zqrysiswa.ExecSQL;
zqrysiswa.SQL.Clear;
zqrysiswa.SQL.Add('select * from siswa');
zqrysiswa.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalSiswa;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalSiswa;
end;

end;
procedure TFSiswa.editSiswaClick(Sender: TObject);
begin
if (edtEnis.Text= '')or (edtEnisn.Text ='')or(edtENS.Text= '')or (edtEnik.Text ='')or (edtETL.Text ='')or(cbbJKSiwa.Text ='')or (cbbJurusan.Text ='')or (edtEWK.Text ='')or (edtEalamat.Text ='')or (edtEHP.Text ='')or (edtEsiswaOT.Text ='')or(edtEsiswaLaporan.Text ='')or (edtEsiswaStatus.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edtEnis.Text = zqrysiswa.Fields[1].AsString)or (edtEnisn.Text =zqrysiswa.Fields[2].AsString)or(edtENS.Text= zqrysiswa.Fields[3].AsString)or(edtEnik.Text =zqrysiswa.Fields[4].AsString)or (edtETL.Text =zqrysiswa.Fields[5].AsString)or (cbbJKSiwa.Text =zqrysiswa.Fields[7].AsString)or(cbbJurusan.Text =zqrysiswa.Fields[8].AsString)or(edtEWK.Text =zqrysiswa.Fields[9].AsString)or(edtEalamat.Text =zqrysiswa.Fields[10].AsString)or (edtEHP.Text =zqrysiswa.Fields[11].AsString)or (edtEsiswaOT.Text =zqrysiswa.Fields[12].AsString)or(edtEsiswaLaporan.Text =zqrysiswa.Fields[13].AsString)or (edtEsiswaStatus.Text =zqrysiswa.Fields[14].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalSiswa;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqrysiswa.SQL.Clear;
zqrysiswa.SQL.Add('Update siswa set nis= "'+edtEnis.Text+'",nisn="'+edtEnisn.Text+'",nama_siswa="'+edtENS.Text+'",nik="'+edtEnik.Text+'",tempat_lahir="'+edtETL.Text+'",tanggal_lahir="'+formatdatetime('yyyy-mm-dd',dtpSiswa.Date)+'",jenis_kelamin="'+cbbJKSiwa.Text+'",jurusan="'+cbbJurusan.Text+'",wali_id="'+edtEWK.Text+'",alamat="'+edtEalamat.Text+'",hp="'+edtEHP.Text+'",orang_tua_id="'+edtEsiswaOT.Text+'",laporan_id="'+edtEsiswaLaporan.Text+'",status="'+edtEsiswaStatus.Text+'"where id="'+id+'"');
zqrysiswa.ExecSQL;
zqrysiswa.SQL.Clear;
zqrysiswa.SQL.Add('select * from siswa');
zqrysiswa.Open;
posisiawalSiswa;

end;
end;

procedure TFSiswa.barusiswaClick(Sender: TObject);
begin
 bersihSiswa;
 tambahSiswa.Enabled:= True;
VWK.Enabled:= True;
LDSiswa.Enabled:= True;
VOT.Enabled:= True;
HSiswa.Enabled:= True;
edtEnis.Enabled:= True;
edtEnisn.Enabled:= True;
edtENS.Enabled:= True;
edtEnik.Enabled:= True;
edtETL.Enabled:= True;
dtpSiswa.Enabled:= True;
cbbJKSiwa.Enabled:= True;
cbbJurusan.Enabled:= True;
edtEWK.Enabled:= True;
edtEalamat.Enabled:= True;
edtEHP.Enabled:= True;
edtEsiswaOT.Enabled:= True;
edtEsiswaLaporan.Enabled:= True;
edtEsiswaStatus.Enabled:= True;
barusiswa.Enabled:= false;
end;

procedure TFSiswa.VWKClick(Sender: TObject);
begin
wali_kelas.Show;
end;

procedure TFSiswa.VOTClick(Sender: TObject);
begin
orang_tua.show;
end;

procedure TFSiswa.FormCreate(Sender: TObject);
begin
posisiawalSiswa;
end;

end.
