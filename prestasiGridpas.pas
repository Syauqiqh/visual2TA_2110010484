unit prestasiGridpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFprestasi = class(TForm)
    dbgrdPrestasi: TDBGrid;
    btnTPrestasi: TButton;
    HPrestasi: TButton;
    edtpoin: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cbbJenis: TComboBox;
    lbl3: TLabel;
    dtpPrestasi: TDateTimePicker;
    btnLDPrestasi: TButton;
    dsPrestasi: TDataSource;
    Zconprestasi: TZConnection;
    zqryprestasi: TZQuery;
    editprestasi: TButton;
    baruprestasi: TButton;
    procedure btnLDPrestasiClick(Sender: TObject);
    procedure btnTPrestasiClick(Sender: TObject);
    procedure HPrestasiClick(Sender: TObject);
    procedure prestasionclick(Column: TColumn);
    procedure editprestasiClick(Sender: TObject);
    procedure bersihprestasi;
    procedure posisiawalprestasi;
    procedure baruprestasiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprestasi: TFprestasi;
  id:string;

implementation

{$R *.dfm}

procedure TFprestasi.btnLDPrestasiClick(Sender: TObject);
begin
  zqryprestasi.SQL.Clear;
  zqryprestasi.SQL.Add('select * from pelanggaran');
  zqryprestasi.Open;

  dbgrdPrestasi.Columns[0].Width:=20;
  dbgrdPrestasi.Columns[1].Width:=60;
  dbgrdPrestasi.Columns[2].Width:=60;
end;

procedure TFprestasi.bersihprestasi;
begin
edtpoin.Clear;
cbbJenis.Clear;
end;

procedure TFprestasi.posisiawalprestasi;
begin
bersihprestasi;
edtpoin.Enabled:= False;
cbbJenis.Enabled:= False;
dtpPrestasi.Enabled:= False;
HPrestasi.Enabled:= False;
btnTPrestasi.Enabled:= False;
baruprestasi.Enabled:= True;
end;

procedure TFprestasi.btnTPrestasiClick(Sender: TObject);

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
 zqryprestasi.SQL.Clear;
 zqryprestasi.SQL.Add('insert into prestasi values(null,"'+edtpoin.Text+'","'+cbbJenis.Text+'","'+formatdatetime('yyyy-mm-dd',dtpPrestasi.Date)+'")');
 zqryprestasi.ExecSQL;

 zqryprestasi.SQL.Clear;
 zqryprestasi.SQL.Add('select * from prestasi');
 zqryprestasi.Open;
 bersihprestasi;
end;
end;
procedure TFprestasi.HPrestasiClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqryprestasi.SQL.Clear;
zqryprestasi.SQL.Add(' delete from prestasi where id="'+id+'"');
zqryprestasi.ExecSQL;
zqryprestasi.SQL.Clear;
zqryprestasi.SQL.Add('select * from prestasi');
zqryprestasi.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawalprestasi;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawalprestasi;
end;
end;

procedure TFprestasi.prestasionclick(Column: TColumn);
begin
id:= zqryprestasi.Fields[0].AsString;
edtpoin.Text:= zqryprestasi.Fields[1].AsString;
cbbJenis.Text:= zqryprestasi.Fields[2].AsString;
end;

procedure TFprestasi.editprestasiClick(Sender: TObject);
begin
if (edtpoin.Text= '')or (cbbJenis.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edtpoin.Text = zqryprestasi.Fields[1].AsString)or(cbbJenis.Text =zqryprestasi.Fields[2].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawalprestasi;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
zqryprestasi.SQL.Add('Update prestasi set poin= "'+edtpoin.Text+'",jenis="'+cbbJenis.Text+'",tanggal="'+formatdatetime('yyyy-mm-dd',dtpPrestasi.Date)+'"');
zqryprestasi.ExecSQL;
zqryprestasi.SQL.Clear;
zqryprestasi.SQL.Add('select * from prestasi');
zqryprestasi.Open;
posisiawalprestasi;
end;
end;

procedure TFprestasi.baruprestasiClick(Sender: TObject);
begin
bersihprestasi;
edtpoin.Enabled:= True;
cbbJenis.Enabled:= True;
dtpPrestasi.Enabled:= True;
HPrestasi.Enabled:= True;
btnTPrestasi.Enabled:= True;
baruprestasi.Enabled:= False;
end;

procedure TFprestasi.FormCreate(Sender: TObject);
begin
posisiawalprestasi;
end;

end.
