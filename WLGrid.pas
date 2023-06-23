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
