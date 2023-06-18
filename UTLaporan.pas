unit UTLaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFTLaporan = class(TForm)
    dtpLaporan: TDateTimePicker;
    cbbSemester: TComboBox;
    edtSiswaId: TEdit;
    edtWK: TEdit;
    edtOT: TEdit;
    edtPrestasi: TEdit;
    edtPelanggaran: TEdit;
    edtKeterangan: TEdit;
    edtStatus: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Label2: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    TDLaporan: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTLaporan: TFTLaporan;

implementation

{$R *.dfm}

end.
