program PMenu;

uses
  Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UAnggota in 'UAnggota.pas' {FAnggota},
  UBuku in 'UBuku.pas' {FBuku},
  UPinjam in 'UPinjam.pas' {FPinjam};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFAnggota, FAnggota);
  Application.CreateForm(TFBuku, FBuku);
  Application.CreateForm(TFPinjam, FPinjam);
  Application.Run;
end.
