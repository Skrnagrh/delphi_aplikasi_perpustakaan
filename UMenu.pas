unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFMenu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UAnggota, UBuku, UPinjam;

{$R *.dfm}

procedure TFMenu.Button1Click(Sender: TObject);
begin
  fmenu.Hide;
  fanggota.show;
end;

procedure TFMenu.Button2Click(Sender: TObject);
begin
    fmenu.Hide;
    fbuku.show;
end;

procedure TFMenu.Button4Click(Sender: TObject);
begin
  fmenu.Hide;
  fpinjam.show;
end;

procedure TFMenu.Button3Click(Sender: TObject);
begin
  Application.terminate;
end;

end.
