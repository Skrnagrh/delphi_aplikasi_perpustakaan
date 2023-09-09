unit UBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TFBuku = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Edit5: TEdit;
    Button5: TButton;
    Edit6: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Kembali: TButton;
    Label6: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuku: TFBuku;

implementation

uses UPinjam, UAnggota, UMenu;

{$R *.dfm}

procedure TFBuku.Button1Click(Sender: TObject);
begin
with adotable1 do
  begin
    insert;
    fieldbyname('kode').AsString:= edit1.Text;
    fieldbyname('judul').AsString:= edit2.Text;
    fieldbyname('penulis').AsString:= edit3.Text;
    fieldbyname('tahun').AsString:= edit4.Text;
    fieldbyname('penerbit').AsString:= edit5.Text;
    post;
  end;
end;

procedure TFBuku.Button2Click(Sender: TObject);
begin
with adotable1 do
  begin
    edit;
    fieldbyname('judul').AsString:= edit2.Text;
    fieldbyname('penulis').AsString:= edit3.Text;
    fieldbyname('tahun').AsString:= edit4.Text;
    fieldbyname('penerbit').AsString:= edit5.Text;
    post;
  end;
end;

procedure TFBuku.Button3Click(Sender: TObject);
begin
if(application.MessageBox('Yakin data akan dihapus?','Konfirmasi',MB_YesNo)=ID_Yes) then
    begin
      adotable1.Delete;
    end;
end;

procedure TFBuku.Button4Click(Sender: TObject);
begin
   if adotable1.Locate('kode',edit6.Text,[])=true then
  begin
    with adotable1 do
    begin
      edit1.Text:= fieldbyname('kode').AsString;
      edit2.Text:= fieldbyname('judul').AsString;
      edit3.Text:= fieldbyname('penulis').AsString;
      edit4.Text:= fieldbyname('tahun').AsString;
      edit5.Text:= fieldbyname('penerbit').AsString;
     end;
  end else
      showmessage('Data yang anda cari tidak ditemukan....');
end;

procedure TFBuku.Button5Click(Sender: TObject);
begin
    fpinjam.edit4.Text:= edit1.Text;
    fbuku.close;
end;

procedure TFBuku.KembaliClick(Sender: TObject);
begin
  fbuku.Close;
  fmenu.show;
end;
procedure TFBuku.Button6Click(Sender: TObject);
begin
    edit1.Clear;
    edit2.Clear;
    edit3.Clear;
    edit4.Clear;
    edit5.Clear;
end;

end.
