program PAnggota;

uses
  Forms,
  UAnggota in 'UAnggota.pas' {FAnggota};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFAnggota, FAnggota);
  Application.Run;
end.
