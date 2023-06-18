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
