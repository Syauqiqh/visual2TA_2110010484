unit SiswaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids;

type
  TFSiswa = class(TForm)
    dsSiswa: TDataSource;
    dbgridSiswa: TDBGrid;
    conSiswa: TADOConnection;
    tambahSiswa: TButton;
    LDSiswa: TButton;
    VRSiswa: TButton;
    VGSiswa: TButton;
    VOT: TButton;
    VWK: TButton;
    qrySiswa: TADOQuery;
    HSiswa: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;

implementation

{$R *.dfm}

end.
