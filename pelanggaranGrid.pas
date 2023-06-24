unit pelanggaranGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls;

type
  Tpelanggaran = class(TForm)
    qryPelanggaran: TADOQuery;
    dbgrdPelanggaran: TDBGrid;
    TPelanggaran: TButton;
    HPelanggaran: TButton;
    edtpoin: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cbbJenis: TComboBox;
    lbl3: TLabel;
    dtpLaporan: TDateTimePicker;
    conPelanggaran: TADOConnection;
    dsPelanggaran: TDataSource;
    btnLDLaporan: TButton;
    procedure btnLDLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pelanggaran: Tpelanggaran;

implementation

{$R *.dfm}

procedure Tpelanggaran.btnLDLaporanClick(Sender: TObject);
begin
  qryPelanggaran.SQL.Clear;
  qryPelanggaran.SQL.Add('select * from pelanggaran');
  qryPelanggaran.Open;

  dbgrdPelanggaran.Columns[0].Width:=20;
  dbgrdPelanggaran.Columns[1].Width:=60;
  dbgrdPelanggaran.Columns[2].Width:=60;
end;

end.
