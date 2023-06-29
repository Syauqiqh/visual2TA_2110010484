unit Unitmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFmenus = class(TForm)
    mm1: TMainMenu;
    datasiswa1: TMenuItem;
    siswa1: TMenuItem;
    orangtua1: TMenuItem;
    datasekolah1: TMenuItem;
    walikelas1: TMenuItem;
    laporan1: TMenuItem;
    procedure siswa1Click(Sender: TObject);
    procedure orangtua1Click(Sender: TObject);
    procedure walikelas1Click(Sender: TObject);
    procedure laporan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmenus: TFmenus;

implementation

uses SiswaGrid,OTGrid,laporanGrid,pelanggaranGrid,prestasiGridpas,WLGrid;


{$R *.dfm}

procedure TFmenus.siswa1Click(Sender: TObject);
begin
FSiswa.show;
end;

procedure TFmenus.orangtua1Click(Sender: TObject);
begin
orang_tua.show;
end;

procedure TFmenus.walikelas1Click(Sender: TObject);
begin
 wali_kelas.Show;
end;

procedure TFmenus.laporan1Click(Sender: TObject);
begin
laporan.Show;
end;
 
end.

