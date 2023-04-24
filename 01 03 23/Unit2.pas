unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    OPEN1: TMenuItem;
    SAVEAS1: TMenuItem;
    BUTTONS1: TMenuItem;
    ENABLEFIRST1: TMenuItem;
    VIEWS1: TMenuItem;
    EDITBOXES1: TMenuItem;
    CHECKBOXES1: TMenuItem;
    PULLDOWNS1: TMenuItem;
    REMOVEFILEMENU1: TMenuItem;
    DISABLEBUTTONSMENU1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ENABLESECOND1: TMenuItem;
    procedure OPEN1Click(Sender: TObject);
    procedure SAVEAS1Click(Sender: TObject);
    procedure EDITBOXES1Click(Sender: TObject);
    procedure CHECKBOXES1Click(Sender: TObject);
    procedure ENABLEFIRST1Click(Sender: TObject);
    procedure ENABLESECOND1Click(Sender: TObject);
    procedure REMOVEFILEMENU1Click(Sender: TObject);
    procedure DISABLEBUTTONSMENU1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

  procedure TForm2.CHECKBOXES1Click(Sender: TObject);
  begin
    Panel2.Visible := not Panel2.Visible;
    checkboxes1.Checked := not checkboxes1.Checked;
    if panel2.Visible then Button2.Caption := 'HIDE' else Button2.Caption := 'SHOW';
  end;

  procedure TForm2.DISABLEBUTTONSMENU1Click(Sender: TObject);
  begin
    disablebuttonsmenu1.Checked := not disablebuttonsmenu1.Checked;
    if disablebuttonsmenu1.Checked then buttons1.Enabled := false else buttons1.Enabled := true;
  end;

  procedure TForm2.EDITBOXES1Click(Sender: TObject);
  begin
    Panel1.Visible := not Panel1.Visible;
    EDITBOXES1.Checked := not EDITBOXES1.Checked;
    if Panel1.Visible then Button1.Caption := 'HIDE' else Button1.Caption := 'SHOW';
  end;

  procedure TForm2.ENABLEFIRST1Click(Sender: TObject);
  begin
    if button1.Enabled then
    begin
      button1.Enabled := false;
      editboxes1.enabled := false;
      enablefirst1.Caption := 'ENABLE &FIRST';
    end
    else
    begin
      button1.Enabled := true;
      editboxes1.enabled := true;
      enablefirst1.Caption := 'DISABLE &FIRST';
    end;
  end;

  procedure TForm2.ENABLESECOND1Click(Sender: TObject);
  begin
    if button2.Enabled then
    begin
      button2.Enabled := false;
      checkboxes1.enabled := false;
      enablesecond1.Caption := 'ENABLE &SECOND';
    end
    else
    begin
      button2.Enabled := true;
      checkboxes1.enabled := true;
      enablesecond1.Caption := 'DISABLE &SECOND';
    end;
  end;

  procedure TForm2.OPEN1Click(Sender: TObject);
  begin
    if OpenDialog1.Execute() then RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;

  procedure TForm2.REMOVEFILEMENU1Click(Sender: TObject);
  begin
    removefilemenu1.Checked := not removefilemenu1.Checked;
    if removefilemenu1.Checked then file1.Enabled := false else file1.Enabled := true;
  end;

  procedure TForm2.SAVEAS1Click(Sender: TObject);
  begin
    if SaveDialog1.Execute() then RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
  end;

end.
