unit OTGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Torang_tua = class(TForm)
    dsOT: TDataSource;
    dbgrdOT: TDBGrid;
    TOT: TButton;
    HOT: TButton;
    lbl3: TLabel;
    lbl8: TLabel;
    lbl4: TLabel;
    edtNamaOT: TEdit;
    edtNIKOT: TEdit;
    edtTPOT: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    edtpekerjaan: TEdit;
    edtTelp: TEdit;
    edtAlamat: TEdit;
    lbl10: TLabel;
    cbbJKOT: TComboBox;
    edtStatus: TEdit;
    lbl11: TLabel;
    edtStatusHUB: TEdit;
    lbl1: TLabel;
    btnLDOT: TButton;
    zqryOT: TZQuery;
    ZconOT: TZConnection;
    procedure btnLDOTClick(Sender: TObject);
    procedure TOTClick(Sender: TObject);
    procedure edtTPOTChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orang_tua: Torang_tua;

implementation

{$R *.dfm}

procedure Torang_tua.btnLDOTClick(Sender: TObject);
begin
  zqryOT.SQL.Clear;
  zqryOT.SQL.Add('select * from orang_tua');
  zqryOT.Open;

  dbgrdOT.Columns[0].Width:=20;
  dbgrdOT.Columns[1].Width:=110;
  dbgrdOT.Columns[2].Width:=75;
  dbgrdOT.Columns[3].Width:=85;
  dbgrdOT.Columns[4].Width:=110;
  dbgrdOT.Columns[5].Width:=65;
  dbgrdOT.Columns[6].Width:=150;
  dbgrdOT.Columns[7].Width:=70;
  dbgrdOT.Columns[8].Width:=75;
  dbgrdOT.Columns[9].Width:=150;

end;

procedure Tlaporan.bersihOT;
begin
dtpLaporan.Clear;
cbbSemester.Clear;
edtSiswaId.Clear;
edtWK.Clear;
edtOT.Clear;
edtPrestasi.Clear;
edtKeterangan.Clear;
edtStatus.Clear;
end;

procedure Tlaporan.posisiawalOT;
begin
bersihLaporan;
dtpLaporan.Enabled:= True;
cbbSemester.Enabled:= True;
edtSiswaId.Enabled:= True;
edtWK.Enabled:= True;
edtOT.Enabled:= True;
edtPrestasi.Enabled:= True;
edtKeterangan.Enabled:= True;
edtStatus.Enabled:= True;
TLaporan.Enabled:= True;
HLaporan.Enabled:= False;
btnLDLapora.nabled:= True;
end;

procedure Torang_tua.TOTClick(Sender: TObject);

begin

with orang_tua.zqryOT do
begin
 zqryOT.SQL.Clear;
 zqryOT.SQL.Add('insert into orang_tua values(null,"'+edtNamaOT.Text+'","'+edtNIKOT.Text+'","'+edtTPOT.Text+'","'+edtpekerjaan.Text+'","'+edtTelp.Text+'","'+edtAlamat.Text+'","'+cbbJKOT.Text+'","'+edtStatus.Text+'","'+edtStatusHUB.Text+'")');
 zqryOT.ExecSQL;

 zqryOT.SQL.Clear;
 zqryOT.SQL.Add('select * from orang_tua');
 Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
end;

end.
