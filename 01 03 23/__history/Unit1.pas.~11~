unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus, ShellApi;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    options1: TMenuItem;
    FONT1: TMenuItem;
    Color1: TMenuItem;
    N1: TMenuItem;
    Left1: TMenuItem;
    Center1: TMenuItem;
    Right1: TMenuItem;
    N3: TMenuItem;
    Height1: TMenuItem;
    Help1: TMenuItem;
    ABOUT1: TMenuItem;
    RichEdit1: TRichEdit;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    procedure Font1Click(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure Left1Click(Sender: TObject);
    procedure Center1Click(Sender: TObject);
    procedure Right1Click(Sender: TObject);
    procedure SHUTDOWN(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure HeightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  procedure TForm1.Color1Click(Sender: TObject);
  begin
    ColorDialog1.Color := RichEdit1.Color;
    ColorDialog1.Execute();
    RichEdit1.Color := ColorDialog1.Color;
  end;

  procedure TForm1.Font1Click(Sender: TObject);
  begin
    FontDialog1.Font := RichEdit1.Font;
    FontDialog1.Execute();
    RichEdit1.Font := FontDialog1.Font;
  end;

  procedure TForm1.HeightClick(Sender: TObject);
  begin
    ShellExecute(Handle, 'open', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', nil, nil, SW_NORMAL);
  end;

  procedure TForm1.Left1Click(Sender: TObject);
  begin
    RichEdit1.Paragraph.Alignment := taLeftJustify;
    Left1.Checked := true;
    Center1.Checked := false;
    Right1.Checked := false;
  end;

  procedure TForm1.AboutClick(Sender: TObject);
  begin
    ShellExecute(Handle, 'open', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', nil, nil, SW_NORMAL);
  end;

  procedure TForm1.Center1Click(Sender: TObject);
  begin
    RichEdit1.Paragraph.Alignment := taCenter;
    Left1.Checked := false;
    Center1.Checked := true;
    Right1.Checked := false;
  end;

  procedure TForm1.Right1Click(Sender: TObject);
  begin
    RichEdit1.Paragraph.Alignment := taRightJustify;
    Left1.Checked := false;
    Center1.Checked := false;
    Right1.Checked := true;
  end;

  procedure TForm1.SHUTDOWN(Sender: TObject);
  begin
    Application.Terminate();
  end;

  procedure TForm1.HelpClick(Sender: TObject);
  begin
    //ShellExecute(Handle, 'open', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', nil, nil, SW_NORMAL);
  end;
end.
