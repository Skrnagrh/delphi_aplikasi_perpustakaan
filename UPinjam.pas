unit UPinjam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids, StdCtrls;

type
  TFPinjam = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    DateTimePicker1: TDateTimePicker;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DateTimePicker2: TDateTimePicker;
    Edit3: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Kembali: TButton;
    Cari: TButton;
    Edit6: TEdit;
    Button2: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPinjam: TFPinjam;

implementation

uses UAnggota, UBuku, UMenu;

{$R *.dfm}

procedure TFPinjam.Button1Click(Sender: TObject);
begin
   FAnggota.show;
end;

procedure TFPinjam.Button4Click(Sender: TObject);
begin
if adotable1.Locate('kdpjm',edit6.Text,[])=true then
  begin
    with adotable1 do
    begin
      edit1.Text:= fieldbyname('nim').AsString;
      datetimepicker1.date:= fieldbyname('tglpjm').AsDateTime;
      datetimepicker2.date:= fieldbyname('tglblk').AsDateTime;
      edit5.Text:= fieldbyname('jumlah').AsString;
      edit4.Text:= fieldbyname('kode').AsString;
      edit3.Text:= fieldbyname('kdpjm').AsString;
     end;
  end else
      showmessage('Data yang anda cari tidak ditemukan....');
end;

procedure TFPinjam.Button3Click(Sender: TObject);
begin
  edit5.text := inttostr(strtoint(edit5.text)+1);
end;

procedure TFPinjam.Button5Click(Sender: TObject);
begin
   adotable1.Insert;
   adotable1.FieldByName('kdpjm').AsString:= edit3.Text;
   adotable1.FieldByName('kode').AsString:= edit4.Text;
   adotable1.FieldByName('nim').AsString:= edit1.Text;
   adotable1.FieldByName('tglpjm').AsDateTime:= datetimepicker1.Date;
   adotable1.FieldByName('tglblk').AsDateTime:= datetimepicker2.Date;
   adotable1.FieldByName('jumlah').AsInteger:= strtoint(edit5.Text);
   adotable1.Post;
end;

procedure TFPinjam.KembaliClick(Sender: TObject);
begin
with adotable1 do
  begin
    edit;

    FieldByName('kdpjm').AsString:= edit3.Text;
    FieldByName('kode').AsString:= edit4.Text;
    FieldByName('nim').AsString:= edit1.Text;
    FieldByName('tglpjm').AsDateTime:= datetimepicker1.Date;
    FieldByName('tglblk').AsDateTime:= datetimepicker2.Date;
    FieldByName('jumlah').AsInteger:= strtoint(edit5.Text);
    post;
  end;

end;

procedure TFPinjam.Button6Click(Sender: TObject);
begin
   FBuku.show;
  end;

procedure TFPinjam.Button2Click(Sender: TObject);
begin
  fpinjam.Close;
  fmenu.show;
end;

procedure TFPinjam.Button7Click(Sender: TObject);
begin
   FBuku.show;
end;

procedure TFPinjam.Button8Click(Sender: TObject);
begin
    edit3.Clear;
    edit4.Clear;
    edit1.Clear;
    edit5.Clear;
end;

end.
