unit pelanggaranGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls;

type
  Tpelanggaran = class(TForm)
    conPelanggaran: TADOConnection;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pelanggaran: Tpelanggaran;

implementation

{$R *.dfm}

end.
