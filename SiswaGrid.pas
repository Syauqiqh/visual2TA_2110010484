unit SiswaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ComCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TFSiswa = class(TForm)
    dsSiswa: TDataSource;
    dbgridSiswa: TDBGrid;
    tambahSiswa: TButton;
    LDSiswa: TButton;
    VRSiswa: TButton;
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
    procedure LDSiswaClick(Sender: TObject);
    procedure VWKClick(Sender: TObject);
    procedure VOTClick(Sender: TObject);
    procedure tambahSiswaClick(Sender: TObject);
    procedure siswacellclick(Column: TColumn);
    procedure siswacellclick(Column: TColumn);
    procedure siswaclick(Column: TColumn);
    procedure siswaoncellclick(Column: TColumn);
    procedure bersihSiswa;
    procedure posisiawalSiswa;
    procedure HSiswaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;

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
dtpSiswa.Clear;
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
VRSiswa.Enabled:= True;
tambahSiswa.Enabled:= True;
VWK.Enabled:= True;
LDSiswa.Enabled:= True;
VOT.Enabled:= True;
HSiswa.Enabled:= False;
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
end;


procedure TFSiswa.VWKClick(Sender: TObject);
begin
wali_kelas.Show;
end;

procedure TFSiswa.VOTClick(Sender: TObject);
begin
  orang_tua.Show;
end;

procedure TFSiswa.tambahSiswaClick(Sender: TObject);

begin

with FSiswa.zqrysiswa do
begin
 zqrysiswa.SQL.Clear;
 zqrysiswa.SQL.Add('insert into siswa values(null,"'+edtEnis.Text+'","'+edtEnisn.Text+'","'+edtENS.Text+'","'+edtEnik.Text+'","'+edtETL.Text+'","'+formatdatetime('yyyy-mm-dd',dtpSiswa.Date)+'","'+cbbJKSiwa.Text+'","'+cbbJurusan.Text+'","'+edtEWK.Text+'","'+edtEalamat.Text+'","'+edtEHP.Text+'","'+edtEsiswaOT.Text+'","'+edtEsiswaLaporan.Text+'","'+edtEsiswaStatus.Text+'")');
 zqrysiswa.ExecSQL;

 zqrysiswa.SQL.Clear;
 zqrysiswa.SQL.Add('select * from siswa');
 Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
end;

end;
procedure TFSiswa.siswacellclick(Column: TColumn);
begin
id:= zqrysiswa.Fields[0].AsString; 
edtEnis.Text:= zqrysiswa.Fields[1].AsString;
edtEnisn.Text:= zqrysiswa.Fields[2].AsString;
edtENS.Text:= zqrysiswa.Fields[3].AsString;
edtEnik.Text:= zqrysiswa.Fields[4].AsString;
edtETL.Text:= zqrysiswa.Fields[5].AsString;
dtpSiswa.Text:= zqrysiswa.Fields[6].AsString;
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

end.
