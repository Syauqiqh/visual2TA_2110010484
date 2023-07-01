program TugasAkhir;

uses
  Forms,
  SiswaGrid in 'SiswaGrid.pas' {FSiswa},
  WLGrid in 'WLGrid.pas' {wali_kelas},
  laporanGrid in 'laporanGrid.pas' {laporan},
  OTGrid in 'OTGrid.pas' {orang_tua},
  prestasiGridpas in 'prestasiGridpas.pas' {Fprestasi},
  pelanggaranGrid in 'pelanggaranGrid.pas' {pelanggaran},
  Unitmenu in 'Unitmenu.pas' {Fmenus};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmenus, Fmenus);
  Application.CreateForm(TFSiswa, FSiswa);
  Application.CreateForm(Twali_kelas, wali_kelas);
  Application.CreateForm(Tlaporan, laporan);
  Application.CreateForm(Torang_tua, orang_tua);
  Application.CreateForm(TFprestasi, Fprestasi);
  Application.CreateForm(Tpelanggaran, pelanggaran);
  Application.Run;
end.
