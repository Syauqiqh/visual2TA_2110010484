unit prestasiGridpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  Tprestasi = class(TForm)
    dbgrdPrestasi: TDBGrid;
    TPrestasi: TButton;
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
    procedure TPrestasiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prestasi: Tprestasi;

implementation

{$R *.dfm}

procedure Tprestasi.btnLDPrestasiClick(Sender: TObject);
begin
  zqryprestasi.SQL.Clear;
  zqryprestasi.SQL.Add('select * from pelanggaran');
  zqryprestasi.Open;

  dbgrdPrestasi.Columns[0].Width:=20;
  dbgrdPrestasi.Columns[1].Width:=60;
  dbgrdPrestasi.Columns[2].Width:=60;
end;

procedure Tprestasi.TPrestasiClick(Sender: TObject);

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

end.
