unit WLGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, frxClass, frxDBSet;

type
  Twali_kelas = class(TForm)
    dbgrdWK: TDBGrid;
    TWK: TButton;
    HWK: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtNama: TEdit;
    edtNIk: TEdit;
    edtTelp: TEdit;
    edtAlamat: TEdit;
    edtTL: TEdit;
    lbl7: TLabel;
    cbbJK: TComboBox;
    lbl6: TLabel;
    dtpWK: TDateTimePicker;
    lbl8: TLabel;
    edtTP: TEdit;
    dsWK: TDataSource;
    btnLDWK: TButton;
    lbl9: TLabel;
    edtstatus: TEdit;
    ZconWk: TZConnection;
    zqryWK: TZQuery;
    editWK: TButton;
    baruWK: TButton;
    procedure btnLDWKClick(Sender: TObject);
    procedure TWKClick(Sender: TObject);
    procedure bersihWaliKelas;
    procedure posisiawalWaliKelas;
    procedure HWKClick(Sender: TObject);
    procedure walikelasonclick(Column: TColumn);
    procedure editWKClick(Sender: TObject);
    procedure baruWKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wali_kelas: Twali_kelas;
  id : string;
implementation

{$R *.dfm}

procedure Twali_kelas.btnLDWKClick(Sender: TObject);
begin
  zqryWK.SQL.Clear;
  zqryWK.SQL.Add('select * from wali_kelas');
  zqryWK.Open;

  dbgrdWK.Columns[0].Width:=20;
  dbgrdWK.Columns[1].Width:=110;
  dbgrdWK.Columns[2].Width:=75;
  dbgrdWK.Columns[3].Width:=65;
  dbgrdWK.Columns[4].Width:=90;
  dbgrdWK.Columns[5].Width:=150;
  dbgrdWK.Columns[6].Width:=150;
  dbgrdWK.Columns[7].Width:=70;
  dbgrdWK.Columns[8].Width:=75;
end;

procedure Twali_kelas.bersihWaliKelas;
begin
edtNama.Clear;
edtNIk.Clear;
edtTelp.Clear;
cbbJK.Clear;
edtAlamat.Clear;
edtTL.Clear;
edtTP.Clear;
edtstatus.Clear;
end;

procedure Twali_kelas.posisiawalWaliKelas;
begin
bersihWaliKelas;
edtNama.Enabled:= False;
edtNIk.Enabled:= False;
edtTelp.Enabled:= False;
cbbJK.Enabled:= False;
edtAlamat.Enabled:= False;
edtTL.Enabled:= False;
dtpWK.Enabled:= False;
edtTP.Enabled:= False;
edtstatus.Enabled:= False;
TWK.Enabled:= False;
HWK.Enabled:= False;
btnLDWK.Enabled:= True;
baruWK.Enabled:= True;
end;




procedure Twali_kelas.HWKClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqryWK.SQL.Clear;
zqryWK.SQL.Add(' delete from wali_kelas where id="'+id+'"');
zqryWK.ExecSQL;
zqryWK.SQL.Clear;
zqryWK.SQL.Add('select * from wali_kelas');
zqryWK.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalWaliKelas;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalWaliKelas;
end;
end;



procedure Twali_kelas.TWKClick(Sender: TObject);

begin
if edtNama.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edtNIk.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edtTelp.Text ='' then
begin
ShowMessage('TELPON TIDAK BOLEH KOSONG!');
end else
if cbbJK.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edtAlamat.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edtTL.Text ='' then
begin
ShowMessage('TEMPAT LAHIR TIDAK BOLEH KOSONG!');
end else
if edtTP.Text ='' then
begin
ShowMessage('TINGKAT PENDIKAN TIDAK BOLEH KOSONG!');
end else
if edtstatus.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
 zqryWK.SQL.Clear;
 zqryWK.SQL.Add('insert into wali_kelas values(null,"'+edtNama.Text+'","'+edtNIk.Text+'","'+edtTelp.Text+'","'+cbbJK.Text+'","'+edtAlamat.Text+'","'+edtTL.Text+'","'+formatdatetime('yyyy-mm-dd',dtpWK.Date)+'","'+edtTP.Text+'","'+edtstatus.Text+'")');
 zqryWK.ExecSQL;

 zqryWK.SQL.Clear;
 zqryWK.SQL.Add('select * wali_kelas');
 zqryWK.Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
 bersihWaliKelas;
end;

end;

procedure Twali_kelas.walikelasonclick(Column: TColumn);
begin
id:= zqryWK.Fields[0].AsString;
edtNama.Text:= zqryWK.Fields[1].AsString;
edtNIk.Text:= zqryWK.Fields[2].AsString;
edtTelp.Text:= zqryWK.Fields[3].AsString;
cbbJK.Text:= zqryWK.Fields[4].AsString;
edtAlamat.Text:= zqryWK.Fields[5].AsString;
edtTL.Text:= zqryWK.Fields[6].AsString;
edtTP.Text:= zqryWK.Fields[8].AsString;
edtstatus.Text:= zqryWK.Fields[9].AsString;
end;

procedure Twali_kelas.editWKClick(Sender: TObject);
begin
if (edtNama.Text= '')or (edtNIk.Text ='')or(edtTelp.Text= '')or (cbbJK.Text ='')or (edtAlamat.Text ='')or (edtTL.Text ='')or (edtTP.Text ='')or (edtstatus.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edtNama.Text = zqryWK.Fields[1].AsString)or (edtNIk.Text =zqryWK.Fields[2].AsString)or(edtTelp.Text= zqryWK.Fields[3].AsString)or (cbbJK.Text =zqryWK.Fields[4].AsString)or (edtAlamat.Text =zqryWK.Fields[5].AsString)or (edtTL.Text =zqryWK.Fields[6].AsString)or (edtTP.Text =zqryWK.Fields[8].AsString)or (edtstatus.Text =zqryWK.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalWaliKelas;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqryWK.SQL.Add('Update wali_kelas set nama= "'+edtNama.Text+'",nik="'+edtNIk.Text+'",telp="'+edtTelp.Text+'",jenis_kelamin="'+cbbJK.Text+'",alamat="'+edtAlamat.Text+'",tempat_lahir="'+edtTL.Text+'",tanggal_lahir="'+formatdatetime('yyyy-mm-dd',dtpWK.Date)+'",tingkat_pendidikan="'+edtTP.Text+'",status="'+edtstatus.Text+'"where id="'+id+'"');
zqryWK.ExecSQL;
zqryWK.SQL.Clear;
zqryWK.SQL.Add('select * from wali_kelas');
zqryWK.Open;
posisiawalWaliKelas;

end;

end;

procedure Twali_kelas.baruWKClick(Sender: TObject);
begin
bersihWaliKelas;
edtNama.Enabled:= True;
edtNIk.Enabled:= True;
edtTelp.Enabled:= True;
cbbJK.Enabled:= True;
edtAlamat.Enabled:= True;
edtTL.Enabled:= True;
dtpWK.Enabled:= True;
edtTP.Enabled:= True;
edtstatus.Enabled:= True;
TWK.Enabled:= True;
HWK.Enabled:=True;
btnLDWK.Enabled:= True;
baruWK.Enabled:= False;
end;

procedure Twali_kelas.FormCreate(Sender: TObject);
begin
posisiawalWaliKelas;
end;

end.
