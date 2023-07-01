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
    procedure btnLDPrestasiClick(Sender: TObject);
    procedure btnTPrestasiClick(Sender: TObject);
    procedure HPrestasiClick(Sender: TObject);
    procedure prestasionclick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprestasi: TFprestasi;

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
dtpPrestasi.Clear;
end;

procedure TFprestasi.posisiawalprestasi;
begin
bersihprastasi;
edtpoin.Enabled:= True;
cbbJenis.Enabled:= True;
dtpPrestasi.Enabled:= True;
HPrestasi.Enabled:= False;
btnTPrestasi.Enabled:= True;
end;

procedure TFprestasi.TPrestasiClick(Sender: TObject);

begin
with prestasi.zqryprestasi do
begin
 zqryprestasi.SQL.Clear;
 zqryprestasi.SQL.Add('insert into prestasi values(null,"'+cbbJenis.Text+'","'+formatdatetime('yyyy-mm-dd',dtpPrestasi.Date)+'")');
 ExecSQL;

 zqryprestasi.SQL.Clear;
 zqryprestasi.SQL.Add('select * from prestasi');
 Open;
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
dtpPrestasi.Text:= zqryprestasi.Fields[3].AsString;
end;

end.
