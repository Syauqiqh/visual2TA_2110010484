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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prestasi: Tprestasi;

implementation

{$R *.dfm}

end.
