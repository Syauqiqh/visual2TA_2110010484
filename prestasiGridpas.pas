unit prestasiGridpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  Tprestasi = class(TForm)
    conPrestasi: TADOConnection;
    qryPrestasi: TADOQuery;
    dbgrdPrestasi: TDBGrid;
    TPrestasi: TButton;
    HPrestasi: TButton;
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
