unit WLGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  Twali_kelas = class(TForm)
    dbgrdWK: TDBGrid;
    conWK: TADOConnection;
    TWK: TButton;
    HWK: TButton;
    qryWK: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wali_kelas: Twali_kelas;

implementation

{$R *.dfm}

end.
