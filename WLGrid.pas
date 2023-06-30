unit WLGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

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
    dtpSiswa: TDateTimePicker;
    lbl8: TLabel;
    edtTP: TEdit;
    dsWK: TDataSource;
    btnLDWK: TButton;
    lbl9: TLabel;
    edtstatus: TEdit;
    ZconWk: TZConnection;
    zqryWK: TZQuery;
    procedure btnLDWKClick(Sender: TObject);
    procedure TWKClick(Sender: TObject);
    procedure bersihWaliKelas;
    procedure posisiawalWaliKelas;
    procedure HWKClick(Sender: TObject);
    procedure walikelasonclick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wali_kelas: Twali_kelas;

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

procedure TFSiswa.bersihWaliKelas;
begin
edtNama.Clear;
edtNIk.Clear;
edtTelp.Clear;
cbbJK.Clear;
edtAlamat.Clear;
edtTL.Clear;
dtpSiswa.Clear;
edtTP.Clear;
edtstatus.Clear;
end;

procedure TFSiswa.posisiawalWaliKelas;
begin
bersihWaliKelas;
edtNama.Enabled:= True;
edtNIk.Enabled:= True;
edtTelp.Enabled:= True;
cbbJK.Enabled:= True;
edtAlamat.Enabled:= True;
edtTL.Enabled:= True;
dtpSiswa.Enabled:= True;
edtTP.Enabled:= True;
edtstatus.Enabled:= True;
TWK.Enabled:= True;
HWK.Enabled:= False;
btnLDWK.Enabled:= True;
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
posisiawalSiswa;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalWaliKelas;
end;
end;



procedure Twali_kelas.TWKClick(Sender: TObject);

begin

with wali_kelas.zqryWK do
begin
 zqryWK.SQL.Clear;
 zqryWK.SQL.Add('insert into wali_kelas values(null,"'+edtNama.Text+'","'+edtNIk.Text+'","'+edtTelp.Text+'","'+cbbJK.Text+'","'+edtAlamat.Text+'","'+edtTL.Text+'","'+formatdatetime('yyyy-mm-dd',dtpSiswa.Date)+'","'+edtTP.Text+'","'+edtstatus.Text+'")');
 zqryWK.ExecSQL;

 zqryWK.SQL.Clear;
 zqryWK.SQL.Add('select * wali_kelas');
 Open;
 ShowMessage('DATA BERHASIL DI SIMPAN');
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
dtpSiswa.Text:= zqryWK.Fields[7].AsString;
edtTP.Text:= zqryWK.Fields[8].AsString;
edtstatus.Text:= zqryWK.Fields[9].AsString;
end;
end.
