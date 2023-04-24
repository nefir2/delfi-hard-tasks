unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

  procedure TMainForm.Button1Click(Sender: TObject); begin Unit1.Form1.Show(); end;
  procedure TMainForm.Button2Click(Sender: TObject); begin Unit2.Form2.Show(); end;
  procedure TMainForm.Button3Click(Sender: TObject); begin Unit3.Form3.Show(); end;
  procedure TMainForm.Button4Click(Sender: TObject); begin Unit4.Form4.Show(); end;
  procedure TMainForm.Button5Click(Sender: TObject); begin Unit5.Form5.Show(); end;
  procedure TMainForm.Button6Click(Sender: TObject); begin Unit6.Form6.Show(); end;

end.
