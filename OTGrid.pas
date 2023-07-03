unit OTGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

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
    editOT: TButton;
    baruOT: TButton;
    procedure btnLDOTClick(Sender: TObject);
    procedure TOTClick(Sender: TObject);
    procedure HOTClick(Sender: TObject);
    procedure OTonClick(Column: TColumn);
    procedure editOTClick(Sender: TObject);
    procedure bersihOT;
    procedure posisiawalOT;
    procedure baruOTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orang_tua: Torang_tua;
  id :string;

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

procedure Torang_tua.bersihOT;
begin
edtNamaOT.Clear;
edtNIKOT.Clear;
edtTPOT.Clear;
edtpekerjaan.Clear;
edtTelp.Clear;
edtAlamat.Clear;
cbbJKOT.Clear;
edtStatus.Clear;
edtStatusHUB.Clear;
end;

procedure Torang_tua.posisiawalOT;
begin
bersihOT;
edtNamaOT.Enabled:= False;
edtNIKOT.Enabled:= False;
edtpekerjaan.Enabled:= False;
edtTPOT.Enabled:= False;
edtTelp.Enabled:= False;
edtAlamat.Enabled:= False;
cbbJKOT.Enabled:= False;
edtStatus.Enabled:= False;
edtStatusHUB.Enabled:= False;
baruOT.Enabled:= False;
TOT.Enabled:= False;
HOT.Enabled:= False;
btnLDOT.Enabled:= True;
end;
procedure Torang_tua.HOTClick(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqryOT.SQL.Clear;
zqryOT.SQL.Add(' delete from orang_tua where id="'+id+'"');
zqryOT.ExecSQL;
zqryOT.SQL.Clear;
zqryOT.SQL.Add('select * from orang_tua');
zqryOT.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalOT;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalOT;
end;
end;


procedure Torang_tua.TOTClick(Sender: TObject);

begin
   if edtNamaOT.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edtNIKOT.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edtTPOT.Text ='' then
begin
ShowMessage('TINGKAT PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if edtpekerjaan.Text ='' then
begin
ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG!');
end else
if edtTelp.Text ='' then
begin
ShowMessage('TELPON TIDAK BOLEH KOSONG!');
end else
if edtAlamat.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if cbbJKOT.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edtStatus.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
if edtStatusHUB.Text ='' then
begin
ShowMessage('STATUS HUBUNGAN ANAK TIDAK BOLEH KOSONG!');
end else
begin
 zqryOT.SQL.Clear;
 zqryOT.SQL.Add('insert into orang_tua values(null,"'+edtNamaOT.Text+'","'+edtNIKOT.Text+'","'+edtTPOT.Text+'","'+edtpekerjaan.Text+'","'+edtTelp.Text+'","'+edtAlamat.Text+'","'+cbbJKOT.Text+'","'+edtStatus.Text+'","'+edtStatusHUB.Text+'")');
 zqryOT.ExecSQL;

 zqryOT.SQL.Clear;
 zqryOT.SQL.Add('select * from orang_tua');
 zqryOT.Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
 bersihOT;
end;
end;

procedure Torang_tua.OTonClick(Column: TColumn);
begin
id:= zqryOT.Fields[0].AsString;
edtNamaOT.Text:= zqryOT.Fields[1].AsString;
edtNIKOT.Text:= zqryOT.Fields[2].AsString;
edtTPOT.Text:= zqryOT.Fields[3].AsString;
edtpekerjaan.Text:= zqryOT.Fields[4].AsString;
edtTelp.Text:= zqryOT.Fields[5].AsString;
edtAlamat.Text:= zqryOT.Fields[6].AsString;
cbbJKOT.Text:= zqryOT.Fields[7].AsString;
edtStatus.Text:= zqryOT.Fields[8].AsString;
edtStatusHUB.Text:= zqryOT.Fields[9].AsString;
end;

procedure Torang_tua.editOTClick(Sender: TObject);
begin
if (edtNamaOT.Text= '')or (edtNIKOT.Text ='')or(edtTPOT.Text= '')or (edtpekerjaan.Text ='')or (edtTelp.Text ='')or (edtAlamat.Text ='')or (cbbJKOT.Text ='')or (edtStatus.Text ='')or (edtStatusHUB.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edtNamaOT.Text = zqryOT.Fields[1].AsString)
or (edtNIKOT.Text =zqryOT.Fields[2].AsString)or(edtTPOT.Text= zqryOT.Fields[3].AsString)or (edtpekerjaan.Text =zqryOT.Fields[4].AsString)or (edtTelp.Text =zqryOT.Fields[5].AsString)or (edtAlamat.Text =zqryOT.Fields[6].AsString)or (cbbJKOT.Text =zqryOT.Fields[7].AsString)or (edtStatus.Text =zqryOT.Fields[8].AsString)or (edtStatusHUB.Text =zqryOT.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalOT;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqryOT.SQL.Add('Update orang_tua set nama= "'+edtNamaOT.Text+'",nik="'+edtNIKOT.Text+'",tingkat_pendidikan="'+edtTPOT.Text+'",pekerjaan="'+edtpekerjaan.Text+'",telp="'+edtTelp.Text+'",alamat="'+edtAlamat.Text+'",jenis_kelamin="'+cbbJKOT.Text+'",status="'+edtStatus.Text+'",status_hubungan_anak="'+edtStatusHUB.Text+'"where id="'+id+'"');
zqryOT.ExecSQL;
zqryOT.SQL.Clear;
zqryOT.SQL.Add('select * from orang_tua');
zqryOT.Open;
posisiawalOT;
end;
end;


procedure Torang_tua.baruOTClick(Sender: TObject);
begin
bersihOT;
edtNamaOT.Enabled:= True;
edtNIKOT.Enabled:= True;
edtpekerjaan.Enabled:= True;
edtTPOT.Enabled:= True;
edtTelp.Enabled:= True;
edtAlamat.Enabled:= True;
cbbJKOT.Enabled:= True;
edtStatus.Enabled:= True;
edtStatusHUB.Enabled:= True;
TOT.Enabled:= True;
HOT.Enabled:= True;
btnLDOT.Enabled:= True;
baruOT.Enabled:= False;
end;

procedure Torang_tua.FormCreate(Sender: TObject);
begin
posisiawalOT;
end;

end.
