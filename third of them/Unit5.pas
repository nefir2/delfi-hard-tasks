unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Menus;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    CLEAR1: TMenuItem;
    EXT1: TMenuItem;
    LOAD1: TMenuItem;
    SAVE1: TMenuItem;
    N1: TMenuItem;
    ENABLED1: TMenuItem;
    GRAPHICS1: TMenuItem;
    LOAD2: TMenuItem;
    N2: TMenuItem;
    CENTER1: TMenuItem;
    STRETCH1: TMenuItem;
    LINES1: TMenuItem;
    ADD1: TMenuItem;
    N3: TMenuItem;
    ALIGNMENT1: TMenuItem;
    LEFT1: TMenuItem;
    CENTER2: TMenuItem;
    right1: TMenuItem;
    procedure LOAD1Click(Sender: TObject);
    procedure SAVE1Click(Sender: TObject);
    procedure CLEAR1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CENTER1Click(Sender: TObject);
    procedure LOAD2Click(Sender: TObject);
    procedure ENABLED1Click(Sender: TObject);
    procedure ADD1Click(Sender: TObject);
    procedure put(sender: TObject);
    procedure LEFT1Click(Sender: TObject);
    procedure center2click(sender: TObject);
    procedure right1click(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ChooseAlignmentCheck(Sender: TMenuItem);
    procedure JustifyMemo1();
    procedure FormCreate(Sender: TObject);
    procedure CheckAlignmentChecked();
    procedure STRETCH1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

  procedure TForm5.ADD1Click(Sender: TObject);
  var I: TMenuItem;
  begin
    I := TMenuItem.Create(Lines1);
    I.Caption := memo1.SelText;
    I.OnClick := Put;
    Lines1.Add(I);
    N3.Visible := true;
  end;


  procedure TForm5.LEFT1Click(Sender: TObject);
  begin
    left1.Checked := not left1.Checked;
    if left1.checked then ChooseAlignmentCheck(Sender as TMenuItem)
    else CheckAlignmentChecked();
    justifymemo1();
  end;
  procedure TForm5.CENTER2Click(Sender: TObject);
  begin
    center2.Checked := not center2.Checked;
    if center2.Checked then ChooseAlignmentCheck(Sender as TMenuItem)
    else CheckAlignmentChecked();
    justifymemo1();
  end;
  procedure TForm5.right1Click(Sender: TObject);
  begin
    right1.Checked := not right1.Checked;
    if right1.Checked then ChooseAlignmentCheck(Sender as TMenuItem)
    else CheckAlignmentChecked();
    justifymemo1();
  end;
  procedure TForm5.ChooseAlignmentCheck(Sender: TMenuItem);
  begin
    if Sender.Name = 'LEFT1' then
    begin
      center2.Checked := false;
      right1.Checked := false;
    end
    else if sender.Name = 'CENTER2' then
    begin
      left1.Checked := false;
      right1.Checked := false;
    end
    else if sender.Name = 'right1' then
    begin
      left1.Checked := false;
      center2.Checked := false;
    end;
  end;
  procedure TForm5.CheckAlignmentChecked();
  begin
    if (not left1.checked) and (not center2.checked) and (not right1.checked) then left1.Checked := true;
  end;

  procedure TForm5.CENTER1Click(Sender: TObject);
  begin
    center1.Checked := not center1.Checked;
    image1.Center := center1.Checked;
  end;

  procedure TForm5.ENABLED1Click(Sender: TObject);
  begin
    enabled1.checked := not enabled1.Checked;
    memo1.Enabled := enabled1.Checked;
  end;

  procedure TForm5.FormCreate(Sender: TObject);
  begin
    left1.Checked := true;
  end;

  procedure TForm5.LOAD2Click(Sender: TObject);
  begin
    if openpicturedialog1.execute() then
    begin
      image1.picture.loadfromfile(openpicturedialog1.filename);
      center1.enabled := true;
      stretch1.Enabled := true;
    end;
  end;

  procedure TForm5.JustifyMemo1();
  begin
    if left1.Checked then memo1.Alignment := taLeftJustify
    else if center2.Checked then memo1.Alignment := taCenter
    else if right1.Checked then memo1.alignment := taRightJustify
    else memo1.Alignment := taleftjustify;
  end;

  procedure TForm5.put(sender: TObject); begin Memo1.Text := Memo1.Text + (sender as TMenuItem).Caption; end;

  procedure TForm5.CLEAR1Click(Sender: TObject); begin Memo1.Lines.Clear(); end;
  procedure TForm5.PopupMenu1Popup(Sender: TObject); begin clear1.visible := memo1.Lines.Count <> 0; end;
  procedure TForm5.Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); begin justifyMemo1(); end;
  procedure TForm5.LOAD1Click(Sender: TObject); begin if opendialog1.execute() then Memo1.Lines.LoadFromFile(OpenDialog1.FileName); end;
  procedure TForm5.SAVE1Click(Sender: TObject); begin if savedialog1.execute() then memo1.lines.SaveToFile(savedialog1.filename); end;

  procedure TForm5.STRETCH1Click(Sender: TObject);
  begin
    STRETCH1.Checked := not STRETCH1.Checked;
    image1.Stretch := STRETCH1.Checked;
  end;

end.
