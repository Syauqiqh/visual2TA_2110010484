unit pelanggaranGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  Tpelanggaran = class(TForm)
    conPelanggaran: TADOConnection;
    qryPelanggaran: TADOQuery;
    dbgrdPelanggaran: TDBGrid;
    TPelanggaran: TButton;
    HPelanggaran: TButton;
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
