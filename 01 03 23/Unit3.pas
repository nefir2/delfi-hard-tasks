unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ExtDlgs, shellapi;

type
  TForm3 = class(TForm)
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    open1: TMenuItem;
    N1: TMenuItem;
    exit1: TMenuItem;
    N2: TMenuItem;
    recent1: TMenuItem;
    OPTIONS1: TMenuItem;
    CENTER1: TMenuItem;
    STRETCH1: TMenuItem;
    TRANSPARENT1: TMenuItem;
    ABOUT1: TMenuItem;
    recent2: TMenuItem;
    recent3: TMenuItem;
    procedure open1Click(Sender: TObject);
    procedure recentClick(Sender: TObject);
    procedure CENTER1Click(Sender: TObject);
    procedure exit1Click(Sender: TObject);
    procedure ABOUT1Click(Sender: TObject);
    procedure STRETCH1Click(Sender: TObject);
    procedure TRANSPARENT1Click(Sender: TObject);
  private
    current: string; //����������� ���������� ��� � C++, ���� ������ ���������� � ��� ��� ��������� ���� �� ��������. ����� �� �� ��� ��������� �� C++ � �� ��� ����� ��� ���������� ���-��.
    procedure CheckToRecentness();
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

  procedure TForm3.ABOUT1Click(Sender: TObject);
  begin
    ShellExecute(Handle, 'open', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', nil, nil, SW_NORMAL);
  end;

  procedure TForm3.CENTER1Click(Sender: TObject);
  begin
    center1.Checked := not center1.Checked;
    image1.Center := center1.Checked;
  end;

  procedure TForm3.exit1Click(Sender: TObject); begin Application.Terminate(); end;

  procedure TForm3.recentClick(Sender: TObject);
  var s: string; //� ��� ��� ������ �������� ����������� ����������. �� ��� �� ������������ ����...
  recenter: TMenuItem; //���������� ������� � �������
  begin
    //recenter := TMenuItem(Sender);
    recenter := Sender as TMenuItem;
    s := recenter.Caption;
    image1.picture.LoadFromFile(s);
    //recent1.Caption := current; //���, ������ ��� ���������� ����������. � ����� �� ���� �� ������. � ���� ���� ����� � �� �������� ��� ��������� ���������� ����������.
    checktorecentness(); //���� ����� ��-�� ������� �������� ���������...
    current := s;
  end;

  procedure TForm3.open1Click(Sender: TObject);
  ////�� ��� ������ ����� �� ����������� ��� ��� �� ����������? ������ ������ ���� ���� �� ������ ������� �������� "�������� ���� ������ ���� string"? ������ � ������ ��� ������������ � ����� �������? � ������� ��� ����� ���� �� ����� ��� ����� ����, �� ����� ������ �������� "������ � ��� ���� ���� ������?" ��� ��� �� ����� ������ ���?
  //var current: string; //�� ���� ������. ����� �� ������� ������ ��� ���������� �������, �� �� � ������������� ����� ���������� ��� ��� ���� string. --�����-�� �� ����� ����� ���� ������ ������� ��� �� �������� ��� �� ��� �������� ��� ��� ������ ������... ����� ���� �� ����������� ��������, � ��, ������ ����������� � ������� - ��������.
  begin
    if OpenPictureDialog1.Execute() then
    begin
      if current <> '' then checktorecentness(); //�� � ��� �� ���� ��� ����� "current"?
      current := openpicturedialog1.FileName;
      image1.picture.loadfromfile(current);
    end;
  end;

  procedure TForm3.checktorecentness();
  begin
    if recent1.caption <> 'MOST RECENT' then
    begin
      if recent2.Caption <> 'NOT MOST RECENT' then
      begin
        recent3.Caption := recent2.Caption;
        recent2.Caption := recent1.Caption;
        recent1.Caption := current;
        recent3.Visible := true;
      end
      else
      begin                        
        recent2.Caption := recent1.Caption;
        recent1.Caption := current;
        recent2.Visible := true;
      end;
    end
    else
    begin
      recent1.Caption := current;
      N2.Visible := true;
      recent1.Visible := true;
    end;
  end;

  procedure TForm3.STRETCH1Click(Sender: TObject);
  begin
    stretch1.Checked := not stretch1.Checked;
    image1.Stretch := stretch1.Checked;
  end;

  procedure TForm3.TRANSPARENT1Click(Sender: TObject);
  begin
    transparent1.Checked := not transparent1.Checked;
    image1.Transparent := transparent1.Checked;
  end;

end.
