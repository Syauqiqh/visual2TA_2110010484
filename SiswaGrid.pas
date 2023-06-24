unit SiswaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, ComCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TFSiswa = class(TForm)
    dsSiswa: TDataSource;
    dbgridSiswa: TDBGrid;
    tambahSiswa: TButton;
    LDSiswa: TButton;
    VRSiswa: TButton;
    VOT: TButton;
    VWK: TButton;
    HSiswa: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edtEnis: TEdit;
    edtEnisn: TEdit;
    edtENS: TEdit;
    edtEnik: TEdit;
    edtETL: TEdit;
    dtpSiswa: TDateTimePicker;
    cbbJKSiwa: TComboBox;
    cbbJurusan: TComboBox;
    edtEWK: TEdit;
    edtEalamat: TEdit;
    edtEHP: TEdit;
    edtEsiswaOT: TEdit;
    edtEsiswaLaporan: TEdit;
    edtEsiswaStatus: TEdit;
    consiswa: TADOConnection;
    qrysiswa: TADOQuery;
    procedure LDSiswaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;

implementation

{$R *.dfm}

procedure TFSiswa.LDSiswaClick(Sender: TObject);
begin
  qrysiswa.SQL.Clear;
  qrysiswa.SQL.Add('select * from siswa');
  qrysiswa.Open;

  dbgridSiswa.Columns[0].Width:=20;
  dbgridSiswa.Columns[1].Width:=60;
  dbgridSiswa.Columns[2].Width:=60;
  dbgridSiswa.Columns[3].Width:=110;
  dbgridSiswa.Columns[4].Width:=60;
  dbgridSiswa.Columns[5].Width:=110;
  dbgridSiswa.Columns[6].Width:=80;
  dbgridSiswa.Columns[7].Width:=65;
  dbgridSiswa.Columns[8].Width:=65;
  dbgridSiswa.Columns[9].Width:=65;
  dbgridSiswa.Columns[10].Width:=100;
  dbgridSiswa.Columns[11].Width:=80;
  dbgridSiswa.Columns[12].Width:=70;
  dbgridSiswa.Columns[13].Width:=60;
  dbgridSiswa.Columns[14].Width:=45;

end;

end.
