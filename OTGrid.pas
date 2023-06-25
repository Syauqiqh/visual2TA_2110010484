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
    btnLDOT: TButton;
    procedure btnLDOTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  orang_tua: Torang_tua;

implementation

{$R *.dfm}

procedure Torang_tua.btnLDOTClick(Sender: TObject);
begin
  qryOT.SQL.Clear;
  qryOT.SQL.Add('select * from orang_tua');
  qryOT.Open;

  dbgrdOT.Columns[0].Width:=20;
  dbgrdOT.Columns[1].Width:=110;
  dbgrdOT.Columns[2].Width:=75;
  dbgrdOT.Columns[3].Width:=85;
  dbgrdOT.Columns[4].Width:=110;
  dbgrdOT.Columns[5].Width:=65;
  dbgrdOT.Columns[6].Width:=150;
  dbgrdOT.Columns[7].Width:=70;
  dbgrdOT.Columns[8].Width:=75;
  dbgrdOT.Columns[9].Width:=150;

end;

end.
