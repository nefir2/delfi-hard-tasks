unit MainForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    GridOut: TStringGrid;
    UpDown: TUpDown;
    Label1: TLabel;
    editRow: TEdit;
    buttonRND: TButton;
    buttonCalc: TButton;
    buttonExit: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure buttonExitClick(Sender: TObject);
    procedure UpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure buttonCalcClick(Sender: TObject);
    procedure buttonRNDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editRowKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editRowKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridOutSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

  procedure TMainForm.buttonCalcClick(Sender: TObject);
  var V, f: Integer;
  begin
    for f := 1 to GridOut.RowCount do
    begin
      if GridOut.Cells[0, f]<>'' then
      begin
        V := StrToInt(GridOut.Cells[0, f]);
        GridOut.Cells[1, f] := IntToStr(Sqr(V));
      end
      else GridOut.Cells[1, f] := '������';
    end;
  end;

  procedure TMainForm.buttonExitClick(Sender: TObject);
  begin
    Application.Terminate();
  end;

  procedure TMainForm.buttonRNDClick(Sender: TObject);
  var f: Integer;
  begin
    for f := 1 to GridOut.RowCount do GridOut.Cells[0, f] := IntToStr(Random(21) - 10);
    ButtonCalcClick(Sender);
  end;

  procedure TMainForm.editRowKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = 13 then UpDownClick(Sender, btNext);
  end;

  procedure TMainForm.editRowKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if EditRow.Text = '' then
    begin
      EditRow.Text := '1';
      EditRow.SelStart := 0;
      EditRow.SelLength := 1;
    end;
  end;

  procedure TMainForm.FormCreate(Sender: TObject);
  begin
    GridOut.Cells[0, 0] := 'x';
    GridOut.Cells[1, 0] := 'y(x) = x^2';
    Randomize;
    UpDown.Position := 3;
    UpDownClick(Sender, btNext);
  end;

  procedure TMainForm.GridOutSetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
  begin
    ButtonCalcClick(Sender);
  end;

  procedure TMainForm.UpDownClick(Sender: TObject; Button: TUDBtnType);
  begin
    GridOut.RowCount := UpDown.Position + 1;
  end;

end.
