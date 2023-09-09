unit UAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TFAnggota = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Button5: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Kembali: TButton;
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
  FAnggota: TFAnggota;

implementation

uses UPinjam, UMenu;

{$R *.dfm}

procedure TFAnggota.Button1Click(Sender: TObject);
begin
  with adotable1 do
  begin
    insert;
    fieldbyname('nim').AsString:= edit1.Text;
    fieldbyname('nama').AsString:= edit2.Text;
    fieldbyname('jurusan').AsString:= edit3.Text;
    fieldbyname('semester').AsString:= edit4.Text;
    fieldbyname('nohp').AsString:= edit5.Text;
    post;
  end;
end;

procedure TFAnggota.Button2Click(Sender: TObject);
begin
with adotable1 do
  begin
    edit;
    fieldbyname('nim').AsString:= edit1.Text;
    fieldbyname('nama').AsString:= edit2.Text;
    fieldbyname('jurusan').AsString:= edit3.Text;
    fieldbyname('semester').AsString:= edit4.Text;
    fieldbyname('nohp').AsString:= edit5.Text;
    post;
  end;
end;

procedure TFAnggota.Button3Click(Sender: TObject);
begin
   if(application.MessageBox('Yakin data akan dihapus?','Konfirmasi',MB_YesNo)=ID_Yes) then
    begin
      adotable1.Delete;
    end;
end;

procedure TFAnggota.Button4Click(Sender: TObject);
begin
if adotable1.Locate('nim',edit6.Text,[])=true then
  begin
    with adotable1 do
    begin
      edit1.Text:= fieldbyname('nim').AsString;
      edit2.Text:= fieldbyname('nama').AsString;
      edit3.Text:= fieldbyname('jurusan').AsString;
      edit4.Text:= fieldbyname('semester').AsString;
      edit5.Text:= fieldbyname('nohp').AsString;
     end;
  end else
      showmessage('Data yang anda cari tidak ditemukan....');
  end;
//end;

procedure TFAnggota.Button5Click(Sender: TObject);
begin
   fpinjam.edit1.Text:= edit1.Text;
   fanggota.close;
end;

procedure TFAnggota.KembaliClick(Sender: TObject);
begin
  fanggota.Close;
  fmenu.show;
end;

procedure TFAnggota.Button6Click(Sender: TObject);
begin
    edit1.Clear;
    edit2.Clear;
    edit3.Clear;
    edit4.Clear;
    edit5.Clear;
  end;

end.
