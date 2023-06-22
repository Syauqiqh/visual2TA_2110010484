unit OTGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids;

type
  Torang_tua = class(TForm)
    dsOT: TDataSource;
    dbgrdOT: TDBGrid;
    conOT: TADOConnection;
    qryOT: TADOQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orang_tua: Torang_tua;

implementation

{$R *.dfm}

end.
