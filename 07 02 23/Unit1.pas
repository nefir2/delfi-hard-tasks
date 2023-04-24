unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MemoOut: TMemo;
    Panel1: TPanel;
    ButtonNew: TButton;
    ButtonOpen: TButton;
    ButtonFont: TButton;
    ButtonExit: TButton;
    CheckBold: TCheckBox;
    FontDialog1: TFontDialog;
    OpenDialog1: TOpenDialog;
    procedure ButtonExitClick(Sender: TObject);
    procedure ButtonNewClick(Sender: TObject);
    procedure ButtonOpenClick(Sender: TObject);
    procedure ButtonFontClick(Sender: TObject);
    procedure CheckBoldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  procedure TForm1.ButtonFontClick(Sender: TObject);
  begin
    FontDialog1.Font := MemoOut.Font;
    if FontDialog1.Execute() then
    begin
      MemoOut.Font := FontDialog1.Font;
      CheckBold.Checked := fsbold in FontDialog1.Font.Style;
    end;
  end;

  procedure TForm1.ButtonNewClick(Sender: TObject); begin MemoOut.Clear(); end;
  procedure TForm1.ButtonOpenClick(Sender: TObject);
  begin
    if OpenDialog1.Execute() then MemoOut.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
  procedure TForm1.CheckBoldClick(Sender: TObject);
  begin
    if CheckBold.Checked then MemoOut.Font.Style := MemoOut.Font.Style + [fsBold]
    else MemoOut.Font.Style := MemoOut.Font.Style - [fsBold]
  end;

procedure TForm1.ButtonExitClick(Sender: TObject); begin Application.Terminate(); end;

end.
