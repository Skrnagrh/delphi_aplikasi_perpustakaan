object FBuku: TFBuku
  Left = 89
  Top = 61
  Width = 1250
  Height = 717
  Caption = 'FBuku'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 72
    Width = 88
    Height = 20
    Caption = 'Kode Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 104
    Width = 90
    Height = 20
    Caption = 'Judul Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 136
    Width = 59
    Height = 20
    Caption = 'Penulis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 168
    Width = 102
    Height = 20
    Caption = 'Tahun Terbit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 200
    Width = 68
    Height = 20
    Caption = 'Penerbit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 48
    Top = 8
    Width = 196
    Height = 46
    Caption = 'Data Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 184
    Top = 64
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 96
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 128
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 184
    Top = 160
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 928
    Top = 64
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Tambah Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 928
    Top = 128
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Ubah Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 1056
    Top = 128
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Hapus Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 935
    Top = 288
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Cari Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 39
    Top = 352
    Width = 1150
    Height = 300
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit5: TEdit
    Left = 184
    Top = 192
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Button5: TButton
    Left = 1056
    Top = 64
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Peminjaman'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button5Click
  end
  object Edit6: TEdit
    Left = 184
    Top = 304
    Width = 720
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Kembali: TButton
    Left = 1064
    Top = 288
    Width = 120
    Height = 50
    Cursor = crHandPoint
    Caption = 'Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = KembaliClick
  end
  object Button6: TButton
    Left = 776
    Top = 232
    Width = 130
    Height = 50
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = Button6Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\UA' +
      'S\Database.mdb;Mode=Share Deny None;Persist Security Info=False;' +
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLED' +
      'B:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Databas' +
      'e Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:G' +
      'lobal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet' +
      ' OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=F' +
      'alse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Comp' +
      'act Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 1008
    Top = 224
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'buku'
    Left = 1040
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 1072
    Top = 224
  end
end
