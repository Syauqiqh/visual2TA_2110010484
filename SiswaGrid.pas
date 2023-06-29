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
 zqrysiswa.SQL.Add('insert into siswa values(null,"'+edtEnis.Text+'","'+edtEnisn.Text+'","'+edtENS.Text+'","'+edtEnik.Text+'","'+edtETL.Text+'","'+formatdatetime('yyyy-mm-dd',dtpSiswa.Date)+'","'+cbbJKSiwa.Text+'","'+cbbJurusan.Text+'","'+edtEWK.Text+'","'+kehadiran.Text+'","'+edtEalamat.Text+'","'+edtEHP.Text+'","'+edtEsiswaOT.Text+'","'+edtEsiswaLaporan.Text+'","'+edtEsiswaStatus.Text+'")');
 zqrysiswa.ExecSQL;

 zqrysiswa.SQL.Clear;
 zqrysiswa.SQL.Add('select * from siswa');
 Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
end;

end.
