unit prestasiGridpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls;

type
  Tprestasi = class(TForm)
    conPrestasi: TADOConnection;
    qryPrestasi: TADOQuery;
    dbgrdPrestasi: TDBGrid;
    TPrestasi: TButton;
    HPrestasi: TButton;
    edtpoin: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cbbJenis: TComboBox;
    lbl3: TLabel;
    dtpLaporan: TDateTimePicker;
    btnLDPrestasi: TButton;
    dsPrestasi: TDataSource;
    procedure btnLDPrestasiClick(Sender: TObject);
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
  qryPrestasi.SQL.Clear;
  qryPrestasi.SQL.Add('select * from pelanggaran');
  qryPrestasi.Open;

  dbgrdPrestasi.Columns[0].Width:=20;
  dbgrdPrestasi.Columns[1].Width:=60;
  dbgrdPrestasi.Columns[2].Width:=60;
end;

end.
