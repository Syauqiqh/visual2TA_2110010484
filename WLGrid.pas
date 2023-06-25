unit WLGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls;

type
  Twali_kelas = class(TForm)
    dbgrdWK: TDBGrid;
    conWK: TADOConnection;
    TWK: TButton;
    HWK: TButton;
    qryWK: TADOQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtNama: TEdit;
    edtNIk: TEdit;
    edtTelp: TEdit;
    edtAlamat: TEdit;
    edtTL: TEdit;
    lbl7: TLabel;
    cbbJK: TComboBox;
    lbl6: TLabel;
    dtpSiswa: TDateTimePicker;
    lbl8: TLabel;
    edtTP: TEdit;
    dsWK: TDataSource;
    btnLDWK: TButton;
    procedure btnLDWKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wali_kelas: Twali_kelas;

implementation

{$R *.dfm}

procedure Twali_kelas.btnLDWKClick(Sender: TObject);
begin
  qryWK.SQL.Clear;
  qryWK.SQL.Add('select * from wali_kelas');
  qryWK.Open;

  dbgrdWK.Columns[0].Width:=20;
  dbgrdWK.Columns[1].Width:=110;
  dbgrdWK.Columns[2].Width:=75;
  dbgrdWK.Columns[3].Width:=65;
  dbgrdWK.Columns[4].Width:=90;
  dbgrdWK.Columns[5].Width:=150;
  dbgrdWK.Columns[6].Width:=150;
  dbgrdWK.Columns[7].Width:=70;
  dbgrdWK.Columns[8].Width:=75;
end;

end.
