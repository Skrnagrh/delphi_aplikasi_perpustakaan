program PBuku;

uses
  Forms,
  UBuku in 'UBuku.pas' {FBuku},
  UMenu in 'UMenu.pas' {FMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFBuku, FBuku);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
