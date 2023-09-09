program PPinjam;

uses
  Forms,
  UPinjam in 'UPinjam.pas' {FPinjam},
  UAnggota in 'UAnggota.pas' {FAnggota},
  UBuku in 'UBuku.pas' {FBuku};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPinjam, FPinjam);
  Application.CreateForm(TFAnggota, FAnggota);
  Application.CreateForm(TFBuku, FBuku);
  Application.Run;
end.
