program TugasAkhir;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  SiswaGrid in 'SiswaGrid.pas' {Siswa},
  WLGrid in 'WLGrid.pas' {wali_kelas},
  laporanGrid in 'laporanGrid.pas' {laporan},
  OTGrid in 'OTGrid.pas' {orang_tua},
  prestasiGridpas in 'prestasiGridpas.pas' {prestasi},
  pelanggaranGrid in 'pelanggaranGrid.pas' {pelanggaran};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSiswa, Siswa);
  Application.CreateForm(Twali_kelas, wali_kelas);
  Application.CreateForm(Tlaporan, laporan);
  Application.CreateForm(Torang_tua, orang_tua);
  Application.CreateForm(Tprestasi, prestasi);
  Application.CreateForm(Tpelanggaran, pelanggaran);
  Application.Run;
end.
